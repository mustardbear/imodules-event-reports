require 'csv'
require 'colorize'
require 'optparse'
require 'ostruct'
require 'logger'
require './config'
require './person_factory'
require './arguments'
require './merge'


HOTEL_COLUMNS = [
  "RW22 - Hotel Room",
  "Fee Name (RW22 - Hotel Room)"
]

HOTEL_KEY_COLUMN = HOTEL_COLUMNS[0]


def column_has_data?(column)
  !column.nil? && column != "0"
end

def has_hotel_data?(row)
  column_has_data?(row["RW22 - Hotel Room"] || row["Fee Name (RW22 - Hotel Room)"])
end


def total_column_values(stack)
  column_total = 0
  stack.each do |person|
    activity = person.activities.select { |row| row[:name].eql?("Hotel Room")}.first
    columns = activity[:columns]          
    column_total = column_total + columns[0].to_f
  end
  return column_total
end

def set_hotel(stack)
  
  # We need to go through each row in the stack and select the one to use that has the highest number for HOTEL_COLUMNS[0]
  prev_hotel_amount = -5
  prev_hotel_name = ""
  hotel_row = nil

  puts("stack = #{stack}")
  stack.reverse.each do |person|
    hotel = person.activities.select { |row| row[:name].eql?("Hotel Room")}.first
    hotel_amount = hotel[:columns][0].to_i
    hotel_name = hotel[:columns][1]
    if (hotel_amount > prev_hotel_amount) || (hotel_amount == prev_hotel_amount) && (!hotel_name.eql?(prev_hotel_name))
      hotel_row = person
      prev_hotel_amount = hotel_amount
      prev_hotel_name = hotel_name      
    end
    puts("hotel_amount = #{hotel_amount}")
    puts("hotel_name = #{hotel_name}")
    puts("hotel_row = #{hotel_row.activities}")
    puts("prev_hotel_amount = #{prev_hotel_amount}")      
    puts("prev_hotel_name = #{prev_hotel_name}")          
      
  end

  return hotel_row
end

# Create a logger for sending messages to the console
logger = configure_logging(Logger.new(STDOUT))


configuration_file = "#{CONFIG_DIRECTORY}reunion22.rb"

# Load the config file
logger.info("Creating reports using configuration file #{configuration_file}")
load configuration_file

# An array to hold all of the registrants and a counter for the number of people
registrants = Array.new
people_count = 0

# Read in the registration report and go through each row creating people as we go
rows = CSV.read(SOURCE, headers: true, encoding: "iso-8859-1:UTF-8")

# Dynamically create a Person class based on the configuration
logger.debug("Creating people objects for each row in the report (#{rows.count})")
Person = PersonFactory::PersonStruct(*(PERSON_DEFINITION.keys))

rows.each do |row|

  people_count += 1
  person_values = PERSON_DEFINITION.each_pair.collect { |key,definition| [key, row[definition[:column_name]]] }.to_h
  registrant = Person.new(person_values)

  # Need to determine if this person has registered for a hotel room, only add them if they are
  if has_hotel_data?(row)
    columns = [row["RW22 - Hotel Room"], row["Fee Name (RW22 - Hotel Room)"]]
    registrant.add_activity("Hotel Room", columns, true)
    registrants.push(registrant)
    logger.info("Registrant: #{registrant.last_name} (#{registrant.alternate_id})and #{columns}")
  end
  
end
logger.info("We have #{registrants.count} registrants")
logger.info("----------------")
# We now need to deal with mergers
stack = []
updated_registrants = []
registrants.each do |registrant|
  logger.info("registrant = #{registrant.alternate_id}")
  if stack.count == 0
    # No one is currently on the stack, add this person
    logger.info("     no one on the stack so adding #{registrant.alternate_id}")
    stack.push(registrant)
  else
    # we have someone on the stack, we need to see if this is the same person or a different one
    logger.info("     the stack has people in it so comparing with the stack (#{stack[0].alternate_id} == #{registrant.alternate_id})")
    if stack[0].alternate_id.eql?(registrant.alternate_id)
      # This registrant is the same as those on the stack, so we can push this row onto the stack too
      logger.info("          this is the same person so adding #{registrant.alternate_id} to the stack")
      stack.push(registrant)

    else
      # This registrant is different than those on the stack
      logger.info("          this is a different person (#{registrant.alternate_id}) than whoever (#{stack[0].alternate_id}) is on the stack")
      
      if stack.count == 1
        # There is only one person on the stack so we can put them in the array to write to the file, clear the stack, and add the new person
        logger.info("               this is the only person on the stack so we can add them to the updated registrants")
        updated_registrants.push(stack[0])
        stack.clear
        stack.push(registrant)
      else        
        # There are multiple rows on the stack so we need to merge things
        logger.info("               we have multiples on the stack so need to merge things")
        
        # First we need to sum up the key columns to see if this person is still registered
        # Stack looks like [{alternate_id: 0000, HOTEL_KEY_COLUMN: 1, HOTEL_ROOM_TYPE_COLUMN: "marriott"}, {alternate_id: 0000, HOTEL_KEY_COLUMN: -1, HOTEL_ROOM_TYPE_COLUMN: "marriott"}]
        column_total = total_column_values(stack)
        logger.info("                    column_total = #{column_total}")
        # If the column total is less than one, this person is no longer registered for a hotel so we can skip the update and just clear the stack push the next person
        if column_total < 1
          logger.info("                        clearing the stack and adding #{registrant.alternate_id}")
          stack.clear
          stack.push(registrant)
        else                    
          # If the column total is more than one, we pick the right hotel, add them as registrant, and then clear and reset the stack
          entry_to_report = set_hotel(stack)
          logger.info("                        picking the correct hotel and then adding them as registered, clearin the stack and resting with entry_to_report activities = #{entry_to_report.activities}")


          updated_registrants.push(entry_to_report)
          stack.clear        
          stack.push(registrant)
        end
      end   
    end
  end
end

#Can't orphan anyone!
if stack.count == 1
  updated_registrants.push(stack[0])
elsif stack.count > 1
  column_total = total_column_values(stack)
  if column_total < 1
    stack.clear
  else
    set_hotel(stack)
    updated_registrants.push(stack[0])
    stack.clear
  end
end

logger.info("Creating Hotel Room Report")
filename = "#{DIRECTORY}Hotel Room.csv"
headers = []

# Create header columns for the report based on the people definition and the activity
PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
headers.concat(["Hotel Name"])

CSV.open(filename, 'w') do |csv|

  # Add the headers to the report
  csv << headers

  updated_registrants.each do |registrant|

    logger.debug("Registrant: #{registrant}")
    row = []
    # Add values for each column defined in person to the new row
    PERSON_DEFINITION.each_key { |key| row << registrant.instance_variable_get("@#{key}") }
    
    # Get the hotel name for the registrant
    activity = registrant.activities.select { |row| row[:name].eql?("Hotel Room")}.first
    columns = activity[:columns]
    hotel = columns[1]
    row.concat([hotel])
    csv << row
  end
end