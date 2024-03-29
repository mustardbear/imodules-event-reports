require 'csv'
require 'colorize'
require 'optparse'
require 'ostruct'
require 'logger'
require './config'
require './person_factory'
require './arguments'
require './merge'

# Create a logger for sending messages to the console
logger = configure_logging(Logger.new(STDOUT))

# Parse out the arguments to see what event we're working on (from the list in config.rb)
options = Arguments.parse(ARGV)

configuration_file = "#{CONFIG_DIRECTORY}#{EVENTS[options.event.to_sym]}"

# Load the config file
logger.info("Creating reports using configuration file #{configuration_file}")
load configuration_file

logger.info("Creating merged report")
Merge.create_merged_report(logger)

# An array to hold all of the registrants and a counter for the number of people
registrants = Array.new
people_count = 0

# Read in the merged registration report and go through each row creating people as we go
rows = CSV.read(MERGED, headers: true, encoding: "iso-8859-1:UTF-8")

# Put the column names to stdout in debug mode so you can copy and paste columns that have special characters
debug_rows = ""
rows.headers.each { |header| debug_rows = debug_rows + "#{header}\n" }
logger.debug {"The headers:\n#{debug_rows}"}

# Dynamically create a Person class based on the configuration
logger.debug("Creating people objects for each row in the merged report")
Person = PersonFactory::PersonStruct(*(PERSON_DEFINITION.keys))

rows.each do |row|

  people_count += 1
  person_values = PERSON_DEFINITION.each_pair.collect { |key,definition| [key, row[definition[:column_name]]] }.to_h
  registrant = Person.new(person_values)

  # We need to add each of the activities the person is registered for and all of the appropriate data
  ACTIVITIES.each do |activity|    
    key_column = activity[:columns].last
    if row[key_column] && (row[key_column].strip.downcase.eql?("true") || row[key_column].strip.downcase.eql?("1"))
      columns = Array.new
      activity[:columns].each { |column| columns.push(row[column]) }
      registrant.add_activity(activity[:name], columns, activity[:free])
    end
  end
  
  # Add the person to the list of registrants
  registrants.push(registrant)
end

logger.debug("Created #{people_count} people records")
  
# Now that we have an array of all the registrants we can make sure we have the right data for guests and class year
registrants.each do |registrant|
  
  # If this person is a guest, we need to find the row of the person they are a guest of
  if registrant.guest_of
    primary_list = registrants.select do |row|
      row.search_name.eql?(registrant.guest_of)
    end
    primary = primary_list.first
    if primary
      primary.add_guest(registrant)
      registrant.class_year = primary.class_year
    else
      logger.warn("Registrant is a guest of someone not registered.\n\t#{registrant}")
    end
  end
  
end

# For each activity we can now generate a report that is actually useful!
logger.info("Creating Activity Reports")

ACTIVITIES.each do |activity|
  logger.info("\tCreating #{activity[:name]} report")
  filename = "#{DIRECTORY}#{activity[:name]}.csv"
  headers = []
  
  # Create header columns for the report based on the people definition and the activity
  PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
  headers.push("Number of Guests")
  activity[:columns].each do |column|
    headers.push(column)
  end
  
  CSV.open(filename, 'w') do |csv|
    
    # Add the headers to the report
    csv << headers
    
    # Check each registrant - if the are registered for this activity put them in the report
    registrants.each do |registrant|
      
      # The Person.attending? method actually returns the activity so this is
      # an assignment and a boolean expression - fun!
      if registrant_activity = registrant.attending?(activity[:name])
        row = []
        # Add values for each column defined in person to the new row
        PERSON_DEFINITION.each_key do |key|
          row << registrant.instance_variable_get("@#{key}")
        end
        
        # Add a value for the total number of guests this person has
        row << registrant.guests.length
        
        # now add columns for each one defined in the activity
        registrant_activity.first[:columns].each { |column| row.push(column) }
        csv << row
      end
    end
  end

end

# Let's get a list of the unique class years of everyone registered
unique_class_years = []
registrants.each do |row|
  if !(unique_class_years.include?(row.class_year))
    unique_class_years << row.class_year
  end
