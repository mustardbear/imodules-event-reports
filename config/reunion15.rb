  # For reunion 2015
  DIRECTORY = 'data/reunion15/'
  SOURCE = "#{DIRECTORY}reunion_registrations.csv"
  MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"

  # Summable for Reuion 2014
  SUMMABLE = [
    "Faculty Seminars and Lunch - RW15 - Friday Faculty Seminars and Lunch",
    "Faculty Seminars and Lunch - RW15 - Friday Faculty Seminars and Lunch - total_price_paid",
    "Welcome Cocktail Reception and Venture Fair - RW15 - Friday Cocktail Reception",
    "Welcome Cocktail Reception and Venture Fair - RW15 - Friday Cocktail Reception - total_price_paid",
    "1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Fee",
    "1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Fee - total_p",
    "1965 Friday Night Class Event - RW15 - Friday 1965 Class Event Fee",
    "1965 Friday Night Class Event - RW15 - Friday 1965 Class Event Fee - total_price_paid",
    "1970 Friday Night Class Event - RW15 - Friday 1970 Event Fee",
    "1970 Friday Night Class Event - RW15 - Friday 1970 Event Fee - total_price_paid",
    "1975 Friday Night Class Event - RW15 - Friday 1975 Event Fee",
    "1975 Friday Night Class Event - RW15 - Friday 1975 Event Fee - total_price_paid",
    "1980 Friday Night Class Event - RW15 - Friday 1980 Event Fee",
    "1980 Friday Night Class Event - RW15 - Friday 1980 Event Fee - total_price_paid",
    "1985 Friday Night Class Event - RW15 - Friday 1985 Event Fee",
    "1985 Friday Night Class Event - RW15 - Friday 1985 Event Fee - total_price_paid",
    "1995 Friday Night Class Event - RW15 - Friday 1995 Event Fee",
    "1995 Friday Night Class Event - RW15 - Friday 1995 Event Fee - total_price_paid",
    "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee",
    "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee - total_price_paid",
    "2005 Friday Night Class Event - RW15 - Friday 2005 Event Fee",
    "2005 Friday Night Class Event - RW15 - Friday 2005 Event Fee - total_price_paid",
    "2010 Friday Night Class Event - RW15 - Friday 2010 Event Fee",
    "2010 Friday Night Class Event - RW15 - Friday 2010 Event Fee - total_price_paid",
    "2010 EMBA Friday Night Class Event - RW15 - Friday 2010 EMBA Event Fee",
    "2010 EMBA Friday Night Class Event - RW15 - Friday 2010 EMBA Event Fee - total_price_paid",
    "2014 Friday Night Class Event - RW15 - Friday 2014 Event Fee",
    "2014 Friday Night Class Event - RW15 - Friday 2014 Event Fee - total_price_paid",
    "2014 EMBA Friday Night Class Event - RW15 - Friday 2014 EMBA Event Fee",
    "2014 EMBA Friday Night Class Event - RW15 - Friday 2014 EMBA Event Fee - total_price_paid",
    "2014 GEMBA Friday Night Class Event - RW15 - Friday 2014 GEMBA Event Fee",
    "2014 GEMBA Friday Night Class Event - RW15 - Friday 2014 GEMBA Event Fee - total_price_paid",
    "Breakfast at Darden - RW15 - Saturday Breakfast at Darden Fee",
    "Breakfast at Darden - RW15 - Saturday Breakfast at Darden Fee - total_price_paid",
    "Option 1 Activity Darden Barbecue and Field Day - RW15 - Saturday Darden Barbecue and Field Day Fee",
    "Option 1 Activity Darden Barbecue and Field Day - RW15 - Saturday Darden Barbecue and Field Day Fee",
    "Add On for Option 1 Monticello Tour - RW15 - Saturday Monitcello Tour Fee",
    "Add On for Option 1 Monticello Tour - RW15 - Saturday Monitcello Tour Fee - total_price_paid",
    "Option 2 Foxfield Spring Races - RW15 - Saturday Foxfield Fee",
    "Option 2 Foxfield Spring Races - RW15 - Saturday Foxfield Fee - total_price_paid",
    "Option 2 Foxfield Spring Races - RW15 - Foxfield Transportation",
    "Option 2 Foxfield Spring Races - RW15 - Foxfield Transportation - total_price_paid",
    "Option 3 Wine Tour to Veritas and King Family Vineyards - RW15 - Saturday Wine Tour Fee",
    "Option 3 Wine Tour to Veritas and King Family Vineyards - RW15 - Saturday Wine Tour Fee - total_pric",
    "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala",
    "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala - total_price_paid",
    "Farewell Brunch at Darden - RW15 - Sunday Farewell Brunch at Darden",
    "Farewell Brunch at Darden - RW15 - Sunday Farewell Brunch at Darden - total_price_paid",
    "Class of 2014 Farewell Bagel Brunch - RW15 - Sunday Class of 2014 Farewell Bagel Brunch",
    "Class of 2014 Farewell Bagel Brunch - RW15 - Sunday Class of 2014 Farewell Bagel Brunch - total_pric",
    "Class of 2005 Farewell Bagel Brunch  - RW15 - Sunday Class of 2005 Farewell Bagel Brunch Fee",
    "Class of 2005 Farewell Bagel Brunch  - RW15 - Sunday Class of 2005 Farewell Bagel Brunch Fee - total",
    "Reunion 2015 - RW15 Class Gift",
    "Reunion 2015 - RW15 Pledge Amount",
    "Reunion 2015 - RW15 Pledge Total Amount"
  ]

  # You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
  PERSON_DEFINITION = {
    alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
    first_name: { column_name: "First_Name", output_column_name: "First Name" },
    last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
    pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
    maiden_name: { column_name: "maiden_name", output_column_name: "Former Name"  },
    email_address: { column_name: "email_address", output_column_name: "Email" },
    class_year: { column_name: "Reunion 2015 - RW15 Class Year" , setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? ? "No Class Year" : value) }, output_column_name: "Class Year" },
    guest_of: { column_name: "Guest of", output_column_name: "Guest Of" }
  }


  ACTIVITIES = [
  
    { name: "Reunion 2015",
      columns: ["Registrant - 9822 - Is Registered"]
    },
  
    { name: "Complimentary Child Care",
      columns: ["Complimentary Child Care - Is attending", 
                "Complimentary Child Care - RW15 - Childcare Days", 
                "Complimentary Child Care - RW15 - Child Birthdate", 
                "Complimentary Child Care - 9940 - Is Registered"]
    },
              
    { name: "Darden School Grounds Tour",
      columns: ["Darden School Grounds Tour - Is attending",
                "Darden School Grounds Tour - 9842 - Is Registered"]
    },
  
    { name: "First Coffee with International Students",
      columns: ["First Coffee with International Students - Is attending",
                "First Coffee with International Students - RW15 - Home Country",
                "First Coffee with International Students - 9843 - Is Registered"]
    },
  
    { name: "Hickory Club Members Luncheon and Panel Discussion",
      columns: ["Hickory Club Members Luncheon and Panel Discussion Darden 1955 - 2015 - Is attending",
                "Hickory Club Members Luncheon and Panel Discussion Darden: 1955 - 2015 - 9859 - Is Registered"]
    },
  
    { name: "Grab and Go Lunch and Faculty Seminars",
      columns: ["Faculty Seminars and Lunch - Is attending",
                "Faculty Seminars and Lunch - RW15 - Friday Faculty Seminars and Lunch",
                "Fee Name (Faculty Seminars and Lunch - RW15 - Friday Faculty Seminars and Lunch)",
                "Faculty Seminars and Lunch - RW15 - Friday Faculty Seminars and Lunch - total_price_paid",
                "Faculty Seminars and Lunch - 9861 - Is Registered"]
    },
  
  
    { name: "Welcome Cocktail Reception and Venture Fair",
      columns: ["Welcome Cocktail Reception and Venture Fair - Is attending",
                "Welcome Cocktail Reception and Venture Fair - RW15 - Friday Cocktail Reception",
                "Fee Name (Welcome Cocktail Reception and Venture Fair - RW15 - Friday Cocktail Reception)",
                "Welcome Cocktail Reception and Venture Fair - RW15 - Friday Cocktail Reception - total_price_paid",
                "Welcome Cocktail Reception and Venture Fair - 9876 - Is Registered"]
    },
  
    { name: "1957 - 64 Abbott Society Friday Night Class Event",
      columns: ["1957 - 64 Abbott Society Friday Night Class Event - Is attending",
                "1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Fee",
                "Fee Name (1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Fee)",
                "1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Fee - total_p",
                "1957 - 64 Abbott Society Friday Night Class Event - RW15 - Friday Abbott Society Event Transportatio",
                "1957 - 64 Abbott Society Friday Night Class Event - 9877 - Is Registered"]
    },
  
    { name: "1965 Friday Night Class Event",
      columns: ["1965 Friday Night Class Event - Is attending",
                "1965 Friday Night Class Event - RW15 - Friday 1965 Class Event Fee",
                "Fee Name (1965 Friday Night Class Event - RW15 - Friday 1965 Class Event Fee)",
                "1965 Friday Night Class Event - RW15 - Friday 1965 Class Event Fee - total_price_paid",
                "1965 Friday Night Class Event - RW15 - Friday 1965 Event Transportation",
                "1965 Friday Night Class Event - 9886 - Is Registered"]
    },
  
    { name: "1970 Friday Night Class Event",
      columns: ["1970 Friday Night Class Event - Is attending",
                "1970 Friday Night Class Event - RW15 - Friday 1970 Event Fee",
                "Fee Name (1970 Friday Night Class Event - RW15 - Friday 1970 Event Fee)",
                "1970 Friday Night Class Event - RW15 - Friday 1970 Event Fee - total_price_paid",
                "1970 Friday Night Class Event - RW15 - Friday 1970 Event Transportation",
                "1970 Friday Night Class Event - 9887 - Is Registered"]
    },
  
    { name: "1975 Friday Night Class Event",
      columns: ["1975 Friday Night Class Event - Is attending",
                "1975 Friday Night Class Event - RW15 - Friday 1975 Event Fee",
                "Fee Name (1975 Friday Night Class Event - RW15 - Friday 1975 Event Fee)",
                "1975 Friday Night Class Event - RW15 - Friday 1975 Event Fee - total_price_paid",
                "1975 Friday Night Class Event - RW15 - Friday 1975 Event Transportation",
                "1975 Friday Night Class Event - 9888 - Is Registered"]
    },
  
    { name: "1980 Friday Night Class Event",
      columns: ["1980 Friday Night Class Event - Is attending",
                "1980 Friday Night Class Event - RW15 - Friday 1980 Event Fee",
                "Fee Name (1980 Friday Night Class Event - RW15 - Friday 1980 Event Fee)",
                "1980 Friday Night Class Event - RW15 - Friday 1980 Event Fee - total_price_paid",
                "1980 Friday Night Class Event - 9889 - Is Registered"]
    },
  
    { name: "1985 Friday Night Class Event",
      columns: ["1985 Friday Night Class Event - Is attending",
                "1985 Friday Night Class Event - RW15 - Friday 1985 Event Fee",
                "Fee Name (1985 Friday Night Class Event - RW15 - Friday 1985 Event Fee)",
                "1985 Friday Night Class Event - RW15 - Friday 1985 Event Fee - total_price_paid",
                "1985 Friday Night Class Event - 9890 - Is Registered"]
    },
  
    { name: "1990 Friday Night Class Event",
      columns: ["1990 Friday Night Class Event - Is attending",
                "1990 Friday Night Class Event - 9891 - Is Registered"]
    },
  
    { name: "1995 Friday Night Class Event",
      columns: ["1995 Friday Night Class Event - Is attending",
                "1995 Friday Night Class Event - RW15 - Friday 1995 Event Fee",
                "Fee Name (1995 Friday Night Class Event - RW15 - Friday 1995 Event Fee)",
                "1995 Friday Night Class Event - RW15 - Friday 1995 Event Fee - total_price_paid",
                "1995 Friday Night Class Event - 9892 - Is Registered"]
    },
  
    { name: "2000 Friday Night Class Event",
      columns: ["2000 Friday Night Class Event - Is attending",
                "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee",
                "Fee Name (2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee)",
                "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee - total_price_paid",
                "2000 Friday Night Class Event - 9893 - Is Registered"]
    },
  
    { name: "2005 Friday Night Class Event",
      columns: ["2005 Friday Night Class Event - Is attending",
                "2005 Friday Night Class Event - RW15 - Friday 2005 Event Fee",
                "Fee Name (2005 Friday Night Class Event - RW15 - Friday 2005 Event Fee)",
                "2005 Friday Night Class Event - RW15 - Friday 2005 Event Fee - total_price_paid",
                "2005 Friday Night Class Event - 9894 - Is Registered"]
    },
  
    { name: "2010 Friday Night Class Event",
      columns: ["2010 Friday Night Class Event - Is attending",
                "2010 Friday Night Class Event - RW15 - Friday 2010 Event Fee",
                "Fee Name (2010 Friday Night Class Event - RW15 - Friday 2010 Event Fee)",
                "2010 Friday Night Class Event - RW15 - Friday 2010 Event Fee - total_price_paid",
                "2010 Friday Night Class Event - 9895 - Is Registered"]
    },
  
    { name: "2010 EMBA Friday Night Class Event",
      columns: ["2010 EMBA Friday Night Class Event - Is attending",
                "2010 EMBA Friday Night Class Event - RW15 - Friday 2010 EMBA Event Fee",
                "Fee Name (2010 EMBA Friday Night Class Event - RW15 - Friday 2010 EMBA Event Fee)",
                "2010 EMBA Friday Night Class Event - RW15 - Friday 2010 EMBA Event Fee - total_price_paid",
                "2010 EMBA Friday Night Class Event - 9896 - Is Registered"]
    },
  
    { name: "2014 Friday Night Class Event",
      columns: ["2014 Friday Night Class Event - Is attending",
                "2014 Friday Night Class Event - RW15 - Friday 2014 Event Fee",
                "Fee Name (2014 Friday Night Class Event - RW15 - Friday 2014 Event Fee)",
                "2014 Friday Night Class Event - RW15 - Friday 2014 Event Fee - total_price_paid",
                "2014 Friday Night Class Event - 9897 - Is Registered"]
    },
  
    { name: "2014 EMBA Friday Night Class Event",
      columns: ["2014 EMBA Friday Night Class Event - Is attending",
                "2014 EMBA Friday Night Class Event - RW15 - Friday 2014 EMBA Event Fee",
                "Fee Name (2014 EMBA Friday Night Class Event - RW15 - Friday 2014 EMBA Event Fee)",
                "2014 EMBA Friday Night Class Event - RW15 - Friday 2014 EMBA Event Fee - total_price_paid",
                "2014 EMBA Friday Night Class Event - 9898 - Is Registered"]
    },
  
    { name: "2014 GEMBA Friday Night Class Event",
      columns: ["2014 GEMBA Friday Night Class Event - Is attending",
                "2014 GEMBA Friday Night Class Event - RW15 - Friday 2014 GEMBA Event Fee",
                "Fee Name (2014 GEMBA Friday Night Class Event - RW15 - Friday 2014 GEMBA Event Fee)",
                "2014 GEMBA Friday Night Class Event - RW15 - Friday 2014 GEMBA Event Fee - total_price_paid",
                "2014 GEMBA Friday Night Class Event - 9904 - Is Registered"]
    },
  
    { name: "Yoga Class",
      columns: ["Yoga Class - Is attending",
                "Yoga Class - 9909 - Is Registered"]
    },
  
    { name: "Breakfast at Darden",
      columns: ["Breakfast at Darden - Is attending",
                "Breakfast at Darden - RW15 - Saturday Breakfast at Darden Fee",
                "Fee Name (Breakfast at Darden - RW15 - Saturday Breakfast at Darden Fee)",
                "Breakfast at Darden - RW15 - Saturday Breakfast at Darden Fee - total_price_paid",
                "Breakfast at Darden - 9922 - Is Registered"]
    },
  
    { name: "Darden Society Champagne Breakfast",
      columns: ["Darden Society Champagne Breakfast - Is attending",
                "Darden Society* Champagne Breakfast - 9923 - Is Registered"]
    },
  
    { name: "UVA Admissions Session",
      columns: ["UVA Admissions Session - Is attending",
                "UVA Admissions Session - 9924 - Is Registered"]
    },
  
    { name: "Professional Image in the Age of Social Media",
      columns: ["Professional Image in the Age of Social Media - Is attending",
                "Professional Image in the Age of Social Media - 9925 - Is Registered"]
    },
  
    { name: "Deans State of the School Address",
      columns: ["Deans State of the School Address - Is attending",
                "DeanÂs State of the School Address - 9926 - Is Registered"]
    },
  
    { name: "Darden Barbecue and Field Day",
      columns: ["Option 1 Activity Darden Barbecue and Field Day - Is attending",
                "Option 1 Activity Darden Barbecue and Field Day - RW15 - Saturday Darden Barbecue and Field Day Fee",
                "Fee Name (Option 1 Activity Darden Barbecue and Field Day - RW15 - Saturday Darden Barbecue and Field Day Fee)",
                "Option 1 Activity Darden Barbecue and Field Day - RW15 - Saturday Darden Barbecue and Field Day Fee ",
                "Option 1 Activity: Darden Barbecue and Field Day - 9927 - Is Registered"]
    },
  
    { name: "Monticello Tour",
      columns: ["Add On for Option 1 Monticello Tour - Is attending",
                "Add On for Option 1 Monticello Tour - RW15 - Saturday Monitcello Tour Fee",
                "Fee Name (Add On for Option 1 Monticello Tour - RW15 - Saturday Monitcello Tour Fee)",
                "Add On for Option 1 Monticello Tour - RW15 - Saturday Monitcello Tour Fee - total_price_paid",
                "Add On for Option 1 Monticello Tour - RW15 - Monticello Tour Transportation",
                "Add On for Option 1: Monticello Tour - 9928 - Is Registered"]
    },
  
    { name: "Foxfield Spring Races",
      columns: ["Option 2: Foxfield Spring Races - Is attending",
                "Option 2 Foxfield Spring Races - RW15 - Saturday Foxfield Fee",
                "Option 2 Foxfield Spring Races - RW15 - Saturday Foxfield Fee - total_price_paid",
                "Option 2 Foxfield Spring Races - RW15 - Foxfield Transportation",
                "Fee Name (Option 2 Foxfield Spring Races - RW15 - Foxfield Transportation)",
                "Option 2 Foxfield Spring Races - RW15 - Foxfield Transportation - total_price_paid",
                "Option 2: Foxfield Spring Races - 9929 - Is Registered"]
    },
  
    { name: "Wine Tour to Veritas and King Family Vineyards",
      columns: ["Option 3 Wine Tour to Veritas and King Family Vineyards - Is attending",
                "Option 3 Wine Tour to Veritas and King Family Vineyards - RW15 - Saturday Wine Tour Fee",
                "Fee Name (Option 3 Wine Tour to Veritas and King Family Vineyards - RW15 - Saturday Wine Tour Fee)",
                "Option 3 Wine Tour to Veritas and King Family Vineyards - RW15 - Saturday Wine Tour Fee - total_pric",
                "Option 3: Wine Tour to Veritas and King Family Vineyards - 9930 - Is Registered"]
    },
  
    { name: "Lakeside Lunch for Class of 1975",
      columns: ["Option 4 Activity Lakeside Lunch for the Class of 1975 - Is attending",
                "Option 4 Activity: Lakeside Lunch for the Class of 1975 - 9931 - Is Registered"]
    },
  
    { name: "Evening Cocktails, Dinner & Gala",
      columns: ["Evening Cocktails Dinner  Gala - Is attending",
                "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala",
                "Fee Name (Evening Cocktails Dinner  Gala - RW15 - Saturday Gala)",
                "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala - total_price_paid",
                "Evening Cocktails, Dinner & Gala - 10036 - Is Registered"]
    },
  
    { name: "Farewell Brunch at Darden",
      columns: ["Farewell Brunch at Darden - Is attending",
                "Farewell Brunch at Darden - RW15 - Sunday Farewell Brunch at Darden",
                "Fee Name (Farewell Brunch at Darden - RW15 - Sunday Farewell Brunch at Darden)",
                "Farewell Brunch at Darden - RW15 - Sunday Farewell Brunch at Darden - total_price_paid",
                "Farewell Brunch at Darden - 9932 - Is Registered"]
    },
  
    { name: "Class of 2014 Farewell Bagel Brunch",
      columns: ["Class of 2014 Farewell Bagel Brunch - Is attending",
                "Class of 2014 Farewell Bagel Brunch - RW15 - Sunday Class of 2014 Farewell Bagel Brunch",
                "Fee Name (Class of 2014 Farewell Bagel Brunch - RW15 - Sunday Class of 2014 Farewell Bagel Brunch)",
                "Class of 2014 Farewell Bagel Brunch - RW15 - Sunday Class of 2014 Farewell Bagel Brunch - total_pric",
                "Class of 2014 Farewell Bagel Brunch - 9933 - Is Registered"]
    },
  
    { name: "Class of 2005 Farewell Bagel Brunch",
      columns: ["Class of 2005 Farewell Bagel Brunch  - Is attending",
                "Class of 2005 Farewell Bagel Brunch  - RW15 - Sunday Class of 2005 Farewell Bagel Brunch Fee",
                "Fee Name (Class of 2005 Farewell Bagel Brunch  - RW15 - Sunday Class of 2005 Farewell Bagel Brunch Fee)",
                "Class of 2005 Farewell Bagel Brunch  - RW15 - Sunday Class of 2005 Farewell Bagel Brunch Fee - total",
                "Class of 2005 Farewell Bagel Brunch  - 9939 - Is Registered"]
    },
  
    { name: "Class of 1975 Lakeside Open House",
      columns: ["Class of 1975 Lakeside Open House - Is attending",
                "Class of 1975 Lakeside Open House - 11104 - Is Registered"]
    }
  ]
