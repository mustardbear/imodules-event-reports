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
    if row[key_column] && row[key_column].strip.downcase.eql?("true")
      columns = Array.new
      activity[:columns].each { |column| columns.push(row[column]) }
      registrant.add_activity(activity[:name], columns)
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
    primary.add_guest(registrant)
    registrant.class_year = primary.class_year
  end
  
end

# For each activity we can now generate a report that is actually useful!
logger.info("Creating Activity Reports")

ACTIVITIES.each do |activity|
  logger.debug("Creating #{activity[:name]} report")
  filename = "#{DIRECTORY}#{activity[:name]}.csv"
  headers = []
  
  # Create header columns for the report based on the people definition and the activity
  PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
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

