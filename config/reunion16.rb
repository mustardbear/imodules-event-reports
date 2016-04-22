# For reunion 2016
DIRECTORY = 'data/reunion16/'
SOURCE = "#{DIRECTORY}reunion_registrations.csv"
MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"

# Summable for Reuion 2015
SUMMABLE = [
  "Grab-and-Go Lunch and Faculty Seminars - RW16 - Friday Faculty Seminars and Lunch",
  "Grab-and-Go Lunch and Faculty Seminars - RW16 - Friday Faculty Seminars and Lunch - total_price_paid",
  "Welcome Cocktail Reception and Venture Fair - RW16 - Friday Cocktail Reception",
  "Welcome Cocktail Reception and Venture Fair - RW16 - Friday Cocktail Reception - total_price_paid",
  "1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Fee",
  "1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Fee - total_pr",
  "1971 Friday Night Class Event - RW16 - Friday 1971 Event Fee",
  "1971 Friday Night Class Event - RW16 - Friday 1971 Event Fee - total_price_paid",
  "1976 Friday Night Class Event - RW16 - Friday 1976 Event Fee",
  "1976 Friday Night Class Event - RW16 - Friday 1976 Event Fee - total_price_paid",
  "1981 Friday Night Class Event - RW16 - Friday 1981 Event Fee",
  "1981 Friday Night Class Event - RW16 - Friday 1981 Event Fee - total_price_paid",
  "1986 Friday Night Class Event - RW16 - Friday 1986 Event Fee",
  "1986 Friday Night Class Event - RW16 - Friday 1986 Event Fee - total_price_paid",
  "1991 Friday Night Class Event - RW16 - Friday 1991 Event Fee",
  "1991 Friday Night Class Event - RW16 - Friday 1991 Event Fee - total_price_paid",
  "1996 Friday Night Class Event - RW16 - Friday 1996 Event Fee",
  "1996 Friday Night Class Event - RW16 - Friday 1996 Event Fee - total_price_paid",
  "2001 Friday Night Class Event - RW16 - Friday 2001 Event Fee",
  "2001 Friday Night Class Event - RW16 - Friday 2001 Event Fee - total_price_paid",
  "2006 Friday Night Class Event - RW16 - Friday 2006 Event Fee",
  "2006 Friday Night Class Event - RW16 - Friday 2006 Event Fee - total_price_paid",
  "2011 Friday Night Class Event - RW16 - Friday 2011 Event Fee",
  "2011 Friday Night Class Event - RW16 - Friday 2011 Event Fee - total_price_paid",
  "2011 EMBA Friday Night Class Event - RW16 - Friday 2011 EMBA Event Fee",
  "2011 EMBA Friday Night Class Event - RW16 - Friday 2011 EMBA Event Fee - total_price_paid",
  "2015 Friday Night Class Event - RW16 - Friday 2015 Event Fee",
  "2015 Friday Night Class Event - RW16 - Friday 2015 Event Fee - total_price_paid",
  "2015 EMBA Friday Night Class Event - RW16 - Friday 2015 EMBA Event Fee",
  "2015 EMBA Friday Night Class Event - RW16 - Friday 2015 EMBA Event Fee - total_price_paid",
  "2015 GEMBA Friday Night Class Event - RW16 - Friday 2015 GEMBA Event Fee",
  "2015 GEMBA Friday Night Class Event - RW16 - Friday 2015 GEMBA Event Fee - total_price_paid",
  "Breakfast at Darden - RW16 - Saturday Breakfast at Darden Fee",
  "Breakfast at Darden - RW16 - Saturday Breakfast at Darden Fee - total_price_paid",
  "Option 1 Activity Darden Barbecue and Field Day - RW16 - Saturday Darden Barbecue and Field Day Fee",
  "Option 1 Activity Darden Barbecue and Field Day - RW16 - Saturday Darden Barbecue and Field Day Fee ",
  "Add On for Option 1 Monticello Tour - RW16 - Saturday Monitcello Tour Fee",
  "Add On for Option 1 Monticello Tour - RW16 - Saturday Monitcello Tour Fee - total_price_paid",
  "Option 3 Wine Tour to Veritas and King Family Vineyards - RW16 - Saturday Wine Tour Fee",
  "Option 3 Wine Tour to Veritas and King Family Vineyards - RW16 - Saturday Wine Tour Fee - total_pric",
  "Option 2 Foxfield Spring Races - RW16 - Saturday Foxfield Fee",
  "Option 2 Foxfield Spring Races - RW16 - Saturday Foxfield Fee - total_price_paid",
  "Option 2 Foxfield Spring Races - RW16 - Foxfield Transportation",
  "Option 2 Foxfield Spring Races - RW16 - Foxfield Transportation - total_price_paid",
  "Evening Cocktails Dinner  Gala - RW16 - Saturday Gala",
  "Evening Cocktails Dinner  Gala - RW16 - Saturday Gala - total_price_paid",
  "Farewell Brunch at Darden - RW16 - Sunday Farewell Brunch at Darden",
  "Farewell Brunch at Darden - RW16 - Sunday Farewell Brunch at Darden - total_price_paid",
  "Class of 2015 Farewell Brunch  - RW16 - Sunday Class of 2015 Farewell Brunch Fee",
  "Class of 2015 Farewell Brunch  - RW16 - Sunday Class of 2015 Farewell Brunch Fee - total_price_paid",
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
  class_year: { column_name: "Reunion 2016 - RW16 Class Year",  setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? ? "No Class Year" : value) }, output_column_name: "Class Year" },
  child_age: { column_name: "Reunion 2016 - RW16 Child Age", output_column_name: "Child Age"},
  guest_of: { column_name: "Registered By", output_column_name: "Guest Of" }
}


