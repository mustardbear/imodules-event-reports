# For reunion 2018
DIRECTORY = 'data/reunion19/'
SOURCE = "#{DIRECTORY}reunion_registrations.csv"
MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"


# Summable for Reuion 2018
SUMMABLE = [
  "RW19 - Friday Childcare",
  "RW19 - Friday Childcare - total_price_paid",
  "RW19 - Saturday Childcare",
  "RW19 - Saturday Childcare - total_price_paid",
  "RW19 - Oral History Project Style",
  "RW19 - Oral History Project Style - total_price_paid",
  "RW19 - Lunch and Learn",
  "RW19 - Lunch and Learn - total_price_paid",
  "RW19 - Friday Cocktail Reception",
  "RW19 - Friday Cocktail Reception - total_price_paid",
  "RW19 - 1959 Friday Night Class Event Transportation",
  "RW19 - 1959 Friday Night Class Event Transportation - total_price_paid",
  "RW19 - Friday 1964 Event Fee",
  "RW19 - Friday 1964 Event Fee - total_price_paid",
  "RW19 - 1964 Friday Night Class Event Transportation",
  "RW19 - 1964 Friday Night Class Event Transportation - total_price_paid",
  "RW19 - Friday AS Event Fee",
  "RW19 - Friday AS Event Fee - total_price_paid",
  "RW19 - Friday AS Transportation",
  "RW19 - Friday AS Transportation - total_price_paid",
  "RW19 - Friday 1969 Event Fee",
  "RW19 - Friday 1969 Event Fee - total_price_paid",
  "RW19 - Friday 1969 Event Transportation",
  "RW19 - Friday 1969 Event Transportation - total_price_paid",
  "RW19 - Friday 1974 Event Fee",
  "RW19 - Friday 1974 Event Fee - total_price_paid",
  "RW19 - Friday 1974 Event Transportation",
  "RW19 - Friday 1974 Event Transportation - total_price_paid",
  "RW19 - Friday 1979 Event Transportation",
  "RW19 - Friday 1979 Event Transportation - total_price_paid",
  "RW19 - Friday 1984 Event Fee",
  "RW19 - Friday 1984 Event Fee - total_price_paid",
  "RW19 - Friday 1989 Event Fee",
  "RW19 - Friday 1989 Event Fee - total_price_paid",
  "RW19 - Friday 1989 Event Transportation",
  "RW19 - Friday 1989 Event Transportation - total_price_paid",
  "RW19 - Friday 1994 Event Fee",
  "RW19 - Friday 1994 Event Fee - total_price_paid",
  "RW19 - Friday 1999 Event Fee",
  "RW19 - Friday 1999 Event Fee - total_price_paid",
  "RW19 - Friday 2004 Event Fee",
  "RW19 - Friday 2004 Event Fee - total_price_paid",
  "RW19 - Friday 2009 Event Fee",
  "RW19 - Friday 2009 Event Fee - total_price_paid",
  "RW19 - Friday 2009 EMBA Event Transportation",
  "RW19 - Friday 2009 EMBA Event Transportation - total_price_paid",
  "RW19 - Friday 2014 Event Fee",
  "RW19 - Friday 2014 Event Fee - total_price_paid",
  "RW19 - Friday 2014 EMBA Event Fee",
  "RW19 - Friday 2014 EMBA Event Fee - total_price_paid",
  "RW19 - Friday 2014 GEMBA Event Fee",
  "RW19 - Friday 2014 GEMBA Event Fee - total_price_paid",
  "RW19 - Friday 2014 GEMBA Event Transportation",
  "RW19 - Friday 2014 GEMBA Event Transportation - total_price_paid",
  "RW19 - Friday 2018 Event Fee",
  "RW19 - Friday 2018 Event Fee - total_price_paid",
  "RW19 - Friday 2018 EMBA Event Fee",
  "RW19 - Friday 2018 EMBA Event Fee - total_price_paid",
  "RW19 - Saturday Breakfast at Darden Fee",
  "RW19 - Saturday Breakfast at Darden Fee - total_price_paid",
  "RW19 - Saturday Darden Barbecue and Field Day Fee",
  "RW19 - Saturday Darden Barbecue and Field Day Fee - total_price_paid",
  "RW19 - Saturday Afternoon at the Vineyard Fee",
  "RW19 - Saturday Afternoon at the Vineyard Fee - total_price_paid",
  "RW19 - Saturday Afternoon at the Vineyard Transportation",
  "RW19 - Saturday Afternoon at the Vineyard Transportation - total_price_paid",
  "RW19 - Abbott Society Luncheon and Vineyard Fee",
  "RW19 - Abbott Society Luncheon and Vineyard Fee - total_price_paid",
  "RW19 - Abbott Society Afternoon at the Vineyard Transportation",
  "RW19 - Abbott Society Afternoon at the Vineyard Transportation - total_price_paid",
  "RW19 - Saturday Foxfield Fee",
  "RW19 - Saturday Foxfield Fee - total_price_paid",
  "RW19 - Foxfield Transportation",
  "RW19 - Foxfield Transportation - total_price_paid",
  "RW19 - Saturday Soiree",
  "RW19 - Saturday Soiree - total_price_paid",
  "RW19 - 1969 Saturday Dinner",
  "RW19 - 1969 Saturday Dinner - total_price_paid",
  "RW19 - Saturday 1969 Event Transportation",
  "RW19 - Saturday 1969 Event Transportation - total_price_paid",
  "RW19 - 1979 Saturday Dinner",
  "RW19 - 1979 Saturday Dinner - total_price_paid",
  "RW19 - Saturday 1979 Event Transportation",
  "RW19 - Saturday 1979 Event Transportation - total_price_paid",
  "RW19 - 1989 Saturday Dinner",
  "RW19 - 1989 Saturday Dinner - total_price_paid",
  "RW19 - Saturday 1989 Event Transportation",
  "RW19 - Saturday 1989 Event Transportation - total_price_paid",
  "RW19 - Sunday Farewell Brunch",
  "RW19 - Sunday Farewell Brunch - total_price_paid",
  "RW19 - Sunday Class of 1974 Farewell Brunch",
  "RW19 - Sunday Class of 1974 Farewell Brunch - total_price_paid",
  "RW19 - Sunday Bike Tour Fee",
  "RW19 - Sunday Bike Tour Fee - total_price_paid"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First_Name", output_column_name: "First Name" },
  last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
  pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
  maiden_name: { column_name: "maiden_name", output_column_name: "Former Name" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "RW19 Class Year",  setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? || value.eql?("0") ? "No Class Year" : value) }, output_column_name: "Class Year" },
  child_age: { column_name: "RW19 Child Age", output_column_name: "Child Age"},
  guest_of: { column_name: "Registered By", output_column_name: "Guest Of" },
  hickory_club: { column_name: "Hickory_Club_Member", output_column_name: "Hickory Club Member"},
  darden_society: { column_name: "Darden_Society_Member", output_column_name: "Darden Society Member"}
}

