# For reunion 2016
DIRECTORY = 'data/reunion17/'
SOURCE = "#{DIRECTORY}reunion_registrations.csv"
MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"

# Summable for Reuion 2015
SUMMABLE = [
  "Child Care - RW17 - Friday Childcare",
  "Child Care - RW17 - Friday Childcare - total_price_paid",
  "Child Care - RW17 Saturday Childcare",
  "Child Care - RW17 Saturday Childcare - total_price_paid",
  "Grab-and-Go Lunch with Student Clubs - RW17 - Friday Faculty Seminars and Lunch",
  "Grab-and-Go Lunch with Student Clubs - RW17 - Friday Faculty Seminars and Lunch - total_price_paid",
  "Welcome Cocktail Reception and Venture Fair - RW17 - Friday Cocktail Reception",
  "Welcome Cocktail Reception and Venture Fair - RW17 - Friday Cocktail Reception - total_price_paid",
  "1962 Friday Night Class Event - RW17 - Friday 1962 Event Fee",
  "1962 Friday Night Class Event - RW17 - Friday 1962 Event Fee - total_price_paid",
  "1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Fee",
  "1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Fee - total_pr",
  "1967 Friday Night Class Event - RW17 - Friday 1967 Event Fee",
  "1967 Friday Night Class Event - RW17 - Friday 1967 Event Fee - total_price_paid",
  "1972 Friday Night Class Event - RW17 - Friday 1972 Event Fee",
  "1972 Friday Night Class Event - RW17 - Friday 1972 Event Fee - total_price_paid",
  "1977 Friday Night Class Event - RW17 - Friday 1977 Event Fee",
  "1977 Friday Night Class Event - RW17 - Friday 1977 Event Fee - total_price_paid",
  "1992 Friday Night Class Event - RW17 - Friday 1992 Event Fee",
  "1992 Friday Night Class Event - RW17 - Friday 1992 Event Fee - total_price_paid",
  "1997 Friday Night Class Event - RW17 - Friday 1997 Event Fee",
  "1997 Friday Night Class Event - RW17 - Friday 1997 Event Fee - total_price_paid",
  "2002 Friday Night Class Event - RW17 - Friday 2002 Event Fee",
  "2002 Friday Night Class Event - RW17 - Friday 2002 Event Fee - total_price_paid",
  "2007 Friday Night Class Event - RW17 - Friday 2007 Event Fee",
  "2007 Friday Night Class Event - RW17 - Friday 2007 Event Fee - total_price_paid",
  "2012 Friday Night Class Event - RW17 - Friday 2012 Event Fee",
  "2012 Friday Night Class Event - RW17 - Friday 2012 Event Fee - total_price_paid",
  "2012 EMBA Friday Night Class Event - RW17 - Friday 2012 EMBA Event Fee",
  "2012 EMBA Friday Night Class Event - RW17 - Friday 2012 EMBA Event Fee - total_price_paid",
  "2016 Friday Night Class Event - RW17 - Friday 2016 Event Fee",
  "2016 Friday Night Class Event - RW17 - Friday 2016 Event Fee - total_price_paid",
  "2016 EMBA Friday Night Class Event - RW17 - Friday 2016 EMBA Event Fee",
  "2016 EMBA Friday Night Class Event - RW17 - Friday 2016 EMBA Event Fee - total_price_paid",
  "2016 GEMBA Friday Night Class Event - RW17 - Friday 2016 GEMBA Event Fee",
  "2016 GEMBA Friday Night Class Event - RW17 - Friday 2016 GEMBA Event Fee - total_price_paid",
  "Darden Breakfast and Coffee - RW17 - Saturday Breakfast at Darden Fee",
  "Darden Breakfast and Coffee - RW17 - Saturday Breakfast at Darden Fee - total_price_paid",
  "Option 1 Darden Barbecue and Field Day - RW17 - Saturday Darden Barbecue and Field Day Fee",
  "Option 1 Darden Barbecue and Field Day - RW17 - Saturday Darden Barbecue and Field Day Fee ",
  "Add On for Option 1 Monticello Tour - RW17 - Saturday Monitcello Tour Fee",
  "Add On for Option 1 Monticello Tour - RW17 - Saturday Monitcello Tour Fee - total_price_paid",
  "Add On for Option 1 Afternoon at the Vineyard - RW17 - Saturday Afternoon at the Vineyard Fee",
  "Add On for Option 1 Afternoon at the Vineyard - RW17 - Saturday Afternoon at the Vineyard Fee - tota",
  "Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 - Saturday Bike Tour Fee",
  "Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 - Saturday Bike Tour Fee - total_",
  "Option 5 Foxfield Spring Races - RW17 - Saturday Foxfield Fee",
  "Option 5 Foxfield Spring Races - RW17 - Saturday Foxfield Fee - total_price_paid",
  "Option 5 Foxfield Spring Races - RW17 - Foxfield Transportation",
  "Option 5 Foxfield Spring Races - RW17 - Foxfield Transportation - total_price_paid",
  "Class Dinners and Saturday Night Soire - RW17 - Saturday Soiree",
  "Class Dinners and Saturday Night Soire - RW17 - Saturday Soiree - total_price_paid",
  "1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Fee",
  "1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Fee - total_price_paid",
  "1987 Saturday Night at Afton Mountain Vineyard - RW17 - 1987 Saturday Afton Mountain",
  "1987 Saturday Night at Afton Mountain Vineyard - RW17 - 1987 Saturday Afton Mountain - total_price_p",
  "Farewell Brunch - RW17 - Sunday Farewell Brunch",
  "Farewell Brunch - RW17 - Sunday Farewell Brunch - total_price_paid",
  "Class of 1987 Farewell Brunch  - RW17 - Sunday Class of 1987 Farewell Brunch Fee",
  "Class of 1987 Farewell Brunch  - RW17 - Sunday Class of 1987 Farewell Brunch Fee - total_price_paid",
  "Donation Amount"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First_Name", output_column_name: "First Name" },
  last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
  pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
  maiden_name: { column_name: "maiden_name", output_column_name: "Former Name" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "Reunion 2017 - RW17 Class Year",  setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? || value.eql?("0") ? "No Class Year" : value) }, output_column_name: "Class Year" },
  child_age: { column_name: "Reunion 2017 - RW17 Child Age", output_column_name: "Child Age"},
  guest_of: { column_name: "Registered By", output_column_name: "Guest Of" },
  hickory_club: { column_name: "Hickory_Club_Member", output_column_name: "Hickory Club Member"},
  darden_society: { column_name: "Darden_Society_Member", output_column_name: "Darden Society Member"}
}

