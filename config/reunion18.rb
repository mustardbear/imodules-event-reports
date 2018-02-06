# For reunion 2018
DIRECTORY = 'data/reunion18/'
SOURCE = "#{DIRECTORY}reunion_registrations.csv"
MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"

# Summable for Reuion 2018
SUMMABLE = [
  "Child Care - RW18 - Friday Childcare",
  "Child Care - RW18 - Friday Childcare - total_price_paid",
  "Child Care - RW18 Saturday Childcare",
  "Child Care - RW18 Saturday Childcare - total_price_paid",
  "Lunch and Learn - RW18 - Friday Faculty Seminars and Lunch",
  "Lunch and Learn - RW18 - Friday Faculty Seminars and Lunch - total_price_paid",
  "Welcome Cocktail Reception and Venture Fair - RW18 - Friday Cocktail Reception",
  "Welcome Cocktail Reception and Venture Fair - RW18 - Friday Cocktail Reception - total_price_paid",
  "1958 Friday Night Class Event - RW18 - 1959 Friday Night Class Event Transportation",
  "1958 Friday Night Class Event - RW18 - 1959 Friday Night Class Event Transportation - total_price_pa",
  "1963 Friday Night Class Event - RW18 - 1963 Friday Night Class Event Transportation",
  "1963 Friday Night Class Event - RW18 - 1963 Friday Night Class Event Transportation - total_price_pa",
  "1957-1967 Abbott Society Friday Night Event - RW18 - Friday Abbott Society Event Transport",
  "1957-1967 Abbott Society Friday Night Event - RW18 - Friday Abbott Society Event Transport",
  "1968 Friday Night Class Event - RW18 - Friday 1968 Event Fee",
  "1968 Friday Night Class Event - RW18 - Friday 1968 Event Fee - total_price_paid",
  "1968 Friday Night Class Event - RW18 - Friday 1968 Event Transportation",
  "1968 Friday Night Class Event - RW18 - Friday 1968 Event Transportation - total_price_paid",
  "1973 Friday Night Class Event - RW18 - Friday 1973 Event Fee",
  "1973 Friday Night Class Event - RW18 - Friday 1973 Event Fee - total_price_paid",
  "1973 Friday Night Class Event - RW18 - Friday 1973 Event Transportation",
  "1973 Friday Night Class Event - RW18 - Friday 1973 Event Transportation - total_price_paid",
  "1978 Friday Night Class Event - RW18 - Friday 1978 Event Fee",
  "1978 Friday Night Class Event - RW18 - Friday 1978 Event Fee - total_price_paid",
  "1978 Friday Night Class Event - RW18 - Friday 1978 Event Transportation",
  "1978 Friday Night Class Event - RW18 - Friday 1978 Event Transportation - total_price_paid",
  "1983 Friday Night Class Event - RW18 - Friday 1983 Event Fee",
  "1983 Friday Night Class Event - RW18 - Friday 1983 Event Fee - total_price_paid",
  "1988 Friday Night Class Event - RW18 - Friday 1988 Event Fee",
  "1988 Friday Night Class Event - RW18 - Friday 1988 Event Fee - total_price_paid",
  "1993 Friday Night Class Event - RW18 - Friday 1993 Event Fee",
  "1993 Friday Night Class Event - RW18 - Friday 1993 Event Fee - total_price_paid",
  "1998 Friday Night Class Event - RW18 - Friday 1998 Event Fee",
  "1998 Friday Night Class Event - RW18 - Friday 1998 Event Fee - total_price_paid",
  "2003 Friday Night Class Event - RW18 - Friday 2003 Event Fee",
  "2003 Friday Night Class Event - RW18 - Friday 2003 Event Fee - total_price_paid",
  "2008 Friday Night Class Event - RW18 - Friday 2008 Event Fee",
  "2008 Friday Night Class Event - RW18 - Friday 2008 Event Fee - total_price_paid",
  "2008 EMBA Friday Night Class Event - RW18 - Friday 2008 EMBA Event Fee",
  "2008 EMBA Friday Night Class Event - RW18 - Friday 2008 EMBA Event Fee - total_price_paid",
  "2013 Friday Night Class Event - RW18 - Friday 2013 Event Fee",
  "2013 Friday Night Class Event - RW18 - Friday 2013 Event Fee - total_price_paid",
  "2013 EMBA Friday Night Class Event - RW18 - Friday 2013 EMBA Event Fee",
  "2013 EMBA Friday Night Class Event - RW18 - Friday 2013 EMBA Event Fee - total_price_paid",
  "2017 Friday Night Class Event - RW18 - Friday 2017 Event Fee",
  "2017 Friday Night Class Event - RW18 - Friday 2017 Event Fee - total_price_paid",
  "2017 EMBA Friday Night Class Event - RW18 - Friday 2017 EMBA Event Fee",
  "2017 EMBA Friday Night Class Event - RW18 - Friday 2017 EMBA Event Fee - total_price_paid",
  "2017 GEMBA Friday Night Class Event - RW18 - Friday 2017 GEMBA Event Fee",
  "2017 GEMBA Friday Night Class Event - RW18 - Friday 2017 GEMBA Event Fee - total_price_paid",
  "Darden Breakfast and Coffee - RW18 - Saturday Breakfast at Darden Fee",
  "Darden Breakfast and Coffee - RW18 - Saturday Breakfast at Darden Fee - total_price_paid",
  "Option 1 Darden Picnic and Field Day - RW18 - Saturday Darden Barbecue and Field Day Fee",
  "Option 1 Darden Picnic and Field Day - RW18 - Saturday Darden Barbecue and Field Day Fee - total_p",
  "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard F",
  "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard F",
  "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard T",
  "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard T",
  "Option 3 Foxfield Spring Races - RW18 - Saturday Foxfield Fee",
  "Option 3 Foxfield Spring Races - RW18 - Saturday Foxfield Fee - total_price_paid",
  "Option 3 Foxfield Spring Races - RW18 - Foxfield Transportation",
  "Option 3 Foxfield Spring Races - RW18 - Foxfield Transportation - total_price_paid",
  "Class Dinners and Saturday Night Soire - RW18 - Saturday Soiree",
  "Class Dinners and Saturday Night Soire - RW18 - Saturday Soiree - total_price_paid",
  "Class of 1968 Saturday Night Class Dinner - RW18 - Class of 1968 Saturday Soiree",
  "Class of 1968 Saturday Night Class Dinner - RW18 - Class of 1968 Saturday Soiree - total_pri",
  "Class of 1968 Saturday Night Class Dinner - RW18 -  1968 Saturday Night Event Transportation",
  "Class of 1968 Saturday Night Class Dinner - RW18 -  1968 Saturday Night Event Transportation - total",
  "Class of 1993 Saturday Night Class Dinner - RW18 - Class of 1993 Saturday Soiree",
  "Class of 1993 Saturday Night Class Dinner - RW18 - Class of 1993 Saturday Soiree - total_pri",
  "Class of 2003 Saturday Night Class Dinner - RW18 - Class of 2003 Saturday Soiree",
  "Class of 2003 Saturday Night Class Dinner - RW18 - Class of 2003 Saturday Soiree - total_pri",
  "Farewell Brunch at Darden - RW18 - Sunday Farewell Brunch",
  "Farewell Brunch at Darden - RW18 - Sunday Farewell Brunch - total_price_paid",
  "Class of 1978 Farewell Brunch - RW18 - Class of 1978 Farewell Brunch",
  "Class of 1978 Farewell Brunch - RW18 - Class of 1978 Farewell Brunch - total_price_paid",
  "Charlottesville City Bike Tour - RW18 - Sunday Bike Tour Fee",
  "Charlottesville City Bike Tour - RW18 - Sunday Bike Tour Fee - total_price_paid"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First_Name", output_column_name: "First Name" },
  last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
  pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
  maiden_name: { column_name: "maiden_name", output_column_name: "Former Name" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "Reunion 2018 - RW18 Class Year",  setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? || value.eql?("0") ? "No Class Year" : value) }, output_column_name: "Class Year" },
  child_age: { column_name: "Reunion 2018 - RW18 Child Age", output_column_name: "Child Age"},
  guest_of: { column_name: "Registered By", output_column_name: "Guest Of" },
  hickory_club: { column_name: "Hickory_Club_Member", output_column_name: "Hickory Club Member"},
  darden_society: { column_name: "Darden_Society_Member", output_column_name: "Darden Society Member"}
}

