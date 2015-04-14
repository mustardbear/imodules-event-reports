require 'csv'
require 'colorize'
require './person'

CONFIG_DIRECTORY = "./config/"

# Load the configuration file
load "#{CONFIG_DIRECTORY}reunion15.rb"
  
# An array to hold all of the registrants
registrants = Array.new
people_count = 0


# Read in the entire registration report and go through each row creating people as we go
rows = CSV.read(MERGED, headers: true, encoding: "iso-8859-1:UTF-8")
rows.each do |row|

  people_count = people_count + 1

  registrant = Person.new(
    row["First_Name"], 
    row["Last_Name"],
    row["alternate_id"],
    row["maiden_name"],
    row["pref_first_name"],
    row["email_address"],
    row["Reunion 2015 - RW15 Class Year"],
    row["Guest of"]
  )

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
  headers = ["Alternate ID", "First Name", "Last Name", "Preferred First Name", "Former Name", "Email", "Class Year", "Guest Of"]
  activity[:columns].each do |column|
    headers.push(column)
  end
  
  CSV.open(filename, 'w') do |csv|
    csv << headers
    
    registrants.each do |registrant|
      if registrant_activity = registrant.attending?(activity[:name])
        row = [
          registrant.alternate_id,
          registrant.first_name,
          registrant.last_name,
          registrant.preferred_name,
          registrant.former_name,
          registrant.email,
          registrant.class_year,
          registrant.guest_of          
        ]
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









  
  