ACTIVITIES = [

  { name: "Reunion 2016",
    columns: ["Registrant - 14874 - Is Registered"],
    free: true
  },

  { name: "Complimentary Child Care",
    columns: ["Complimentary Child Care - Is attending", 
              "Complimentary Child Care - RW16 - Childcare Days", 
              "Complimentary Child Care - RW16 - Child Birthdate", 
              "Complimentary Child Care - 15064 - Is Registered"],
    free: true
  },
            
  { name: "Innovation, Design and Entrepreneurship",
    columns: ["Innovation, Design and Entrepreneurship - Is attending",
              "Innovation, Design and Entrepreneurship - 15066 - Is Registered"],
    free: true
  },

  { name: "Darden Worldwide Breakfast",
    columns: ["Darden Worldwide Breakfast - Is attending",
              "Reunion 2016 - RW16 Country",
              "Darden Worldwide Breakfast - 15068 - Is Registered"],
    free: true
  },
  
  { name: "First Coffee with International Students",
    columns: ["First Coffee with International Students - Is attending",
              "Reunion 2016 - RW16 Country",
              "First Coffee with International Students - 15688 - Is Registered"],
    free: true
  },

  { name: "Hickory Club Members Luncheon and Panel Discussion",
    columns: ["Hickory Club Members Luncheon and Panel Discussion Darden 1955 - 2015 - Is attending",
              "Hickory Club Members Luncheon and Panel Discussion Darden 1955 - 2015 - 15069 - Is Registered"],
    free: true
  },

  { name: "Grab and Go Lunch and Faculty Seminars",
    columns: ["Grab-and-Go Lunch and Faculty Seminars - Is attending",
              "Grab-and-Go Lunch and Faculty Seminars - RW16 - Friday Faculty Seminars and Lunch",
              "Fee Name (Grab-and-Go Lunch and Faculty Seminars - RW16 - Friday Faculty Seminars and Lunch)",
              "Grab-and-Go Lunch and Faculty Seminars - RW16 - Friday Faculty Seminars and Lunch - total_price_paid",
              "Grab-and-Go Lunch and Faculty Seminars - 15070 - Is Registered"],
    free: false
  },

  { name: "Women@Darden: A Community of Creators and Change Makers",
    columns: ["WomenDarden Discussion and Wine - Is attending",
              "WomenDarden Discussion and Wine - 15633 - Is Registered"],
    free: true
  },


  { name: "Welcome Cocktail Reception and Venture Fair",
    columns: ["Welcome Cocktail Reception and Venture Fair - Is attending",
              "Welcome Cocktail Reception and Venture Fair - RW16 - Friday Cocktail Reception",
              "Fee Name (Welcome Cocktail Reception and Venture Fair - RW16 - Friday Cocktail Reception)",
              "Welcome Cocktail Reception and Venture Fair - RW16 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception and Venture Fair - 15071 - Is Registered"],
    free: false
  },

  { name: "1957 - 65 Abbott Society Friday Night Class Event",
    columns: ["1957  65 Abbott Society Friday Night Class Event - Is attending",
              "1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Fee",
              "Fee Name (1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Fee)",
              "1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Fee - total_pr",
              "1957  65 Abbott Society Friday Night Class Event - RW16 - Friday Abbott Society Event Transportation",
              "1957  65 Abbott Society Friday Night Class Event - 15076 - Is Registered"],
    free: false
  },

  { name: "1966 Friday Night Class Event",
    columns: ["1966 Friday Night Class Event - Is attending",
              "1966 Friday Night Class Event - RW16 - Friday 1966 Event Transportation",
              "1966 Friday Night Class Event - 15077 - Is Registered"],
    free: true
  },

  { name: "1971 Friday Night Class Event",
    columns: ["1971 Friday Night Class Event - Is attending",
              "1971 Friday Night Class Event - RW16 - Friday 1971 Event Fee",
              "Fee Name (1971 Friday Night Class Event - RW16 - Friday 1971 Event Fee)",
              "1971 Friday Night Class Event - RW16 - Friday 1971 Event Fee - total_price_paid",
              "1971 Friday Night Class Event - RW16 - Friday 1971 Event Transportation",
              "1971 Friday Night Class Event - 15078 - Is Registered"],
    free: false
  },

  { name: "1976 Friday Night Class Event",
    columns: ["1976 Friday Night Class Event - Is attending",
              "1976 Friday Night Class Event - RW16 - Friday 1976 Event Fee",
              "Fee Name (1976 Friday Night Class Event - RW16 - Friday 1976 Event Fee)",
              "1976 Friday Night Class Event - RW16 - Friday 1976 Event Fee - total_price_paid",
              "1976 Friday Night Class Event - RW16 - Friday 1976 Event Transportation",
              "1976 Friday Night Class Event - 15079 - Is Registered"],
    free: false
  },

  { name: "1981 Friday Night Class Event",
    columns: ["1981 Friday Night Class Event - Is attending",
              "1981 Friday Night Class Event - RW16 - Friday 1981 Event Fee",
              "Fee Name (1981 Friday Night Class Event - RW16 - Friday 1981 Event Fee)",
              "1981 Friday Night Class Event - RW16 - Friday 1981 Event Fee - total_price_paid",
              "1981 Friday Night Class Event - 15080 - Is Registered"],
    free: false
  },

  { name: "1986 Friday Night Class Event",
    columns: ["1986 Friday Night Class Event - Is attending",
              "1986 Friday Night Class Event - RW16 - Friday 1986 Event Fee",
              "Fee Name (1986 Friday Night Class Event - RW16 - Friday 1986 Event Fee)",
              "1986 Friday Night Class Event - RW16 - Friday 1986 Event Fee - total_price_paid",
              "1986 Friday Night Class Event - RW16 - Friday 1986 Event Transportation",
              "1986 Friday Night Class Event - 15081 - Is Registered"],
    free: false
  },

  { name: "1991 Friday Night Class Event",
    columns: ["1991 Friday Night Class Event - Is attending",
              "1991 Friday Night Class Event - RW16 - Friday 1991 Event Fee",
              "Fee Name (1991 Friday Night Class Event - RW16 - Friday 1991 Event Fee)",
              "1991 Friday Night Class Event - RW16 - Friday 1991 Event Fee - total_price_paid",
              "1991 Friday Night Class Event - 15082 - Is Registered"],
    free: false
  },

  { name: "1996 Friday Night Class Event",
    columns: ["1996 Friday Night Class Event - Is attending",
              "1996 Friday Night Class Event - RW16 - Friday 1996 Event Fee",
              "Fee Name (1996 Friday Night Class Event - RW16 - Friday 1996 Event Fee)",
              "1996 Friday Night Class Event - RW16 - Friday 1996 Event Fee - total_price_paid",
              "1996 Friday Night Class Event - 15083 - Is Registered"],
    free: false
  },

  { name: "2001 Friday Night Class Event",
    columns: ["2001 Friday Night Class Event - Is attending",
              "2001 Friday Night Class Event - RW16 - Friday 2001 Event Fee",
              "Fee Name (2001 Friday Night Class Event - RW16 - Friday 2001 Event Fee)",
              "2001 Friday Night Class Event - RW16 - Friday 2001 Event Fee - total_price_paid",
              "2001 Friday Night Class Event - 15084 - Is Registered"],
    free: false
  },

  { name: "2006 Friday Night Class Event",
    columns: ["2006 Friday Night Class Event - Is attending",
              "2006 Friday Night Class Event - RW16 - Friday 2006 Event Fee",
              "Fee Name (2006 Friday Night Class Event - RW16 - Friday 2006 Event Fee)",
              "2006 Friday Night Class Event - RW16 - Friday 2006 Event Fee - total_price_paid",
              "2006 Friday Night Class Event - 15087 - Is Registered"],
    free: false
  },

  { name: "2011 Friday Night Class Event",
    columns: ["2011 Friday Night Class Event - Is attending",
              "2011 Friday Night Class Event - RW16 - Friday 2011 Event Fee",
              "Fee Name (2011 Friday Night Class Event - RW16 - Friday 2011 Event Fee)",
              "2011 Friday Night Class Event - RW16 - Friday 2011 Event Fee - total_price_paid",
              "2011 Friday Night Class Event - 15085 - Is Registered"],
    free: false
  },

  { name: "2011 EMBA Friday Night Class Event",
    columns: ["2011 EMBA Friday Night Class Event - Is attending",
              "2011 EMBA Friday Night Class Event - RW16 - Friday 2011 EMBA Event Fee",
              "Fee Name (2011 EMBA Friday Night Class Event - RW16 - Friday 2011 EMBA Event Fee)",
              "2011 EMBA Friday Night Class Event - RW16 - Friday 2011 EMBA Event Fee - total_price_paid",
              "2011 EMBA Friday Night Class Event - 15086 - Is Registered"],
    free: false
  },

  { name: "2015 Friday Night Class Event",
    columns: ["2015 Friday Night Class Event - Is attending",
              "2015 Friday Night Class Event - RW16 - Friday 2015 Event Fee",
              "Fee Name (2015 Friday Night Class Event - RW16 - Friday 2015 Event Fee)",
              "2015 Friday Night Class Event - RW16 - Friday 2015 Event Fee - total_price_paid",
              "2015 Friday Night Class Event - 15088 - Is Registered"],
    free: false
  },

  { name: "2015 EMBA Friday Night Class Event",
    columns: ["2015 EMBA Friday Night Class Event - Is attending",
              "2015 EMBA Friday Night Class Event - RW16 - Friday 2015 EMBA Event Fee",
              "Fee Name (2015 EMBA Friday Night Class Event - RW16 - Friday 2015 EMBA Event Fee)",
              "2015 EMBA Friday Night Class Event - RW16 - Friday 2015 EMBA Event Fee - total_price_paid",
              "2015 EMBA Friday Night Class Event - 15089 - Is Registered"],
    free: false
  },

  { name: "2015 GEMBA Friday Night Class Event",
    columns: ["2015 GEMBA Friday Night Class Event - Is attending",
              "2015 GEMBA Friday Night Class Event - RW16 - Friday 2015 GEMBA Event Fee",
              "Fee Name (2015 GEMBA Friday Night Class Event - RW16 - Friday 2015 GEMBA Event Fee)",
              "2015 GEMBA Friday Night Class Event - RW16 - Friday 2015 GEMBA Event Fee - total_price_paid",
              "2015 GEMBA Friday Night Class Event - 15090 - Is Registered"],
    free: false
  },

  { name: "Breakfast at Darden",
    columns: ["Breakfast at Darden - Is attending",
              "Breakfast at Darden - RW16 - Saturday Breakfast at Darden Fee",
              "Fee Name (Breakfast at Darden - RW16 - Saturday Breakfast at Darden Fee)",
              "Breakfast at Darden - RW16 - Saturday Breakfast at Darden Fee - total_price_paid",
              "Breakfast at Darden - 15139 - Is Registered"],
    free: false
  },

  { name: "Darden Society Champagne Breakfast",
    columns: ["Darden Society Champagne Breakfast - Is attending",
              "Darden Society Champagne Breakfast - 15140 - Is Registered"],
    free: true
  },

  { name: "UVA Admissions Session",
    columns: ["UVA Admissions Session - Is attending",
              "UVA Admissions Session - 15142 - Is Registered"],
    free: true
  },

  { name: "Mixing Business with Pleasure: Networking for Results",
    columns: ["Mixing Business with Pleasure: Networking for Results - Is attending",
              "Mixing Business with Pleasure: Networking for Results - 15143 - Is Registered"],
    free: true
  },

  { name: "Deans State of the School Address",
    columns: ["Deans State of the School Address - Is attending",
              "Deans State of the School Address - 15144 - Is Registered"],
    free: true
  },

  { name: "Darden Barbecue and Field Day",
    columns: ["Option 1 Activity Darden Barbecue and Field Day - Is attending",
              "Option 1 Activity Darden Barbecue and Field Day - RW16 - Saturday Darden Barbecue and Field Day Fee",
              "Fee Name (Option 1 Activity Darden Barbecue and Field Day - RW16 - Saturday Darden Barbecue and Field Day Fee)",
              "Option 1 Activity Darden Barbecue and Field Day - RW16 - Saturday Darden Barbecue and Field Day Fee ",
              "Option 1 Activity Darden Barbecue and Field Day - 15146 - Is Registered"],
    free: false
  },

  { name: "Monticello Tour",
    columns: ["Add On for Option 1 Monticello Tour - Is attending",
              "Add On for Option 1 Monticello Tour - RW16 - Saturday Monitcello Tour Fee",
              "Fee Name (Add On for Option 1 Monticello Tour - RW16 - Saturday Monitcello Tour Fee)",
              "Add On for Option 1 Monticello Tour - RW16 - Saturday Monitcello Tour Fee - total_price_paid",
              "Add On for Option 1 Monticello Tour - RW16 - Monticello Tour Transportation",
              "Add On for Option 1 Monticello Tour - 15147 - Is Registered"],
    free: false
  },

  { name: "Afternoon at the Vineyard",
    columns: ["Option 3 Wine Tour to Veritas and King Family Vineyards - Is attending",
              "Option 3 Wine Tour to Veritas and King Family Vineyards - RW16 - Saturday Wine Tour Fee",
              "Fee Name (Option 3 Wine Tour to Veritas and King Family Vineyards - RW16 - Saturday Wine Tour Fee)",
              "Option 3 Wine Tour to Veritas and King Family Vineyards - RW16 - Saturday Wine Tour Fee - total_pric",
              "Add on for Option 1 Afternoon at the Vineyard - RW16 - Afternoon at the Vineyard Transportation",
              "Option 3 Wine Tour to Veritas and King Family Vineyards - 15149 - Is Registered"],
    free: false
  },


  { name: "Foxfield Spring Races",
    columns: ["Option 2 Foxfield Spring Races - Is attending",
              "Option 2 Foxfield Spring Races - RW16 - Saturday Foxfield Fee",
              "Fee Name (Option 2 Foxfield Spring Races - RW16 - Saturday Foxfield Fee)",
              "Option 2 Foxfield Spring Races - RW16 - Saturday Foxfield Fee - total_price_paid",
              "Option 2 Foxfield Spring Races - RW16 - Foxfield Transportation",
              "Fee Name (Option 2 Foxfield Spring Races - RW16 - Foxfield Transportation)",
              "Option 2 Foxfield Spring Races - RW16 - Foxfield Transportation - total_price_paid",
              "Option 2 Foxfield Spring Races - 15148 - Is Registered"],
    free: false
  },

  { name: "Evening Cocktails, Dinner & Gala",
    columns: ["Evening Cocktails Dinner  Gala - Is attending",
              "Evening Cocktails Dinner  Gala - RW16 - Saturday Gala",
              "Fee Name (Evening Cocktails Dinner  Gala - RW16 - Saturday Gala)",
              "Evening Cocktails Dinner  Gala - RW16 - Saturday Gala - total_price_paid",
              "Evening Cocktails Dinner  Gala - 15150 - Is Registered"],
    free: false
  },

  { name: "Farewell Brunch at Darden",
    columns: ["Farewell Brunch at Darden - Is attending",
              "Farewell Brunch at Darden - RW16 - Sunday Farewell Brunch at Darden",
              "Fee Name (Farewell Brunch at Darden - RW16 - Sunday Farewell Brunch at Darden)",
              "Farewell Brunch at Darden - RW16 - Sunday Farewell Brunch at Darden - total_price_paid",
              "Farewell Brunch at Darden - 15152 - Is Registered"],
    free: false
  },

  { name: "Class of 2015 Farewell Brunch",
    columns: ["Class of 2015 Farewell Brunch  - Is attending",
              "Class of 2015 Farewell Brunch  - RW16 - Sunday Class of 2015 Farewell Brunch Fee",
              "Fee Name (Class of 2015 Farewell Brunch  - RW16 - Sunday Class of 2015 Farewell Brunch Fee)",
              "Class of 2015 Farewell Brunch  - RW16 - Sunday Class of 2015 Farewell Brunch Fee - total_price_paid",
              "Class of 2015 Farewell Brunch  - 15573 - Is Registered"],
    free: false
  }
]