ACTIVITIES = [

  { name: "Reunion 2017",
    columns: ["Registrant - 20924 - Is Registered"],
    free: true
  },

  { name: " Child Care",
    columns: ["Child Care - Is attending", 
              "Child Care - RW17 - Friday Childcare", 
              "Child Care - RW17 - Friday Childcare - total_price_paid",
              "Child Care - RW17 Saturday Childcare",
              "Child Care - RW17 Saturday Childcare - total_price_paid",
              "Child Care - RW17 - Child Birthdate",
              "Child Care - RW17 - Childcare Form Sent",
              "Child Care - RW17 - Childcare Form Received",
              "Child Care - 21015 - Is Registered"],
    free: false
  },

  { name: "Alumni Career Services Office Hours",
    columns: ["Alumni Career Services Office Hours - Is attending",
              "Alumni Career Services Office Hours - 21218 - Is Registered"],
    free: true
  },
        
  { name: "Entrepreneurship After Darden",
    columns: ["Entrepreneurship After Darden - Is attending",
              "Entrepreneurship After Darden - 21018 - Is Registered"],
    free: true
  },

  { name: "Inside Look at University of Virginia Undergraduate Admissions",
    columns: ["Inside Look at University of Virginia Undergraduate Admissions - Is attending",
              "Inside Look at University of Virginia Undergraduate Admissions - 21188 - Is Registered"],
    free: true
  },

  { name: "Grab-and-Go Lunch with Student Clubs",
    columns: ["Grab-and-Go Lunch with Student Clubs - Is attending",
              "Grab-and-Go Lunch with Student Clubs - RW17 - Friday Faculty Seminars and Lunch",
              "Fee Name (Grab-and-Go Lunch with Student Clubs - RW17 - Friday Faculty Seminars and Lunch)",
              "Grab-and-Go Lunch with Student Clubs - RW17 - Friday Faculty Seminars and Lunch - total_price_paid",
              "Grab-and-Go Lunch with Student Clubs - 21118 - Is Registered"],
    free: false
  },

  { name: "Hickory Club Luncheon and Panel Discussion Design Your Impact",
    columns: ["Hickory Club Luncheon and Panel Discussion Design Your Impact - Is attending",
              "Hickory Club Luncheon and Panel Discussion Design Your Impact - 21117 - Is Registered"],
    free: true
  },

  { name: "Afternoon Cases and Faculty Sessions",
    columns: ["Afternoon Cases and Faculty Sessions - Is attending",
              "Afternoon Cases and Faculty Sessions - 21446 - Is Registered"],
    free: true
  },

  { name: "Welcome Cocktail Reception and Venture Fair",
    columns: ["Welcome Cocktail Reception and Venture Fair - Is attending",
              "Welcome Cocktail Reception and Venture Fair - RW17 - Friday Cocktail Reception",
              "Fee Name (Welcome Cocktail Reception and Venture Fair - RW17 - Friday Cocktail Reception)",
              "Welcome Cocktail Reception and Venture Fair - RW17 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception and Venture Fair - 21119 - Is Registered"],
    free: false
  },

  { name: "1957 Friday Night Class Event",
    columns: ["1957 Friday Night Class Event - Is attending",
              "1957 Friday Night Class Event - RW17 - Friday 1957 Event Transportation",
              "1957 Friday Night Class Event - 21120 - Is Registered"],
    free: true
  },
  
  { name: "1962 Friday Night Class Event",
    columns: ["1962 Friday Night Class Event - Is attending",
              "1962 Friday Night Class Event - RW17 - Friday 1962 Event Fee",
              "Fee Name (1962 Friday Night Class Event - RW17 - Friday 1962 Event Fee)",
              "1962 Friday Night Class Event - RW17 - Friday 1962 Event Fee - total_price_paid",
              "1962 Friday Night Class Event - RW17 - Friday 1962 Event Transportation",
              "1962 Friday Night Class Event - 21122 - Is Registered"],
    free: true
  },
  
  { name: "1958  66 Abbott Society Friday Night Class Event",
    columns: ["1958  66 Abbott Society Friday Night Class Event - Is attending",
              "1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Fee",
              "Fee Name (1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Fee)",
              "1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Fee - total_pr",
              "1958  66 Abbott Society Friday Night Class Event - RW17 - Friday Abbott Society Event Transportation",
              "1958  66 Abbott Society Friday Night Class Event - 21121 - Is Registered"],
    free: false
  },

  { name: "1967 Friday Night Class Event",
    columns: ["1967 Friday Night Class Event - Is attending",
              "1967 Friday Night Class Event - RW17 - Friday 1967 Event Fee",
              "Fee Name (1967 Friday Night Class Event - RW17 - Friday 1967 Event Fee)",
              "1967 Friday Night Class Event - RW17 - Friday 1967 Event Fee - total_price_paid",
              "1967 Friday Night Class Event - RW17 - Friday 1967 Event Transportation",
              "1967 Friday Night Class Event - 21123 - Is Registered"],
    free: false
  },

  { name: "1972 Friday Night Class Event",
    columns: ["1972 Friday Night Class Event - Is attending",
              "1972 Friday Night Class Event - RW17 - Friday 1972 Event Fee",
              "Fee Name (1972 Friday Night Class Event - RW17 - Friday 1972 Event Fee)",
              "1972 Friday Night Class Event - RW17 - Friday 1972 Event Fee - total_price_paid",
              "1972 Friday Night Class Event - RW17 - Friday 1972 Event Transportation",
              "1972 Friday Night Class Event - 21124 - Is Registered"],
    free: false
  },

  { name: "1977 Friday Night Class Event",
    columns: ["1977 Friday Night Class Event - Is attending",
              "1977 Friday Night Class Event - RW17 - Friday 1977 Event Fee",
              "Fee Name (1977 Friday Night Class Event - RW17 - Friday 1977 Event Fee)",
              "1977 Friday Night Class Event - RW17 - Friday 1977 Event Fee - total_price_paid",
              "1977 Friday Night Class Event - RW17 - Friday 1977 Event Transportation",
              "1977 Friday Night Class Event - 21174 - Is Registered"],
    free: false
  },

  { name: "1982 Friday Night Class Event",
    columns: ["1982 Friday Night Class Event - Is attending",
              "1982 Friday Night Class Event - RW17 - Friday 1982 Event Transportation",
              "1982 Friday Night Class Event - 21175 - Is Registered"],
    free: true
  },

  { name: "1987 Friday Night Class Event",
    columns: ["1987 Friday Night Class Event - Is attending",
              "1987 Friday Night Class Event - RW17 - Friday 1987 Event Transportation",
              "1987 Friday Night Class Event - 21176 - Is Registered"],
    free: true
  },

  { name: "1992 Friday Night Class Event",
    columns: ["1992 Friday Night Class Event - Is attending",
              "1992 Friday Night Class Event - RW17 - Friday 1992 Event Fee",
              "Fee Name (1992 Friday Night Class Event - RW17 - Friday 1992 Event Fee)",
              "1992 Friday Night Class Event - RW17 - Friday 1992 Event Fee - total_price_paid",
              "1992 Friday Night Class Event - 21177 - Is Registered"],
    free: false
  },

  { name: "1997 Friday Night Class Event",
    columns: ["1997 Friday Night Class Event - Is attending",
              "1997 Friday Night Class Event - RW17 - Friday 1997 Event Fee",
              "Fee Name (1997 Friday Night Class Event - RW17 - Friday 1997 Event Fee)",
              "1997 Friday Night Class Event - RW17 - Friday 1997 Event Fee - total_price_paid",
              "1997 Friday Night Class Event - RW17 - Friday 1997 Event Transportation",
              "1997 Friday Night Class Event - 21178 - Is Registered"],
    free: false
  },

  { name: "2002 Friday Night Class Event",
    columns: ["2002 Friday Night Class Event - Is attending",
              "2002 Friday Night Class Event - RW17 - Friday 2002 Event Fee",
              "Fee Name (2002 Friday Night Class Event - RW17 - Friday 2002 Event Fee)",
              "2002 Friday Night Class Event - RW17 - Friday 2002 Event Fee - total_price_paid",
              "2002 Friday Night Class Event - 21179 - Is Registered"],
    free: false
  },

  { name: "2007 Friday Night Class Event",
    columns: ["2007 Friday Night Class Event - Is attending",
              "2007 Friday Night Class Event - RW17 - Friday 2007 Event Fee",
              "Fee Name (2007 Friday Night Class Event - RW17 - Friday 2007 Event Fee)",
              "2007 Friday Night Class Event - RW17 - Friday 2007 Event Fee - total_price_paid",
              "2007 Friday Night Class Event - 21180 - Is Registered"],
    free: false
  },

  { name: "2012 Friday Night Class Event",
    columns: ["2012 Friday Night Class Event - Is attending",
              "2012 Friday Night Class Event - RW17 - Friday 2012 Event Fee",
              "Fee Name (2012 Friday Night Class Event - RW17 - Friday 2012 Event Fee)",
              "2012 Friday Night Class Event - RW17 - Friday 2012 Event Fee - total_price_paid",
              "2012 Friday Night Class Event - 21181 - Is Registered"],
    free: false
  },

  { name: "2012 EMBA Friday Night Class Event",
    columns: ["2012 EMBA Friday Night Class Event - Is attending",
              "2012 EMBA Friday Night Class Event - RW17 - Friday 2012 EMBA Event Fee",
              "Fee Name (2012 EMBA Friday Night Class Event - RW17 - Friday 2012 EMBA Event Fee)",
              "2012 EMBA Friday Night Class Event - RW17 - Friday 2012 EMBA Event Fee - total_price_paid",
              "2012 EMBA Friday Night Class Event - 21182 - Is Registered"],
    free: false
  },

  { name: "2016 Friday Night Class Event",
    columns: ["2016 Friday Night Class Event - Is attending",
              "2016 Friday Night Class Event - RW17 - Friday 2016 Event Fee",
              "Fee Name (2016 Friday Night Class Event - RW17 - Friday 2016 Event Fee)",
              "2016 Friday Night Class Event - RW17 - Friday 2016 Event Fee - total_price_paid",
              "2016 Friday Night Class Event - 21183 - Is Registered"],
    free: false
  },

  { name: "2016 EMBA Friday Night Class Event",
    columns: ["2016 EMBA Friday Night Class Event - Is attending",
              "2016 EMBA Friday Night Class Event - RW17 - Friday 2016 EMBA Event Fee",
              "Fee Name (2016 EMBA Friday Night Class Event - RW17 - Friday 2016 EMBA Event Fee)",
              "2016 EMBA Friday Night Class Event - RW17 - Friday 2016 EMBA Event Fee - total_price_paid",
              "2016 EMBA Friday Night Class Event - 21184 - Is Registered"],
    free: false
  },

  { name: "2016 GEMBA Friday Night Class Event",
    columns: ["2016 GEMBA Friday Night Class Event - Is attending",
              "2016 GEMBA Friday Night Class Event - RW17 - Friday 2016 GEMBA Event Fee",
              "Fee Name (2016 GEMBA Friday Night Class Event - RW17 - Friday 2016 GEMBA Event Fee)",
              "2016 GEMBA Friday Night Class Event - RW17 - Friday 2016 GEMBA Event Fee - total_price_paid",
              "2016 GEMBA Friday Night Class Event - 21185 - Is Registered"],
    free: false
  },

  { name: "Darden Breakfast and Coffee",
    columns: ["Darden Breakfast and Coffee - Is attending",
              "Darden Breakfast and Coffee - RW17 - Saturday Breakfast at Darden Fee",
              "Fee Name (Darden Breakfast and Coffee - RW17 - Saturday Breakfast at Darden Fee)",
              "Darden Breakfast and Coffee - RW17 - Saturday Breakfast at Darden Fee - total_price_paid",
              "Darden Breakfast and Coffee - 21186 - Is Registered"],
    free: false
  },

  { name: "Darden Society Champagne Breakfast",
    columns: ["Darden Society Champagne Breakfast - Is attending",
              "Darden Society Champagne Breakfast - 21187 - Is Registered"],
    free: true
  },

  { name: "Co-create new futures for yourself and for the world",
    columns: ["Co-create new futures for yourself and for the world - Is attending",
              "Co-create new futures for yourself and for the world - 22697 - Is Registered"],
    free: true
  },

  { name: "Deans State of the School Address",
    columns: ["Deans State of the School Address - Is attending",
              "Deans State of the School Address - 21189 - Is Registered"],
    free: true
  },

  { name: "Darden Barbecue and Field Day",
    columns: ["Option 1 Darden Barbecue and Field Day - Is attending",
              "Option 1 Darden Barbecue and Field Day - RW17 - Saturday Darden Barbecue and Field Day Fee",
              "Fee Name (Option 1 Darden Barbecue and Field Day - RW17 - Saturday Darden Barbecue and Field Day Fee)",
              "Option 1 Darden Barbecue and Field Day - RW17 - Saturday Darden Barbecue and Field Day Fee ",
              "Option 1 Darden Barbecue and Field Day - 21190 - Is Registered"],
    free: false
  },

  { name: "Monticello Tour",
    columns: ["Add On for Option 1 Monticello Tour - Is attending",
              "Add On for Option 1 Monticello Tour - RW17 - Saturday Monitcello Tour Fee",
              "Fee Name (Add On for Option 1 Monticello Tour - RW17 - Saturday Monitcello Tour Fee)",
              "Add On for Option 1 Monticello Tour - RW17 - Saturday Monitcello Tour Fee - total_price_paid",
              "Option 2 Darden Barbecue and Monticello Tour - RW17 - Saturday Monticello Transportation",
              "Add On for Option 1 Monticello Tour - 21419 - Is Registered"],
    free: false
  },

  { name: "Afternoon at the Vineyard",
    columns: ["Add On for Option 1 Afternoon at the Vineyard - Is attending",
              "Add On for Option 1 Afternoon at the Vineyard - RW17 - Saturday Afternoon at the Vineyard Fee",
              "Fee Name (Add On for Option 1 Afternoon at the Vineyard - RW17 - Saturday Afternoon at the Vineyard Fee)",
              "Add On for Option 1 Afternoon at the Vineyard - RW17 - Saturday Afternoon at the Vineyard Fee - tota",
              "Option 3 Darden Barbecue and Afternoon at the Vineyard - RW17 - Saturday Vineyard Transportation",
              "Add On for Option 1 Afternoon at the Vineyard - 21191 - Is Registered"],
    free: false
  },
  
  { name: "Darden Barbecue and Charlottesville City Bike Tour",
    columns: ["Option 2 Darden Barbecue and Charlottesville City Bike Tour - Is attending",
              "Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 - Saturday Bike Tour Fee",
              "Fee Name (Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 - Saturday Bike Tour Fee)",
              "Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 - Saturday Bike Tour Fee - total_",
              "Option 2 Darden Barbecue and Charlottesville City Bike Tour - RW17 Bike Tour Height",
              "Option 2 Darden Barbecue and Charlottesville City Bike Tour - 21192 - Is Registered"],
    free: false
  },  

  { name: "Foxfield Spring Races",
    columns: ["Option 5 Foxfield Spring Races - Is attending",
              "Option 5 Foxfield Spring Races - RW17 - Saturday Foxfield Fee",
              "Fee Name (Option 5 Foxfield Spring Races - RW17 - Saturday Foxfield Fee)",
              "Option 5 Foxfield Spring Races - RW17 - Saturday Foxfield Fee - total_price_paid",
              "Option 5 Foxfield Spring Races - RW17 - Foxfield Transportation",
              "Fee Name (Option 5 Foxfield Spring Races - RW17 - Foxfield Transportation)",
              "Option 5 Foxfield Spring Races - RW17 - Foxfield Transportation - total_price_paid",
              "Option 5 Foxfield Spring Races - 21203 - Is Registered"],
    free: false
  },

  { name: "Class Dinners and Saturday Night Soire",
    columns: ["Class Dinners and Saturday Night Soire - Is attending",
              "Class Dinners and Saturday Night Soire - RW17 - Saturday Soiree",
              "Fee Name (Class Dinners and Saturday Night Soire - RW17 - Saturday Soiree)",
              "Class Dinners and Saturday Night Soire - RW17 - Saturday Soiree - total_price_paid",
              "Class Dinners and Saturday Night Soire - 21204 - Is Registered"],
    free: false
  },

  { name: "1967 Saturday Night at Charlie Fosters Home",
    columns: ["1967 Saturday Night at Charlie Fosters Home - Is attending",
              "1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Fee",
              "Fee Name (1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Fee)",
              "1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Fee - total_price_paid",
              "1967 Saturday Night at Charlie Fosters Home - RW17 - Saturday 1967 Event Transportation",
              "1967 Saturday Night at Charlie Fosters Home - 21513 - Is Registered"],
    free: false
  },

  { name: "1987 Saturday Night at Afton Mountain Vineyard",
    columns: ["1987 Saturday Night at Afton Mountain Vineyard - Is attending",
              "1987 Saturday Night at Afton Mountain Vineyard - RW17 - 1987 Saturday Afton Mountain",
              "Fee Name (1987 Saturday Night at Afton Mountain Vineyard - RW17 - 1987 Saturday Afton Mountain)",
              "1987 Saturday Night at Afton Mountain Vineyard - RW17 - 1987 Saturday Afton Mountain - total_price_p",
              "1987 Saturday Night at Afton Mountain Vineyard - RW17 - Saturday 1987 Event Transportation",
              "1987 Saturday Night at Afton Mountain Vineyard - 21512 - Is Registered"],
    free: false
  },

  { name: "Farewell Brunch",
    columns: ["Farewell Brunch - Is attending",
              "Farewell Brunch - RW17 - Sunday Farewell Brunch",
              "Fee Name (Farewell Brunch - RW17 - Sunday Farewell Brunch)",
              "Farewell Brunch - RW17 - Sunday Farewell Brunch - total_price_paid",
              "Farewell Brunch - 21205 - Is Registered"],
    free: false
  },

  { name: "Class of 1987 Farewell Brunch",
    columns: ["Class of 1987 Farewell Brunch  - Is attending",
              "Class of 1987 Farewell Brunch  - RW17 - Sunday Class of 1987 Farewell Brunch Fee",
              "Fee Name (Class of 1987 Farewell Brunch  - RW17 - Sunday Class of 1987 Farewell Brunch Fee)",
              "Class of 1987 Farewell Brunch  - RW17 - Sunday Class of 1987 Farewell Brunch Fee - total_price_paid",
              "Class of 1987 Farewell Brunch  - 21213 - Is Registered"],
    free: false
  }
]
