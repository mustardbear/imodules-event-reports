# Process reunion event reports to make them somewhat useful

require 'csv'
require 'colorize'
require 'optparse'
require 'ostruct'
require 'logger'

CONFIG_DIRECTORY = "./config/"
load "config.rb"

logger = Logger.new(STDOUT)
logger.level = LOG_LEVEL
logger.datetime_format = '%Y-%m-%d %H:%M:%S'
logger.formatter = proc do |severity, datetime, progname, msg|
  color = case severity
    when "DEBUG" then :light_white
    when "INFO" then :light_yellow
    when "WARN" then :light_red
    when "ERROR" then :blue
    when "FATAL" then :magenta
    when "UNKNOWN" then :cyan
  end
  "#{datetime}: #{msg.colorize(color)}\n"
end

# For parsing command line arguments
class Arguments
  def self.parse(args)
    options = OpenStruct.new
    options.event = ""
  
    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: ruby process.rb [options] (i.e. ruby process.rb -e r15)"
      opts.separator ""
      opts.separator "Specific options:"
  
      opts.on("-e", "--event EVENT",
        "Require the EVENT before processing the report") do |event|
        options.event << event
      end
    end
    
    opt_parser.parse!(args)
    options
  
  end
end

# Parse out the arguments to see what event we're working on
options = Arguments.parse(ARGV)

logger.info { "Beginning Merge Process"}

# Load the config file
configuration_file = "#{CONFIG_DIRECTORY}#{EVENTS[options.event.to_sym]}"
logger.debug { "loading event configuration from file #{configuration_file}" }
load configuration_file

# Merge rows when a guest has multiple. All text columns default to the first/newest row, quantity columns are summed
def merge_stack(stack)
  csv_table = CSV::Table.new(stack)
  
  fields = []
  csv_table.headers.each do |header|
    if SUMMABLE.include?(header)
      column = csv_table[header].collect { |x| x.nil? ? 0 : x.to_f} # Have to ensure nil is replaced with zero for adding
      fields << column.inject(0, :+)
    else
      fields << csv_table[header][0]
    end
  end
  merged_row = CSV::Row.new(csv_table.headers, fields)
end

# Read in the entire registration report
logger.debug { "loading #{SOURCE} as a .csv file" }
rows = CSV.read(SOURCE, headers: true, encoding: "iso-8859-1:UTF-8")
logger.debug { "Number of rows = #{rows.length}"}

output_row_count = 0

# Merge rows that need merging and create a new .csv file
logger.debug { "creating merged version in #{MERGED}" }
CSV.open(MERGED, 'w') do |csv|
  
  # Write headers to the top of the new file
  csv << rows.headers
  
  # Initialize a new stack we'll use to gather rows for the same person
  stack = []
  
  # Go through each row from the original file
  rows.each do |row|
    
    # If there's no one in the stack, add this person
    if stack.count == 0
      stack.push(row)
    else
      # We merge records based on the imodules_id - every row should have one and every person should have just one
      if stack[0]['imodules_id'] != row['imodules_id'] || (stack[0]['imodules_id'].nil? || stack[0]['imodules_id'].strip.empty?)
        # This Guest is not the same as those on the stack
        if stack.count > 1
        
          # DO THE MERGE STUFF HERE THEN ADD MERGED ROW TO csv
          stack[0] = merge_stack(stack)
        end
        
        # Replace any column with a zero with a blank
        new_row = CSV::Row.new(rows.headers, stack[0].collect { |x| x[1] == 0 ? '' : x[1]})
        
        # Put the row in the file
        csv << new_row
        output_row_count = output_row_count + 1

        # CLEAR THE STACK
        stack.clear
        
        # START A NEW STACK
        stack.push(row)
      else
        # PUSH THE GUEST ONTO THE STACK
        stack.push(row)
      end
    end
  end
end

logger.debug { "Number of rows in the output file: #{output_row_count}"}
logger.debug { "Number of rows merged: #{rows.length - output_row_count}"}