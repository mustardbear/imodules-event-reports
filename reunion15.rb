require 'csv'
require 'colorize'
require './person'

CONFIG_DIRECTORY = "./config/"

# Load the configuration file
load "#{CONFIG_DIRECTORY}reunion15.rb"
  
# An array to hold all of the registrants
registrants = Array.new
people_count = 0

# They say if you need comments they your code isn't very self-documenting.
# Maybe they are right. But this is pretty complex so I'm going to comment
# the heck out of this.
# PersonStruct is a class factory - it creates a Person class based on the
#   structure definied in the configuration file. The parameter is an array
#   of attribute names. 
def PersonStruct(*keys)
  Class.new do
    # create an attribute reader for each attribute
    attr_reader *keys
    attr_reader :guest_of, :guests, :activities, :search_name
    
    # define the intialize method - most of the time we are just setting attributes
    # to the value from the spreadsheet but it is possible to pass a custom proc
    # to clean up values
    def initialize(hash)
      hash.each do |key,value|
        # if this attribute has a custom setter, use that otherwise set to the value
        if PERSON_DEFINITION[key][:setter]
          instance_variable_set("@#{key}", PERSON_DEFINITION[key][:setter].call(value))
        else
          instance_variable_set("@#{key}", value)
        end
      end
      @guests = Array.new
      @activities = Array.new
      @search_name = "#{@last_name}, #{@first_name}"
    end
    
    # For any columns with a custom setter, create a custom setter
    PERSON_DEFINITION.keys.each do |key|
      if PERSON_DEFINITION[key][:setter]
        define_method("#{key}=") { |value| instance_variable_set("@#{key}", PERSON_DEFINITION[key][:setter].call(value)) }
      end
    end
    
    def add_guest(person)
      @guests.push(person)
    end
    
    def is_guest?
      return @guest_of
    end

    def add_activity(activity, columns)
      @activities.push({name: activity, columns: columns})
    end
  
    def attending?(activity_name)
      activity = @activities.select { |row| row[:name].eql?(activity_name) }
      activity.length > 0 ? activity : false
    end
    
    def to_s
      out = ""
      PERSON_DEFINITION.keys.each do |key|
        instance_variable_name = "@#{key}"
          out << "#{key}: |#{instance_variable_get(instance_variable_name)}| "
      end
      out << "search_name: |#{@search_name}|"
      out
    end 
  end
end

# Read in the entire registration report and go through each row creating people as we go
rows = CSV.read(MERGED, headers: true, encoding: "iso-8859-1:UTF-8")

# Dynamically create a Person class based on the configuration
Person = PersonStruct(*(PERSON_DEFINITION.keys))

rows.each do |row|

  people_count = people_count + 1
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
ACTIVITIES.each do |activity|
  filename = "#{DIRECTORY}#{activity[:name]}.csv"
  headers = []
  PERSON_DEFINITION.each_value { |value| headers << value[:output_column_name] }
  activity[:columns].each do |column|
    headers.push(column)
  end
  
  CSV.open(filename, 'w') do |csv|
    csv << headers
    
    registrants.each do |registrant|
      if registrant_activity = registrant.attending?(activity[:name])
        row = []
        PERSON_DEFINITION.each_key do |key|
          row << registrant.instance_variable_get("@#{key}")
        end
        
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


# Now let's try this Dashboard Thing
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









  
  