ACTIVITIES = [

  { name: "Reunion 2019",
    columns: ["Registrant - 29525 - Is Registered"],
    free: true
  },
  
  { name: "Child Care Information",
    columns: ["Child Care Information - Is attending"],
    free: true
  },
  
  { name: " Child Care",
    columns: ["Child Care If It Becomes Available - Is attending", 
              "RW19 - Friday Childcare - total_price_paid",
              "RW19 - Saturday Childcare",
              "RW19 - Saturday Childcare - total_price_paid",
              "RW19 - Child Birthdate",
              "RW19 - Childcare Form Sent",
              "RW19 - Childcare Form Received",
              "Child Care If It Becomes Available - 29533 - Is Registered"],
    free: false
  },
  
  { name: "Alumni Career Services Office Hours",
    columns: ["Alumni Career Services Office Hours - Is attending",
              "Alumni Career Services Office Hours - 29535 - Is Registered"],
    free: true
  },
  
  { name: "Join the Narrative UVA Oral History Project",
    columns: ["Join the Narrative The UVA Oral History Project - Is attending",
              "RW19 - Oral History Project Style",
              "RW19 - Oral History Subject",
              "Join the Narrative The UVA Oral History Project - 29978 - Is Registered"],
    free: true
    
  },
  
  { name: "Darden First Coffee",
    columns: ["Darden First Coffee - Is attending",
              "Darden First Coffee - 29538 - Is Registered"],
    free: true
  },
  
  { name: "Venture Capital After Darden",
    columns: ["Venture Capital After Darden - Is attending",
              "Venture Capital After Darden - 29539 - Is Registered"],
    free: true
  },
  
  { name: "Introducing the Future Year Scholars Program",
    columns: ["Introducing the Future Year Scholars Program - Is attending",
              "Introducing the Future Year Scholars Program - 29540 - Is Registered"],
    free: true
  },
  
  { name: "Inside Look at University of Virginia Undergraduate Admissions",
    columns: ["Inside Look at University of Virginia Undergraduate Admissions - Is attending",
              "Inside Look at University of Virginia Undergraduate Admissions - 29541 - Is Registered"],
    free: true
  },

  { name: "Lunch and Learn",
    columns: ["Lunch and Learn - Is attending",
              "RW19 - Lunch and Learn",
              "Fee Name (RW19 - Lunch and Learn)",
              "RW19 - Lunch and Learn - total_price_paid",
              "Lunch and Learn - 29542 - Is Registered"],
    free: false
  },  
  
  { name: "Alumni Career Services LinkedIn Headshot",
    columns: ["Alumni Career Services LinkedIn Headshot - Is attending",
              "Alumni Career Services LinkedIn Headshot - 29552 - Is Registered"],
    free: true
  },
  
  { name: "Afternoon Cases and Faculty Sessions",
    columns: ["Afternoon Cases and Faculty Sessions - Is attending",
              "Afternoon Cases and Faculty Sessions - 29553 - Is Registered"],
    free: true
  },
  
  { name: "Daniel Cho GEMBA 14 Memorial Gathering",
    columns: ["Daniel Cho GEMBA 14 Memorial Gathering - Is attending",
              "Daniel Cho GEMBA 14 Memorial Gathering - 29970 - Is Registered"],
    free: true
  },
  
  { name: "Welcome Cocktail Reception",
    columns: ["Welcome Cocktail Reception - Is attending",
              "RW19 - Friday Cocktail Reception",
              "Fee Name (RW19 - Friday Cocktail Reception)",
              "RW19 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception - 29554 - Is Registered"],
    free: false
  },  
  
  { name: "Class of 1974 Champagne Toast",
    columns: ["Class of 1974 Champagne Toast - Is attending",
              "Class of 1974 Champagne Toast - 29968 - Is Registered"],
    free: true
  },  
  
  { name: "1959 Friday Night Class Event",
    columns: ["1959 Friday Night Class Event - Is attending",
              "RW19 - 1959 Friday Night Class Event Transportation",
              "Fee Name (RW19 - 1959 Friday Night Class Event Transportation)",
              "RW19 - 1959 Friday Night Class Event Transportation - total_price_paid",
              "1959 Friday Night Class Event - 29555 - Is Registered"],
    free: true
  },  
  
  { name: "1964 Friday Night Class Event",
    columns: ["1964 Friday Night Class Event - Is attending",
              "RW19 - Friday 1964 Event Fee",
              "Fee Name (RW19 - Friday 1964 Event Fee)",
              "RW19 - Friday 1964 Event Fee - total_price_paid",
              "RW19 - 1964 Friday Night Class Event Transportation",
              "Fee Name (RW19 - 1964 Friday Night Class Event Transportation)",
              "RW19 - 1964 Friday Night Class Event Transportation - total_price_paid",
              "1964 Friday Night Class Event - 29556 - Is Registered"],
    free: true
  },  
  
  { name: "1957-1968 Abbott Society Friday Night Event",
    columns: ["RW19 - Friday AS Event Fee",
              "Fee Name (RW19 - Friday AS Event Fee)",
              "RW19 - Friday AS Event Fee - total_price_paid",
              "RW19 - Friday AS Transportation",
              "Fee Name (RW19 - Friday AS Transportation)",
              "RW19 - Friday AS Transportation - total_price_paid",
              "1957-1968 Abbott Society Friday Night Event - 29557 - Is Registered"],
    free: false
  },  
  
  { name: "1969 Friday Night Class Event",
    columns: ["1969 Friday Night Class Event - Is attending",
              "RW19 - Friday 1969 Event Fee",
              "Fee Name (RW19 - Friday 1969 Event Fee)",
              "RW19 - Friday 1969 Event Fee - total_price_paid",
              "RW19 - Friday 1969 Event Transportation",
              "Fee Name (RW19 - Friday 1969 Event Transportation)",
              "RW19 - Friday 1969 Event Transportation - total_price_paid",
              "1969 Friday Night Class Event - 29558 - Is Registered"],
    free: false
  },  
  
  { name: "1974 Friday Night Class Event",
    columns: ["1974 Friday Night Class Event - Is attending",
              "RW19 - Friday 1974 Event Fee",
              "Fee Name (RW19 - Friday 1974 Event Fee)",
              "RW19 - Friday 1974 Event Fee - total_price_paid",
              "RW19 - Friday 1974 Event Transportation",
              "Fee Name (RW19 - Friday 1974 Event Transportation)",
              "RW19 - Friday 1974 Event Transportation - total_price_paid",
              "1974 Friday Night Class Event - 29559 - Is Registered"],
    free: false
  },  
  
  { name: "1979 Friday Night Class Event",
    columns: ["1979 Friday Night Class Event - Is attending",
              "RW19 - Friday 1979 Event Transportation",
              "Fee Name (RW19 - Friday 1979 Event Transportation)",
              "RW19 - Friday 1979 Event Transportation - total_price_paid",
              "1979 Friday Night Class Event - 29560 - Is Registered"],
    free: true
  },  
  
  { name: "1984 Friday Night Class Event",
    columns: ["1984 Friday Night Class Event - Is attending",
              "RW19 - Friday 1984 Event Fee",
              "Fee Name (RW19 - Friday 1984 Event Fee)",
              "RW19 - Friday 1984 Event Fee - total_price_paid",
              "1984 Friday Night Class Event - 29561 - Is Registered"],
    free: false
  },  
  
  { name: "1989 Friday Night Class Event",
    columns: ["1989 Friday Night Class Event - Is attending",
              "RW19 - Friday 1989 Event Fee",
              "Fee Name (RW19 - Friday 1989 Event Fee)",
              "RW19 - Friday 1989 Event Fee - total_price_paid",
              "RW19 - Friday 1989 Event Transportation",
              "Fee Name (RW19 - Friday 1989 Event Transportation)",
              "RW19 - Friday 1989 Event Transportation - total_price_paid",
              "1989 Friday Night Class Event - 29562 - Is Registered"],
    free: false
  },    

  { name: "1994 Friday Night Class Event",
    columns: ["1994 Friday Night Class Event - Is attending",
              "RW19 - Friday 1994 Event Fee",
              "Fee Name (RW19 - Friday 1994 Event Fee)",
              "RW19 - Friday 1994 Event Fee - total_price_paid",
              "1994 Friday Night Class Event - 29563 - Is Registered"],
    free: false
  },    

  { name: "1999 Friday Night Class Event",
    columns: ["1999 Friday Night Class Event - Is attending",
              "RW19 - Friday 1999 Event Fee",
              "Fee Name (RW19 - Friday 1999 Event Fee)",
              "RW19 - Friday 1999 Event Fee - total_price_paid",
              "1999 Friday Night Class Event - 29564 - Is Registered"],
    free: false
  },    

  { name: "2004 Friday Night Class Event",
    columns: ["2004 Friday Night Class Event - Is attending",
              "RW19 - Friday 2004 Event Fee",
              "Fee Name (RW19 - Friday 2004 Event Fee)",
              "RW19 - Friday 2004 Event Fee - total_price_paid",
              "2004 Friday Night Class Event - 29565 - Is Registered"],
    free: false
  },    

  { name: "2009 Friday Night Class Event",
    columns: ["2009 Friday Night Class Event - Is attending",
              "RW19 - Friday 2009 Event Fee",
              "Fee Name (RW19 - Friday 2009 Event Fee)",
              "RW19 - Friday 2009 Event Fee - total_price_paid",
              "2009 Friday Night Class Event - 29566 - Is Registered"],
    free: false
  },    

  { name: "2009 EMBA Friday Night Class Event",
    columns: ["2009 EMBA Friday Night Class Event - Is attending",
              "RW19 - Friday 2009 EMBA Event Transportation",
              "Fee Name (RW19 - Friday 2009 EMBA Event Transportation)",
              "RW19 - Friday 2009 EMBA Event Transportation - total_price_paid",
              "2009 EMBA Friday Night Class Event - 29567 - Is Registered"],
    free: true
  },    

  { name: "2014 Friday Night Class Event",
    columns: ["2014 Friday Night Class Event - Is attending",
              "RW19 - Friday 2014 Event Fee",
              "Fee Name (RW19 - Friday 2014 Event Fee)",
              "RW19 - Friday 2014 Event Fee - total_price_paid",
              "2014 Friday Night Class Event - 29568 - Is Registered"],
    free: false
  },    

  { name: "2014 EMBA Friday Night Class Event",
    columns: ["2014 EMBA Friday Night Class Event - Is attending",
              "RW19 - Friday 2014 EMBA Event Fee",
              "Fee Name (RW19 - Friday 2014 EMBA Event Fee)",
              "RW19 - Friday 2014 EMBA Event Fee - total_price_paid",
              "2014 EMBA Friday Night Class Event - 29569 - Is Registered"],
    free: false
  },    
  
  { name: "2014 GEMBA Friday Night Class Event",
    columns: ["2014 GEMBA Friday Night Class Event - Is attending",
              "RW19 - Friday 2014 GEMBA Event Fee",
              "Fee Name (RW19 - Friday 2014 GEMBA Event Fee)",
              "RW19 - Friday 2014 GEMBA Event Fee - total_price_paid",
              "RW19 - Friday 2014 GEMBA Event Transportation",
              "Fee Name (RW19 - Friday 2014 GEMBA Event Transportation)",
              "RW19 - Friday 2014 GEMBA Event Transportation - total_price_paid",
              "2014 GEMBA Friday Night Class Event - 29570 - Is Registered"],
    free: false
  },     
  
  { name: "2018 Friday Night Class Event",
    columns: ["2018 Friday Night Class Event - Is attending",
              "RW19 - Friday 2018 Event Fee",
              "Fee Name (RW19 - Friday 2018 Event Fee)",
              "RW19 - Friday 2018 Event Fee - total_price_paid",
              "2018 Friday Night Class Event - 29571 - Is Registered"],
    free: false
  },
  
  { name: "2018 EMBA Friday Night Class Event",
    columns: ["2018 EMBA Friday Night Class Event - Is attending",
              "RW19 - Friday 2018 EMBA Event Fee",
              "Fee Name (RW19 - Friday 2018 EMBA Event Fee)",
              "RW19 - Friday 2018 EMBA Event Fee - total_price_paid",
              "2018 EMBA Friday Night Class Event - 29576 - Is Registered"],
    free: false
  },  
  
  { name: "Flow Yoga Class at FlyDog Yoga",
    columns: ["Flow Yoga Class at FlyDog Yoga - Is attending",
              "Flow Yoga Class at FlyDog Yoga - 29579 - Is Registered"],
    free: true
  },     

  { name: "Darden Breakfast and Coffee",
    columns: ["Darden Breakfast and Coffee - Is attending",
              "RW19 - Saturday Breakfast at Darden Fee",
              "Fee Name (RW19 - Saturday Breakfast at Darden Fee)",
              "RW19 - Saturday Breakfast at Darden Fee - total_price_paid",
              "Darden Breakfast and Coffee - 29580 - Is Registered"],
    free: false
  },    

  { name: "The Encore Case Finding Purposeful Work Later in your Career",
    columns: ["The Encore Case Finding Purposeful Work Later in your Career - Is attending",
              "The Encore Case Finding Purposeful Work Later in your Career - 29581 - Is Registered"],
    free: true
  },     

  { name: "Deans State of the School Address",
    columns: ["Deans State of the School Address - Is attending",
              "Deans State of the School Address - 29583 - Is Registered"],
    free: true
  },     

  { name: "Darden Picnic and Field Day",
    columns: ["Option 1 Darden Picnic and Field Day - Is attending",
              "RW19 - Saturday Darden Barbecue and Field Day Fee",
              "Fee Name (RW19 - Saturday Darden Barbecue and Field Day Fee)",
              "RW19 - Saturday Darden Barbecue and Field Day Fee - total_price_paid",
              "Option 1 Darden Picnic and Field Day - 29585 - Is Registered"],
    free: false
  },
  
  { name: "Abbott Society Luncheon",
    columns: ["Option 1 Abbott Society Luncheon - Is attending",
              "Option 1 Abbott Society Luncheon - 30107 - Is Registered"],
    free: true
  },    
  
  { name: "Darden Picnic and Afternoon at the Vineyard",
    columns: ["Option 2 Darden Picnic and Afternoon at the Vineyard - Is attending",
              "RW19 - Saturday Afternoon at the Vineyard Fee",
              "Fee Name (RW19 - Saturday Afternoon at the Vineyard Fee)",
              "RW19 - Saturday Afternoon at the Vineyard Fee - total_price_paid",
              "RW19 - Saturday Afternoon at the Vineyard Transportation",
              "Fee Name (RW19 - Saturday Afternoon at the Vineyard Transportation)",
              "RW19 - Saturday Afternoon at the Vineyard Transportation - total_price_paid",
              "Option 2 Darden Picnic and Afternoon at the Vineyard - 29586 - Is Registered"],
    free: false
  },    

  { name: "Abbott Society Luncheon and Afternoon at the Vineyard",
    columns: ["Option 2 Abbott Society Luncheon and Afternoon at the Vineyard - Is attending",
              "RW19 - Abbott Society Luncheon and Vineyard Fee",
              "Fee Name (RW19 - Abbott Society Luncheon and Vineyard Fee)",
              "RW19 - Abbott Society Luncheon and Vineyard Fee - total_price_paid",
              "RW19 - Abbott Society Afternoon at the Vineyard Transportation",
              "Fee Name (RW19 - Abbott Society Afternoon at the Vineyard Transportation)",
              "RW19 - Abbott Society Afternoon at the Vineyard Transportation - total_price_paid",
              "Option 2 Abbott Society Luncheon and Afternoon at the Vineyard - 30108 - Is Registered"],
    free: false
  },    

  { name: "Foxfield Spring Races",
    columns: ["Option 3 Foxfield Spring Races - Is attending",
              "RW19 - Saturday Foxfield Fee",
              "Fee Name (RW19 - Saturday Foxfield Fee)",
              "RW19 - Saturday Foxfield Fee - total_price_paid",
              "RW19 - Foxfield Transportation",
              "Fee Name (RW19 - Foxfield Transportation)",
              "RW19 - Foxfield Transportation - total_price_paid",
              "Option 3 Foxfield Spring Races - 29587 - Is Registered"],
    free: false
  },    

  { name: "Darden Society and Cornerstone Society Cocktail Reception",
    columns: ["Darden Society and Cornerstone Society Cocktail Reception - Is attending",
              "Darden Society and Cornerstone Society Cocktail Reception - 29588 - Is Registered"],
    free: true
  },     

  { name: "Class Dinners and Saturday Night Soire",
    columns: ["Class Dinners and Saturday Night Soire - Is attending",
              "RW19 - Saturday Soiree",
              "Fee Name (RW19 - Saturday Soiree)",
              "RW19 - Saturday Soiree - total_price_paid",
              "Class Dinners and Saturday Night Soire - 29589 - Is Registered"],
    free: false
  },    

  { name: "Class of 1969 Saturday Night Dinner",
    columns: ["Class of 1969 Saturday Night Dinner - Is attending",
              "RW19 - 1969 Saturday Dinner",
              "Fee Name (RW19 - 1969 Saturday Dinner)",
              "RW19 - 1969 Saturday Dinner - total_price_paid",
              "RW19 - Saturday 1969 Event Transportation",
              "Fee Name (RW19 - Saturday 1969 Event Transportation)",
              "RW19 - Saturday 1969 Event Transportation - total_price_paid",
              "Class of 1969 Saturday Night Dinner - 29974 - Is Registered"],
    free: false
  },    

  { name: "Class of 1979 Saturday Night Dinner",
    columns: ["Class of 1979 Saturday Night Dinner - Is attending",
              "RW19 - 1979 Saturday Dinner",
              "Fee Name (RW19 - 1979 Saturday Dinner)",
              "RW19 - 1979 Saturday Dinner - total_price_paid",
              "RW19 - Saturday 1979 Event Transportation",
              "Fee Name (RW19 - Saturday 1979 Event Transportation)",
              "RW19 - Saturday 1979 Event Transportation - total_price_paid",
              "Class of 1979 Saturday Night Dinner - 29975 - Is Registered"],
    free: false
  },    

  { name: "Class of 1989 Saturday Night Dinner",
    columns: ["Class of 1989 Saturday Night Dinner - Is attending",
              "RW19 - 1989 Saturday Dinner",
              "Fee Name (RW19 - 1989 Saturday Dinner)",
              "RW19 - 1989 Saturday Dinner - total_price_paid",
              "RW19 - Saturday 1989 Event Transportation",
              "Fee Name (RW19 - Saturday 1989 Event Transportation)",
              "RW19 - Saturday 1989 Event Transportation - total_price_paid",
              "Class of 1989 Saturday Night Dinner - 29976 - Is Registered"],
    free: false
  },    

  { name: "Farewell Brunch at Darden",
    columns: ["Farewell Brunch at Darden - Is attending",
              "RW19 - Sunday Farewell Brunch",
              "Fee Name (RW19 - Sunday Farewell Brunch)",
              "RW19 - Sunday Farewell Brunch - total_price_paid",
              "Farewell Brunch at Darden - 29591 - Is Registered"],
    free: false
  },    

  { name: "Class of 1974 Farewell Brunch",
    columns: ["Class of 1974 Farewell Brunch - Is attending",
              "RW19 - Sunday Class of 1974 Farewell Brunch",
              "Fee Name (RW19 - Sunday Class of 1974 Farewell Brunch)",
              "RW19 - Sunday Class of 1974 Farewell Brunch - total_price_paid",
              "Class of 1974 Farewell Brunch - 29969 - Is Registered"],
    free: false
  },     

  { name: "Charlottesville City Bike Tour",
    columns: ["Charlottesville City Bike Tour - Is attending",
              "RW19 - Sunday Bike Tour Fee",
              "Fee Name (RW19 - Sunday Bike Tour Fee)",
              "RW19 - Sunday Bike Tour Fee - total_price_paid",
              "Charlottesville City Bike Tour - RW19 -  Bike Tour Height",
              "Charlottesville City Bike Tour - 29592 - Is Registered"],
    free: false
  },
  
  { name: "Visit Dardens New Sands Family Grounds in the Washington D.C. Area",
    columns: ["Visit Dardens New Sands Family Grounds in the Washington D.C. Area - Is attending",
              "Visit Dardens New Sands Family Grounds in the Washington D.C. Area - 29979 - Is Registered"],
    free: true
  },
  
  { name: "Career Development Student Engagement",
    columns: ["Career Development Student Engagement - Is attending",
              "employer",
              "job_title",
              "business_street_1",
              "business_street_2",
              "business_city",
              "business_state",
              "business_zip",
              "business_country",
              "Job Function",
              "industry",
              "RW19 - CDC International Opportunities",
              "Career Development Student Engagement - 29977 - Is Registered"],
    free: true
  }
]