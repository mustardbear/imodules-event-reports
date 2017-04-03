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


configuration_file = "#{CONFIG_DIRECTORY}reunion17.rb"

# Load the config file
logger.info("Creating reports using configuration file #{configuration_file}")
load configuration_file

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
    if row[key_column] && (row[key_column].strip.downcase.eql?("true") || row[key_column].to_i > 0)
      columns = Array.new
      activity[:columns].each { |column| columns.push(row[column]) }
      registrant.add_activity(activity[:name], columns, activity[:free])
    end
  end
  
  # Add the person to the list of registrants
  registrants.push(registrant)
end

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

def foxfield_registered(person)
  person.attending?("Foxfield Spring Races")
end

def transportation_type(person)
  if person.attending?("Foxfield Spring Races")
    foxfield_activity = person.activities.select { |row| row[:name].eql?("Foxfield Spring Races") }.first
    puts("foxfield_activity = #{foxfield_activity}")
    paid = foxfield_activity[:columns][6]
    fee_type = foxfield_activity[:columns][5]
    puts("paid = #{paid}")
    puts("fee_type = #{fee_type}")
    return :own if fee_type.nil?
    if fee_type.start_with?("Parking Pass")
      return :parking
    elsif fee_type.start_with?("Bus")
      return :bus
    else
      return :own
    end
    
    # if paid.to_i == 35
    #   return :bus
    # elsif paid.to_i == 35
    #   return :parking
    # else
    #   return :own
    # end
  end
end

logger.info("Creating Foxfield Transportation Report")
filename = "#{DIRECTORY}Foxfield Transportation.csv"
headers = []

# Create header columns for the report based on the people definition and the activity
PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
headers.concat(["Total Foxfield Tickets", "Total Bus Tickets", "Total Parking Passes", "Total Own Trasportation"])

CSV.open(filename, 'w') do |csv|
  
  # Add the headers to the report
  csv << headers
  
  # Check each registrant - if the are registered for this activity put them in the report
  registrants.each do |registrant|
    
    if registrant_activity = registrant.attending?("Foxfield Spring Races") && !registrant.is_guest?
      row = []
      foxfield_tickets = 0
      bus_tickets = 0
      parking_passes = 0
      own_transport = 0
      # Add values for each column defined in person to the new row
      PERSON_DEFINITION.each_key { |key| row << registrant.instance_variable_get("@#{key}") }
      
      foxfield_tickets += 1 if foxfield_registered(registrant)
      registrant.guests.each { |guest| foxfield_tickets += 1 if foxfield_registered(guest) }
      
      bus_tickets +=1 if transportation_type(registrant) == :bus
      registrant.guests.each { |guest| bus_tickets += 1 if transportation_type(guest) == :bus }

      parking_passes +=1 if transportation_type(registrant) == :parking
      registrant.guests.each { |guest| parking_passes += 1 if transportation_type(guest) == :parking }

      own_transport +=1 if transportation_type(registrant) == :own
      registrant.guests.each { |guest| own_transport += 1 if transportation_type(guest) == :own }

      row.concat([foxfield_tickets, bus_tickets, parking_passes, own_transport])
      csv << row
    end

  end
  
end