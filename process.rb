# Process reunion event reports to make them somewhat useful

require 'csv'
require 'colorize'
require 'optparse'
require 'ostruct'

CONFIG_DIRECTORY = "./config/"
load "config.rb"

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

options = Arguments.parse(ARGV)
load "#{CONFIG_DIRECTORY}#{EVENTS[options.event.to_sym]}"

# For each column listed in SUMMABLE, total them up and return in a CSV::Row
def sum_columns(guests)
  sum_fields = []
  guests.headers.each do |header|
    if SUMMABLE.include?(header)
      column = guests[header].collect { |x| x.nil? ? 0 : x.to_f}
      sum_fields << column.inject(0, :+)
    else
      sum_fields << ''
    end
  end
  summary_row = CSV::Row.new(guests.headers, sum_fields)
end

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
guests = CSV.read(SOURCE, headers: true, encoding: "iso-8859-1:UTF-8")

# Sum up first
summary_row = sum_columns(guests)

# Merge rows that need merging and create a new .csv file
CSV.open(MERGED, 'w') do |csv|
  csv << guests.headers
  stack = []
  guests.each do |guest|
    if stack.count == 0
      stack.push(guest)
    else
      # We can only merge records programmatically when the user has an alternate_id, otherwise, we might lose data
      if stack[0]['alternate_id'] != guest['alternate_id'] || (stack[0]['alternate_id'].nil? || stack[0]['alternate_id'].strip.empty?)
        # This Guest is not the same as those on the stack
        if stack.count > 1
        
          # DO THE MERGE STUFF HERE THEN ADD MERGED ROW TO csv
          stack[0] = merge_stack(stack)
        end
        
        # Replace any column with a zero with a blank
        row = CSV::Row.new(guests.headers, stack[0].collect { |x| x[1] == 0 ? '' : x[1]})
        
        # Put the row in the file
        csv << row

        # CLEAR THE STACK
        stack.clear
        
        # START A NEW STACK
        stack.push(guest)
      else
        # PUSH THE GUEST ONTO THE STACK
        stack.push(guest)
      end
    end
  end
end