ACTIVITIES = [

  { name: "Reunion 2018",
    columns: ["Registrant - 26436 - Is Registered"],
    free: true
  },
  
  { name: " Child Care",
    columns: ["Child Care - Is attending", 
              "Child Care - RW18 - Friday Childcare", 
              "Child Care - RW18 - Friday Childcare - total_price_paid",
              "Child Care - RW18 Saturday Childcare",
              "Child Care - RW18 Saturday Childcare - total_price_paid",
              "Child Care - RW18 - Child Birthdate",
              "Child Care - RW18 - Childcare Form Sent",
              "Child Care - RW18 - Childcare Form Received",
              "Child Care - 26472 - Is Registered"],
    free: false
  },
  
  { name: "Alumni Career Services Office Hours",
    columns: ["Alumni Career Services Office Hours - Is attending",
              "Alumni Career Services Office Hours - 26482 - Is Registered"],
    free: true
  },
  
  { name: "International First Coffee",
    columns: ["International First Coffee - Is attending",
              "International First Coffee - 26487 - Is Registered"],
    free: true
  },
  
  { name: "Venture Capital After Darden",
    columns: ["Venture Capital After Darden - Is attending",
              "Venture Capital After Darden - 26483 - Is Registered"],
    free: true
  },
  
  { name: "Introducing the Future Year Scholars Program",
    columns: ["Introducing the Future Year Scholars Program - Is attending",
              "Introducing the Future Year Scholars Program - 27039 - Is Registered"],
    free: true
  },
  
  { name: "Inside Look at University of Virginia Undergraduate Admissions",
    columns: ["Inside Look at University of Virginia Undergraduate Admissions - Is attending",
              "Inside Look at University of Virginia Undergraduate Admissions - 26485 - Is Registered"],
    free: true
  },

  { name: "Lunch and Learn",
    columns: ["Lunch and Learn - Is attending",
              "Lunch and Learn - RW18 - Friday Faculty Seminars and Lunch",
              "Fee Name (Lunch and Learn - RW18 - Friday Faculty Seminars and Lunch)",
              "Lunch and Learn - RW18 - Friday Faculty Seminars and Lunch - total_price_paid",
              "Lunch and Learn - 26486 - Is Registered"],
    free: false
  },  
  
  { name: "Alumni Career Services LinkedIn Headshot",
    columns: ["Alumni Career Services LinkedIn Headshot - Is attending",
              "Alumni Career Services LinkedIn Headshot - 27038 - Is Registered"],
    free: true
  },
  
  { name: "Afternoon Cases and Faculty Sessions",
    columns: ["Afternoon Cases and Faculty Sessions - Is attending",
              "Afternoon Cases and Faculty Sessions - 26490 - Is Registered"],
    free: true
  },
  
  { name: "Grant Green MBA 13 Memorial Bench Dedication",
    columns: ["Grant Green MBA 13 Memorial Bench Dedication - Is attending",
              "Grant Green MBA 13 Memorial Bench Dedication - 27053 - Is Registered"],
    free: true
  },
  
  { name: "Welcome Cocktail Reception and Venture Fair",
    columns: ["Welcome Cocktail Reception and Venture Fair - Is attending",
              "Welcome Cocktail Reception and Venture Fair - RW18 - Friday Cocktail Reception",
              "Fee Name (Welcome Cocktail Reception and Venture Fair - RW18 - Friday Cocktail Reception)",
              "Welcome Cocktail Reception and Venture Fair - RW18 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception and Venture Fair - 26491 - Is Registered"],
    free: false
  },  
  
  { name: "1958 1963 and Abbott Society Welcome Reception",
    columns: ["1958 1963 and Abbott Society Welcome Reception - Is attending",
              "1958 1963 and Abbott Society Welcome Reception - 27054 - Is Registered"],
    free: true
  },  
  
  { name: "1958 Friday Night Class Event",
    columns: ["1958 Friday Night Class Event - Is attending",
              "1958 Friday Night Class Event - RW18 - 1959 Friday Night Class Event Transportation",
              "Fee Name (1958 Friday Night Class Event - RW18 - 1959 Friday Night Class Event Transportation)",
              "1958 Friday Night Class Event - RW18 - 1959 Friday Night Class Event Transportation - total_price_pa",
              "1958 Friday Night Class Event - 27055 - Is Registered"],
    free: true
  },  
  
  { name: "1963 Friday Night Class Event",
    columns: ["1963 Friday Night Class Event - Is attending",
              "1963 Friday Night Class Event - RW18 - 1963 Friday Night Class Event Transportation",
              "Fee Name (1963 Friday Night Class Event - RW18 - 1963 Friday Night Class Event Transportation)",
              "1963 Friday Night Class Event - RW18 - 1963 Friday Night Class Event Transportation - total_price_pa",
              "1963 Friday Night Class Event - 27056 - Is Registered"],
    free: true
  },  
  
  # TODO: Needs help because some column names repeat
  { name: "1957-1967 Abbott Society Friday Night Event",
    columns: ["1957-1967 Abbott Society Friday Night Event - Is attending",
              "1957-1967 Abbott Society Friday Night Event - RW18 - Friday Abbott Society Event Transport",
              "Fee Name (1957-1967 Abbott Society Friday Night Event - RW18 - Friday Abbott Society Event Transport)",
              "1957-1967 Abbott Society Friday Night Event - RW18 - Friday Abbott Society Event Transport",
              "1957-1967 Abbott Society Friday Night Event - 26492 - Is Registered"],
    free: true
  },  
  
  { name: "1968 Friday Night Class Event",
    columns: ["1968 Friday Night Class Event - Is attending",
              "1968 Friday Night Class Event - RW18 - Friday 1968 Event Fee",
              "Fee Name (1968 Friday Night Class Event - RW18 - Friday 1968 Event Fee)",
              "1968 Friday Night Class Event - RW18 - Friday 1968 Event Fee - total_price_paid",
              "1968 Friday Night Class Event - RW18 - Friday 1968 Event Transportation",
              "Fee Name (1968 Friday Night Class Event - RW18 - Friday 1968 Event Transportation)",
              "1968 Friday Night Class Event - RW18 - Friday 1968 Event Transportation - total_price_paid",
              "1968 Friday Night Class Event - 26493 - Is Registered"],
    free: false
  },  
  
  { name: "1973 Friday Night Class Event",
    columns: ["1973 Friday Night Class Event - Is attending",
              "1973 Friday Night Class Event - RW18 - Friday 1973 Event Fee",
              "Fee Name (1973 Friday Night Class Event - RW18 - Friday 1973 Event Fee)",
              "1973 Friday Night Class Event - RW18 - Friday 1973 Event Fee - total_price_paid",
              "1973 Friday Night Class Event - RW18 - Friday 1973 Event Transportation",
              "Fee Name (1973 Friday Night Class Event - RW18 - Friday 1973 Event Transportation)",
              "1973 Friday Night Class Event - RW18 - Friday 1973 Event Transportation - total_price_paid",
              "1973 Friday Night Class Event - 26498 - Is Registered"],
    free: false
  },  
  
  { name: "1978 Friday Night Class Event",
    columns: ["1978 Friday Night Class Event - Is attending",
              "1978 Friday Night Class Event - RW18 - Friday 1978 Event Fee",
              "Fee Name (1978 Friday Night Class Event - RW18 - Friday 1978 Event Fee)",
              "1978 Friday Night Class Event - RW18 - Friday 1978 Event Fee - total_price_paid",
              "1978 Friday Night Class Event - RW18 - Friday 1978 Event Transportation",
              "Fee Name (1978 Friday Night Class Event - RW18 - Friday 1978 Event Transportation)",
              "1978 Friday Night Class Event - RW18 - Friday 1978 Event Transportation - total_price_paid",
              "1978 Friday Night Class Event - 26503 - Is Registered"],
    free: false
  },  
  
  { name: "1983 Friday Night Class Event",
    columns: ["1983 Friday Night Class Event - Is attending",
              "1983 Friday Night Class Event - RW18 - Friday 1983 Event Fee",
              "Fee Name (1983 Friday Night Class Event - RW18 - Friday 1983 Event Fee)",
              "1983 Friday Night Class Event - RW18 - Friday 1983 Event Fee - total_price_paid",
              "1983 Friday Night Class Event - 26504 - Is Registered"],
    free: false
  },  
  
  { name: "1988 Friday Night Class Event",
    columns: ["1988 Friday Night Class Event - Is attending",
              "1988 Friday Night Class Event - RW18 - Friday 1988 Event Fee",
              "Fee Name (1988 Friday Night Class Event - RW18 - Friday 1988 Event Fee)",
              "1988 Friday Night Class Event - RW18 - Friday 1988 Event Fee - total_price_paid",
              "1988 Friday Night Class Event - 26505 - Is Registered"],
    free: false
  },    

  { name: "1993 Friday Night Class Event",
    columns: ["1993 Friday Night Class Event - Is attending",
              "1993 Friday Night Class Event - RW18 - Friday 1993 Event Fee",
              "Fee Name (1993 Friday Night Class Event - RW18 - Friday 1993 Event Fee)",
              "1993 Friday Night Class Event - RW18 - Friday 1993 Event Fee - total_price_paid",
              "1993 Friday Night Class Event - 26506 - Is Registered"],
    free: false
  },    

  { name: "1998 Friday Night Class Event",
    columns: ["1998 Friday Night Class Event - Is attending",
              "1998 Friday Night Class Event - RW18 - Friday 1998 Event Fee",
              "Fee Name (1998 Friday Night Class Event - RW18 - Friday 1998 Event Fee)",
              "1998 Friday Night Class Event - RW18 - Friday 1998 Event Fee - total_price_paid",
              "1998 Friday Night Class Event - 26507 - Is Registered"],
    free: false
  },    

  { name: "2003 Friday Night Class Event",
    columns: ["2003 Friday Night Class Event - Is attending",
              "2003 Friday Night Class Event - RW18 - Friday 2003 Event Fee",
              "Fee Name (2003 Friday Night Class Event - RW18 - Friday 2003 Event Fee)",
              "2003 Friday Night Class Event - RW18 - Friday 2003 Event Fee - total_price_paid",
              "2003 Friday Night Class Event - 26508 - Is Registered"],
    free: false
  },    

  { name: "2008 Friday Night Class Event",
    columns: ["2008 Friday Night Class Event - Is attending",
              "2008 Friday Night Class Event - RW18 - Friday 2008 Event Fee",
              "Fee Name (2008 Friday Night Class Event - RW18 - Friday 2008 Event Fee)",
              "2008 Friday Night Class Event - RW18 - Friday 2008 Event Fee - total_price_paid",
              "2008 Friday Night Class Event - 26509 - Is Registered"],
    free: false
  },    

  { name: "2008 EMBA Friday Night Class Event",
    columns: ["2008 EMBA Friday Night Class Event - Is attending",
              "2008 EMBA Friday Night Class Event - RW18 - Friday 2008 EMBA Event Fee",
              "Fee Name (2008 EMBA Friday Night Class Event - RW18 - Friday 2008 EMBA Event Fee)",
              "2008 EMBA Friday Night Class Event - RW18 - Friday 2008 EMBA Event Fee - total_price_paid",
              "2008 EMBA Friday Night Class Event - 27057 - Is Registered"],
    free: false
  },    

  { name: "2013 Friday Night Class Event",
    columns: ["2013 Friday Night Class Event - Is attending",
              "2013 Friday Night Class Event - RW18 - Friday 2013 Event Fee",
              "Fee Name (2013 Friday Night Class Event - RW18 - Friday 2013 Event Fee)",
              "2013 Friday Night Class Event - RW18 - Friday 2013 Event Fee - total_price_paid",
              "2013 Friday Night Class Event - 26510 - Is Registered"],
    free: false
  },    

  { name: "2013 EMBA Friday Night Class Event",
    columns: ["2013 EMBA Friday Night Class Event - Is attending",
              "2013 EMBA Friday Night Class Event - RW18 - Friday 2013 EMBA Event Fee",
              "Fee Name (2013 EMBA Friday Night Class Event - RW18 - Friday 2013 EMBA Event Fee)",
              "2013 EMBA Friday Night Class Event - RW18 - Friday 2013 EMBA Event Fee - total_price_paid",
              "2013 EMBA Friday Night Class Event - 26511 - Is Registered"],
    free: false
  },    
  
  { name: "2013 GEMBA Friday Night Class Event",
    columns: ["2013 GEMBA Friday Night Class Event - Is attending",
              "2013 GEMBA Friday Night Class Event - 26516 - Is Registered"],
    free: true
  },     
  
  { name: "2017 Friday Night Class Event",
    columns: ["2017 Friday Night Class Event - Is attending",
              "2017 Friday Night Class Event - RW18 - Friday 2017 Event Fee",
              "Fee Name (2017 Friday Night Class Event - RW18 - Friday 2017 Event Fee)",
              "2017 Friday Night Class Event - RW18 - Friday 2017 Event Fee - total_price_paid",
              "2017 Friday Night Class Event - 26517 - Is Registered"],
    free: false
  },
  
  { name: "2017 EMBA Friday Night Class Event",
    columns: ["2017 EMBA Friday Night Class Event - Is attending",
              "2017 EMBA Friday Night Class Event - RW18 - Friday 2017 EMBA Event Fee",
              "Fee Name (2017 EMBA Friday Night Class Event - RW18 - Friday 2017 EMBA Event Fee)",
              "2017 EMBA Friday Night Class Event - RW18 - Friday 2017 EMBA Event Fee - total_price_paid",
              "2017 EMBA Friday Night Class Event - 26518 - Is Registered"],
    free: false
  },  
  
  { name: "2017 GEMBA Friday Night Class Event",
    columns: ["2017 GEMBA Friday Night Class Event - Is attending",
              "2017 GEMBA Friday Night Class Event - RW18 - Friday 2017 GEMBA Event Fee",
              "Fee Name (2017 GEMBA Friday Night Class Event - RW18 - Friday 2017 GEMBA Event Fee)",
              "2017 GEMBA Friday Night Class Event - RW18 - Friday 2017 GEMBA Event Fee - total_price_paid",
              "2017 GEMBA Friday Night Class Event - 26519 - Is Registered"],
    free: false
  },    
  
  { name: "Yoga",
    columns: ["Yoga - Is attending",
              "Yoga - 26521 - Is Registered"],
    free: true
  },     

  { name: "Darden Breakfast and Coffee",
    columns: ["Darden Breakfast and Coffee - Is attending",
              "Darden Breakfast and Coffee - RW18 - Saturday Breakfast at Darden Fee",
              "Fee Name (Darden Breakfast and Coffee - RW18 - Saturday Breakfast at Darden Fee)",
              "Darden Breakfast and Coffee - RW18 - Saturday Breakfast at Darden Fee - total_price_paid",
              "Darden Breakfast and Coffee - 26546 - Is Registered"],
    free: false
  },    

  { name: "The Encore Case Finding Purposeful Work Later in your Career",
    columns: ["The Encore Case Finding Purposeful Work Later in your Career - Is attending",
              "The Encore Case Finding Purposeful Work Later in your Career - 27220 - Is Registered"],
    free: true
  },     

  { name: "Deans State of the School Address",
    columns: ["Deans State of the School Address - Is attending",
              "Deans State of the School Address - 26548 - Is Registered"],
    free: true
  },     

  { name: "Darden Picnic and Field Day",
    columns: ["Option 1 Darden Picnic and Field Day - Is attending",
              "Option 1 Darden Picnic and Field Day - RW18 - Saturday Darden Barbecue and Field Day Fee",
              "Fee Name (Option 1 Darden Picnic and Field Day - RW18 - Saturday Darden Barbecue and Field Day Fee)",
              "Option 1 Darden Picnic and Field Day - RW18 - Saturday Darden Barbecue and Field Day Fee - total_p",
              "Option 1 Darden Picnic and Field Day - 26550 - Is Registered"],
    free: false
  },    

  # TODO: Needs work because some column names repeat
  { name: "Darden Picnic and Afternoon at the Vineyard",
    columns: ["Option 2 Darden Picnic and Afternoon at the Vineyard - Is attending",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard F",
              "Fee Name (Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard F)",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard F",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard T",
              "Fee Name (Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard T)",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - RW18 - Saturday Afternoon at the Vineyard T",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - 26556 - Is Registered"],
    free: false
  },    

  { name: "Foxfield Spring Races",
    columns: ["Option 3 Foxfield Spring Races - Is attending",
              "Option 3 Foxfield Spring Races - RW18 - Saturday Foxfield Fee",
              "Fee Name (Option 3 Foxfield Spring Races - RW18 - Saturday Foxfield Fee)",
              "Option 3 Foxfield Spring Races - RW18 - Saturday Foxfield Fee - total_price_paid",
              "Option 3 Foxfield Spring Races - RW18 - Foxfield Transportation",
              "Fee Name (Option 3 Foxfield Spring Races - RW18 - Foxfield Transportation)",
              "Option 3 Foxfield Spring Races - RW18 - Foxfield Transportation - total_price_paid",
              "Option 3 Foxfield Spring Races - 26557 - Is Registered"],
    free: false
  },    

  { name: "Darden Society Cocktail Reception",
    columns: ["Darden Society Cocktail Reception - Is attending",
              "Darden Society Cocktail Reception - 27058 - Is Registered"],
    free: true
  },     

  { name: "Class Dinners and Saturday Night Soire",
    columns: ["Class Dinners and Saturday Night Soire - Is attending",
              "Class Dinners and Saturday Night Soire - RW18 - Saturday Soiree",
              "Fee Name (Class Dinners and Saturday Night Soire - RW18 - Saturday Soiree)",
              "Class Dinners and Saturday Night Soire - RW18 - Saturday Soiree - total_price_paid",
              "Class Dinners and Saturday Night Soire - 26558 - Is Registered"],
    free: false
  },    

  { name: "Class of 1968 Saturday Night Class Dinner",
    columns: ["Class of 1968 Saturday Night Class Dinner - Is attending",
              "Class of 1968 Saturday Night Class Dinner - RW18 - Class of 1968 Saturday Soiree",
              "Fee Name (Class of 1968 Saturday Night Class Dinner - RW18 - Class of 1968 Saturday Soiree)",
              "Class of 1968 Saturday Night Class Dinner - RW18 - Class of 1968 Saturday Soiree - total_pri",
              "Class of 1968 Saturday Night Class Dinner - RW18 -  1968 Saturday Night Event Transportation",
              "Fee Name (Class of 1968 Saturday Night Class Dinner - RW18 -  1968 Saturday Night Event Transportation)",
              "Class of 1968 Saturday Night Class Dinner - RW18 -  1968 Saturday Night Event Transportation - total",
              "Class of 1968 Saturday Night Class Dinner - 27059 - Is Registered"],
    free: false
  },    

  { name: "Class of 1993 Saturday Night Class Dinner",
    columns: ["Class of 1993 Saturday Night Class Dinner - Is attending",
              "Class of 1993 Saturday Night Class Dinner - RW18 - Class of 1993 Saturday Soiree",
              "Fee Name (Class of 1993 Saturday Night Class Dinner - RW18 - Class of 1993 Saturday Soiree)",
              "Class of 1993 Saturday Night Class Dinner - RW18 - Class of 1993 Saturday Soiree - total_pri",
              "Class of 1993 Saturday Night Class Dinner - 27060 - Is Registered"],
    free: false
  },    

  { name: "Class of 2003 Saturday Night Class Dinner",
    columns: ["Class of 2003 Saturday Night Class Dinner - Is attending",
              "Class of 2003 Saturday Night Class Dinner - RW18 - Class of 2003 Saturday Soiree",
              "Fee Name (Class of 2003 Saturday Night Class Dinner - RW18 - Class of 2003 Saturday Soiree)",
              "Class of 2003 Saturday Night Class Dinner - RW18 - Class of 2003 Saturday Soiree - total_pri",
              "Class of 2003 Saturday Night Class Dinner - 27061 - Is Registered"],
    free: false
  },    

  { name: "Farewell Brunch at Darden",
    columns: ["Farewell Brunch at Darden - Is attending",
              "Farewell Brunch at Darden - RW18 - Sunday Farewell Brunch",
              "Fee Name (Farewell Brunch at Darden - RW18 - Sunday Farewell Brunch)",
              "Farewell Brunch at Darden - RW18 - Sunday Farewell Brunch - total_price_paid",
              "Farewell Brunch at Darden - 26561 - Is Registered"],
    free: false
  },    

  { name: "Class of 1958 Farewell Brunch",
    columns: ["Class of 1958 Farewell Brunch - Is attending",
              "Class of 1958 Farewell Brunch - 27062 - Is Registered"],
    free: true
  },     

  { name: "Class of 1978 Farewell Brunch",
    columns: ["Class of 1978 Farewell Brunch - Is attending",
              "Class of 1978 Farewell Brunch - RW18 - Class of 1978 Farewell Brunch",
              "Fee Name (Class of 1978 Farewell Brunch - RW18 - Class of 1978 Farewell Brunch)",
              "Class of 1978 Farewell Brunch - RW18 - Class of 1978 Farewell Brunch - total_price_paid",
              "Class of 1978 Farewell Brunch - 27063 - Is Registered"],
    free: false
  },    

  { name: "Charlottesville City Bike Tour",
    columns: ["Charlottesville City Bike Tour - Is attending",
              "Charlottesville City Bike Tour - RW18 - Sunday Bike Tour Fee",
              "Fee Name (Charlottesville City Bike Tour - RW18 - Sunday Bike Tour Fee)",
              "Charlottesville City Bike Tour - RW18 - Sunday Bike Tour Fee - total_price_paid",
              "Charlottesville City Bike Tour - RW178 -  Bike Tour Height",
              "Charlottesville City Bike Tour - 26562 - Is Registered"],
    free: false
  }
]