end
unique_class_years.sort! { |x,y| y <=> x }.reverse!

# Create the No Activities Report
logger.info("Creating No Activities Report")

filename = "#{DIRECTORY}no-activities.csv"

# Create header columns for the report based on the people definition
headers = []
PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }

CSV.open(filename, 'w') do |csv|
  csv << headers

  registrants.each do |registrant|
    if registrant.activities.length == 0 && !registrant.is_guest?
      # Add values for each column defined in person to the new row
      row = []
      PERSON_DEFINITION.each_key do |key|
        row << registrant.instance_variable_get("@#{key}")
      end
      csv << row
    end
  end

end

def is_freeloader(registrant)
  is_freeloader = registrant.activities.count > 0 ? true : false
  registrant.activities.each do |activity|
    if !activity[:is_free]
      is_freeloader = false
      break
    end
  end
  return is_freeloader
end

# Create the Freeloader Report
logger.info("Creating the Freeloader Report")
filename = "#{DIRECTORY}freeloader.csv"

# Create header columns for the report based on the people definition
headers = []
PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }

CSV.open(filename, 'w') do |csv|
  csv << headers

  registrants.each do |registrant|
    if is_freeloader(registrant)
      # Add values for each column defined in person to the new row
      row = []
      PERSON_DEFINITION.each_key do |key|
        row << registrant.instance_variable_get("@#{key}")
      end
      csv << row      
    end
  end

end

# Create the Conflict Reports
logger.info("Creating the Conflict Reports")

#Loop through each of the conflicting periods defined in the configuration, create a file for each
CONFLICTS.each do |conflict_period|
  filename = "#{DIRECTORY}conflicts-#{conflict_period[:conflict_name]}.csv"
  
  # Create header columns for the report based on the people definition
  headers = []
  PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
  # Add a column for the list of activities that conflict for that person
  headers.push("Conflicting Activities")
  
  CSV.open(filename, 'w') do |csv|
    csv << headers
    registrants.each do |registrant|
      
      # Create an array of the registrants activities names so we can compare it with the conflictable activities
      registered_activities = []
      registrant.activities.each do |activity|
        registered_activities << activity[:name]
      end      
      conflicts = registered_activities & conflict_period[:activities]
      if conflicts.length > 1
        row = []
        PERSON_DEFINITION.each_key do |key|
          row << registrant.instance_variable_get("@#{key}")
        end
        row << conflicts
        csv << row        
      end
    end
  end
end

# Create Activity Registration Report
logger.info("Creating the Activity Registration Report")

# Create header columns, starting with the people definition, then appending activity names
filename = "#{DIRECTORY}Activity Registration Report.csv"
headers = []
PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
ACTIVITIES.each { |activity| headers << activity[:name]}

CSV.open(filename, 'w') do |csv|
  csv << headers
  
  # For each registrant add the person information and then true or false for each activity
  registrants.each do |registrant|
    row = []
    PERSON_DEFINITION.each_key { |key| row << registrant.instance_variable_get("@#{key}") }
    ACTIVITIES.each { |activity| row << (registrant.attending?(activity[:name]) ? "TRUE" : "FALSE") }
    csv << row
  end
end


# Create the dashboard report
logger.info("Creating Dashboard")

filename = "#{DIRECTORY}dashboard.csv"
headers = ["Activity Name", "Total Number Registered", "Number of Primary Registrants", "Number of Guest Registrants"].concat(unique_class_years)
CSV.open(filename, 'w') do |csv|
  csv << headers

  ACTIVITIES.each do |activity|
    class_years = {}
    unique_class_years.each do |year|
      class_years[year] = 0
    end
    name = activity[:name]
    total = 0
    primary = 0
    guests = 0
    
    registrants.each do |registrant|    
      if registrant_activity = registrant.attending?(activity[:name])
        total = total + 1
        registrant.is_guest? ? guests = guests + 1 : primary = primary + 1
        if unique_class_years.include?(registrant.class_year)
          class_years[registrant.class_year] = class_years[registrant.class_year] + 1
        end
      end
    end
    
    data = [name, total, primary, guests]
    class_years.each { |class_year| data << class_year[1] }
    csv << data    
  end
end

