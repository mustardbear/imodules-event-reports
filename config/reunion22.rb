# For reunion 2022
DIRECTORY = 'data/reunion22/'
SOURCE = "#{DIRECTORY}reunion_registrations.csv"
MERGED = "#{DIRECTORY}merged_reunion_registrations.csv"

# Summable for Reuion 2022
SUMMABLE = [
  "RW22 - Lunch and Learn",
  "RW22 - Lunch and Learn - total_price_paid",
  "RW22 - Morven Tour Fee",
  "RW22 - Morven Tour Fee - total_price_paid",
  "RW22 - Friday Cocktail Reception",
  "RW22 - Friday Cocktail Reception - total_price_paid",
  "RW22 - Friday Abbott Society Event Transportation",
  "RW22 - Friday Abbott Society Event Transportation - total_price_paid",
  "RW22 - Friday 1967 Event Fee",
  "RW22 - Friday 1967 Event Fee - total_price_paid",
  "RW22 - Friday 1967 Event Transportation",
  "RW22 - Friday 1967 Event Transportation - total_price_paid",
  "RW22 - Friday 1972 Event Fee",
  "RW22 - Friday 1972 Event Fee - total_price_paid",
  "RW22 - Friday 1972 Event Transportation",
  "RW22 - Friday 1972 Event Transportation - total_price_paid",
  "RW22 - Friday 1977 Event Fee",
  "RW22 - Friday 1977 Event Fee - total_price_paid",
  "RW22 - Friday 1977 Event Transportation",
  "RW22 - Friday 1977 Event Transportation - total_price_paid",
  "RW22 - Friday 1982 Event Transportation",
  "RW22 - Friday 1982 Event Transportation - total_price_paid",
  "RW22 - Friday 1987 Event Transportation",
  "RW22 - Friday 1987 Event Transportation - total_price_paid",
  "RW22 - Friday 1992 Event Fee",
  "RW22 - Friday 1992 Event Fee - total_price_paid",
  "RW22 - Friday 1992 Event Transportation",
  "RW22 - Friday 1992 Event Transportation - total_price_paid",
  "RW22 - Friday 1997 Event Fee",
  "RW22 - Friday 1997 Event Fee - total_price_paid",
  "RW22 - Friday 1997 Event Transportation",
  "RW22 - Friday 1997 Event Transportation - total_price_paid",
  "RW22 - Friday 2002 Event Fee",
  "RW22 - Friday 2002 Event Fee - total_price_paid",
  "RW22 - Friday 2007 Event Fee",
  "RW22 - Friday 2007 Event Fee - total_price_paid",
  "RW22 - Friday 2012 Event Fee",
  "RW22 - Friday 2012 Event Fee - total_price_paid",
  "RW22 - Friday 2012 EMBA Event Fee",
  "RW22 - Friday 2012 EMBA Event Fee - total_price_paid",
  "RW22 - Friday 2017 Event Fee",
  "RW22 - Friday 2017 Event Fee - total_price_paid",
  "RW22 - Friday 2017 EMBA Event Fee",
  "RW22 - Friday 2017 EMBA Event Fee - total_price_paid",
  "RW22 - Friday 2017 GEMBA Event Fee",
  "RW22 - Friday 2017 GEMBA Event Fee - total_price_paid",
  "RW22 - Friday 2020 Event Fee",
  "RW22 - Friday 2020 Event Fee - total_price_paid",
  "RW22 - Friday 2020 EMBA Event Fee",
  "RW22 - Friday 2020 EMBA Event Fee - total_price_paid",
  "RW22 - Friday 2021 Event Fee",
  "RW22 - Friday 2021 Event Fee - total_price_paid",
  "RW22 - Friday 2021 EMBA Event Transportation - total_price_paid",
  "RW22 - Friday 2021 EMBA Event Fee",
  "RW22 - Friday 2021 EMBA Event Fee - total_price_paid",
  "RW22 - Saturday Breakfast at Darden Fee",
  "RW22 - Saturday Breakfast at Darden Fee - total_price_paid",
  "RW22 - AS Foxfield Fee",
  "RW22 - AS Foxfield Fee - total_price_paid",
  "RW22 - AS Foxfield Transportation",
  "RW22 - AS Foxfield Transportation - total_price_paid",
  "RW22 - Private Wine Tasting Fee",
  "RW22 - Private Wine Tasting Fee - total_price_paid",
  "RW22 - Private Wine Tasting Transportation",
  "RW22 - Private Wine Tasting Transportation - total_price_paid",
  "RW22 - Darden Picnic and Field Day Fee",
  "RW22 - Darden Picnic and Field Day Fee - total_price_paid",
  "RW22 - Saturday Afternoon at the Vineyard Fee",
  "RW22 - Saturday Afternoon at the Vineyard Fee - total_price_paid",
  "RW22 - Saturday Foxfield Fee",
  "RW22 - Saturday Foxfield Fee - total_price_paid",
  "RW22 - Foxfield Transportation",
  "RW22 - Foxfield Transportation - total_price_paid",
  "RW22 - Class Dinners and Saturday Soiree",
  "RW22 - Class Dinners and Saturday Soiree - total_price_paid",
  "RW22 - Saturday 1972 Dinner Event Fee",
  "RW22 - Saturday 1972 Dinner Event Fee - total_price_paid",
  "RW22 - Saturday 1972 Event Transportation",
  "RW22 - Saturday 1972 Event Transportation - total_price_paid",
  "RW22 - Saturday 1987 Dinner Event Fee",
  "RW22 - Saturday 1987 Dinner Event Fee - total_price_paid",
  "RW22 - Saturday 1987 Event Transportation",
  "RW22 - Saturday 1987 Event Transportation - total_price_paid"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First_Name", output_column_name: "First Name" },
  last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
  pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
  maiden_name: { column_name: "maiden_name", output_column_name: "Former Name" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "RW22 Class Year",  setter: Proc.new { |value| value.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (value.nil? || value.strip.empty? || value.eql?("0") ? "No Class Year" : value) }, output_column_name: "Class Year" },
  child_age: { column_name: "RW22 Child Age", output_column_name: "Child Age"},
  guest_of: { column_name: "Registered By", output_column_name: "Guest Of" },
  guest_alternate_id: { column_name: "RW22 - guest_alternate_id", output_column_name: "Guest Alternate ID" }
}

ACTIVITIES = [

  { name: "Reunion 2022",
    columns: ["Registrant - 31772 - Is Registered"],
    free: true
  },
  
  { name: "Alumni Career Services Office Hours",
    columns: [# "Alumni Career Services Office Hours - Is attending",
              "Alumni Career Services Office Hours - 31794 - Is Registered"],
    free: true
  },
  
  { name: "Executive Education and Lifelong Learning",
    columns: [#"Executive Education and Lifelong Learning - Is attending",
              "Executive Education and Lifelong Learning - 31938 - Is Registered"],
    free: true
  },
  
  { name: "Darden First Coffee",
    columns: [#"Darden First Coffee - Is attending",
              "Darden First Coffee - 31796 - Is Registered"],
    free: true
  },
  
  { name: "Strategic Insights from Eastern Philosophy",
    columns: [#"Strategic Insights from Eastern Philosophy - Is attending",
              "Strategic Insights from Eastern Philosophy - 31798 - Is Registered"],
    free: true
  },  

  { name: "Introducing the Future Year Scholars Program",
    columns: [#"Introducing the Future Year Scholars Program - Is attending",
              "Introducing the Future Year Scholars Program - 31799 - Is Registered"],
    free: true
  },

  { name: "Pilates Class at Club Pilates",
    columns: [#"Pilates Class at Club Pilates - Is attending",
              "Pilates Class at Club Pilates - 31927 - Is Registered"],
    free: true
  },

  { name: "Fostering Connection and Belonging",
    columns: [#"Fostering Connection and Belonging - Is attending",
              "Fostering Connection and Belonging - 31934 - Is Registered"],
    free: true
  },

  { name: "Lunch and Learn - The Power of And",
    columns: [#"Lunch and Learn - The Power of And - Is attending",
              #"RW22 - Lunch and Learn",
              "Fee Name (RW22 - Lunch and Learn)",
              "RW22 - Lunch and Learn - total_price_paid",
              "Lunch and Learn - The Power of And - 31801 - Is Registered"],
    free: false
  },

  { name: "LinkedIn Profile Photo Shoot",
    columns: [#"LinkedIn Profile Photo Shoot - Is attending",
              "LinkedIn Profile Photo Shoot - 31802 - Is Registered"],
    free: true
  },
  
  { name: "Tour of Morven Farms",
    columns: [#"Tour of Morven Farms - Is attending",
              #"RW22 - Morven Tour Fee",
              "Fee Name (RW22 - Morven Tour Fee)",
              "RW22 - Morven Tour Fee - total_price_paid",
              "Tour of Morven Farms - 31928 - Is Registered"],
    free: false
  },

  { name: "The Future of Cryptocurrency",
    columns: [#"The Future of Cryptocurrency - Is attending",
              "The Future of Cryptocurrency - 31804 - Is Registered"],
    free: true
  },

  { name: "The Encore Case Finding Purposeful Work Later in Your Career",
    columns: [#"The Encore Case Finding Purposeful Work Later in Your Career - Is attending",
              "The Encore Case Finding Purposeful Work Later in Your Career - 31805 - Is Registered"],
    free: true
  },

  { name: "Revising the Narrative Womens Journey to Darden and Beyond",
    columns: [#"Revising the Narrative Womens Journey to Darden and Beyond - Is attending",
              "Revising the Narrative Womens Journey to Darden and Beyond - 31929 - Is Registered"],
    free: true
  },

  { name: "2021-2022 Student Venture Showcase",
    columns: [#"2021-2022 Student Venture Showcase - Is attending",
              "2021-2022 Student Venture Showcase - 31807 - Is Registered"],
    free: true
  },

  { name: "Creating a Coaching Culture",
    columns: [#"Creating a Coaching Culture - Is attending",
              "Creating a Coaching Culture - 31808 - Is Registered"],
    free: true
  },

  { name: "Timeless Insights for Modern Leadership",
    columns: [#"Timeless Insights for Modern Leadership - Is attending",
              "Timeless Insights for Modern Leadership - 31931 - Is Registered"],
    free: true
  },

  { name: "Graduate Women in Business Reception",
    columns: [#"Graduate Women in Business Reception - Is attending",
              "Graduate Women in Business Reception - 31932 - Is Registered"],
    free: true
  },

  { name: "Welcome Cocktail Reception",
    columns: [#"Welcome Cocktail Reception - Is attending",
              #"RW22 - Friday Cocktail Reception",
              "Fee Name (RW22 - Friday Cocktail Reception)",
              "RW22 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception - 31809 - Is Registered"],
    free: false
  },  
  
  { name: "1957-1971 Abbott Society Friday Night Event",
    columns: [#"1957-1971 Abbott Society Friday Night Event - Is attending",
              #"RW22 - Friday Abbott Society Event Transportation",
              "Fee Name (RW22 - Friday Abbott Society Event Transportation)",
              "RW22 - Friday Abbott Society Event Transportation - total_price_paid",
              "1957-1971 Abbott Society Friday Night Event - 31810 - Is Registered"],
    free: true
  },  

  { name: "1967 Friday Night Class Event",
    columns: [#"1967 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1967 Event Fee",
              "Fee Name (RW22 - Friday 1967 Event Fee)",
              "RW22 - Friday 1967 Event Fee - total_price_paid",
              #"RW22 - Friday 1967 Event Transportation",
              "Fee Name (RW22 - Friday 1967 Event Transportation)",
              #"RW22 - Friday 1967 Event Transportation - total_price_paid",
              "1967 Friday Night Class Event - 31871 - Is Registered"],
    free: false
  },  

  { name: "1972 Friday Night Class Event",
    columns: [#"1972 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1972 Event Fee",
              "Fee Name (RW22 - Friday 1972 Event Fee)",
              "RW22 - Friday 1972 Event Fee - total_price_paid",
              #"RW22 - Friday 1972 Event Transportation",
              "Fee Name (RW22 - Friday 1972 Event Transportation)",
              #"RW22 - Friday 1972 Event Transportation - total_price_paid",
              "1972 Friday Night Class Event - 31872 - Is Registered"],
    free: false
  },  

  { name: "1977 Friday Night Class Event",
    columns: [#"1977 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1977 Event Fee",
              "Fee Name (RW22 - Friday 1977 Event Fee)",
              "RW22 - Friday 1977 Event Fee - total_price_paid",
              #"RW22 - Friday 1977 Event Transportation",
              "Fee Name (RW22 - Friday 1977 Event Transportation)",
              #"RW22 - Friday 1977 Event Transportation - total_price_paid",
              "1977 Friday Night Class Event - 31873 - Is Registered"],
    free: false
  },  

  { name: "1982 Friday Night Class Event",
    columns: [#"1982 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1982 Event Transportation",
              "Fee Name (RW22 - Friday 1982 Event Transportation)",
              #"RW22 - Friday 1982 Event Transportation - total_price_paid",
              "1982 Friday Night Class Event - 31874 - Is Registered"],
    free: true
  },  

  { name: "1987 Friday Night Class Event",
    columns: [#"1987 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1987 Event Transportation",
              "Fee Name (RW22 - Friday 1987 Event Transportation)",
              #"RW22 - Friday 1987 Event Transportation - total_price_paid",
              "1987 Friday Night Class Event - 31875 - Is Registered"],
    free: true
  },  
  
  { name: "1992 Friday Night Class Event",
    columns: [#"1992 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1992 Event Fee",
              "Fee Name (RW22 - Friday 1992 Event Fee)",
              "RW22 - Friday 1992 Event Fee - total_price_paid",
              #"RW22 - Friday 1992 Event Transportation",
              "Fee Name (RW22 - Friday 1992 Event Transportation)",
              #"RW22 - Friday 1992 Event Transportation - total_price_paid",
              "1992 Friday Night Class Event - 31876 - Is Registered"],
    free: false
  },  

  { name: "1997 Friday Night Class Event",
    columns: [#"1997 Friday Night Class Event - Is attending",
              #"RW22 - Friday 1997 Event Fee",
              "Fee Name (RW22 - Friday 1997 Event Fee)",
              "RW22 - Friday 1997 Event Fee - total_price_paid",
              #"RW22 - Friday 1997 Event Transportation",
              "Fee Name (RW22 - Friday 1997 Event Transportation)",
              #"RW22 - Friday 1997 Event Transportation - total_price_paid",
              "1997 Friday Night Class Event - 31881 - Is Registered"],
    free: false
  },
  
  { name: "2002 Friday Night Class Event",
    columns: [#"2002 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2002 Event Fee",
              "Fee Name (RW22 - Friday 2002 Event Fee)",
              "RW22 - Friday 2002 Event Fee - total_price_paid",
              "2002 Friday Night Class Event - 31890 - Is Registered"],
    free: false
  },      

  { name: "2007 Friday Night Class Event",
    columns: [#"2007 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2007 Event Fee",
              "Fee Name (RW22 - Friday 2007 Event Fee)",
              "RW22 - Friday 2007 Event Fee - total_price_paid",
              "2007 Friday Night Class Event - 31891 - Is Registered"],
    free: false
  },

  { name: "2012 Friday Night Class Event",
    columns: [#"2012 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2012 Event Fee",
              "Fee Name (RW22 - Friday 2012 Event Fee)",
              "RW22 - Friday 2012 Event Fee - total_price_paid",
              "2012 Friday Night Class Event - 31892 - Is Registered"],
    free: false
  },

  { name: "2012 EMBA Friday Night Class Event",
    columns: [#"2012 EMBA Friday Night Class Event - Is attending",
              #"RW22 - Friday 2012 EMBA Event Fee",
              "Fee Name (RW22 - Friday 2012 EMBA Event Fee)",
              "RW22 - Friday 2012 EMBA Event Fee - total_price_paid",
              "2012 EMBA Friday Night Class Event - 31893 - Is Registered"],
    free: false
  },
  
  { name: "2017 Friday Night Class Event",
    columns: [#"2017 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2017 Event Fee",
              "Fee Name (RW22 - Friday 2017 Event Fee)",
              "RW22 - Friday 2017 Event Fee - total_price_paid",
              "2017 Friday Night Class Event - 31894 - Is Registered"],
    free: false
  },      

  { name: "2017 EMBA Friday Night Class Event",
    columns: [#"2017 EMBA Friday Night Class Event - Is attending",
              #"RW22 - Friday 2017 EMBA Event Fee",
              "Fee Name (RW22 - Friday 2017 EMBA Event Fee)",
              "RW22 - Friday 2017 EMBA Event Fee - total_price_paid",
              "2017 EMBA Friday Night Class Event - 31895 - Is Registered"],
    free: false
  },      

  { name: "2017 GEMBA Friday Night Class Event",
    columns: [#"2017 GEMBA Friday Night Class Event - Is attending",
              #"RW22 - Friday 2017 GEMBA Event Fee",
              "Fee Name (RW22 - Friday 2017 GEMBA Event Fee)",
              "RW22 - Friday 2017 GEMBA Event Fee - total_price_paid",
              "2017 GEMBA Friday Night Class Event - 31897 - Is Registered"],
    free: false
  },      

  { name: "2020 Friday Night Class Event",
    columns: [#"2020 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2020 Event Fee",
              "Fee Name (RW22 - Friday 2020 Event Fee)",
              "RW22 - Friday 2020 Event Fee - total_price_paid",
              "2020 Friday Night Class Event - 31896 - Is Registered"],
    free: false
  },      

  { name: "2020 EMBA Friday Night Class Event",
    columns: [#"2020 EMBA Friday Night Class Event - Is attending",
              #"RW22 - Friday 2020 EMBA Event Fee",
              "Fee Name (RW22 - Friday 2020 EMBA Event Fee)",
              "RW22 - Friday 2020 EMBA Event Fee - total_price_paid",
              "2020 EMBA Friday Night Class Event - 31898 - Is Registered"],
    free: false
  },      

  { name: "2021 Friday Night Class Event",
    columns: [#"2021 Friday Night Class Event - Is attending",
              #"RW22 - Friday 2021 Event Fee",
              "Fee Name (RW22 - Friday 2021 Event Fee)",
              "RW22 - Friday 2021 Event Fee - total_price_paid",
              "2021 Friday Night Class Event - 31899 - Is Registered"],
    free: false
  },      

  { name: "2021 EMBA Friday Night Class Event",
    columns: [#"2021 EMBA Friday Night Class Event - Is attending",
              #"RW22 - Friday 2021 EMBA Event Fee",
              "Fee Name (RW22 - Friday 2021 EMBA Event Fee)",
              "RW22 - Friday 2021 EMBA Event Fee - total_price_paid",
              #"RW22 - Friday 2021 EMBA Event Transportation",
              "Fee Name (RW22 - Friday 2021 EMBA Event Transportation)",
              #"RW22 - Friday 2021 EMBA Event Transportation - total_price_paid",
              "2021 EMBA Friday Night Class Event - 31900 - Is Registered"],
    free: false
  },      

  { name: "Darden Breakfast and Coffee",
    columns: [#"Darden Breakfast and Coffee - Is attending",
              #"RW22 - Saturday Breakfast at Darden Fee",
              "Fee Name (RW22 - Saturday Breakfast at Darden Fee)",
              "RW22 - Saturday Breakfast at Darden Fee - total_price_paid",
              "Darden Breakfast and Coffee - 31904 - Is Registered"],
    free: false
  },      
  
  { name: "Reunion Volunteer Breakfast",
    columns: [#"Reunion Volunteer Breakfast - Is attending",
              "Reunion Volunteer Breakfast - 31905 - Is Registered"],
    free: true
  },

  { name: "Deans State of the School Address",
    columns: [#"Deans State of the School Address - Is attending",
              "Deans State of the School Address - 31907 - Is Registered"],
    free: true
  },

  { name: "AS Option 1 Abbott Society Luncheon",
    columns: [#"AS Option 1 Abbott Society Luncheon - Is attending",
              "AS Option 1 Abbott Society Luncheon - 31935 - Is Registered"],
    free: true
  },
  
  { name: "AS Option 2 Abbott Society Luncheon and Foxfield",
    columns: [#"AS Option 2 Abbott Society Luncheon and Foxfield - Is attending",
              #"RW22 - AS Foxfield Fee",
              "Fee Name (RW22 - AS Foxfield Fee)",
              "RW22 - AS Foxfield Fee - total_price_paid",
              #"RW22 - AS Foxfield Transportation",
              "Fee Name (RW22 - AS Foxfield Transportation)",
              "RW22 - AS Foxfield Transportation - total_price_paid",
              "AS Option 2 Abbott Society Luncheon and Foxfield - 31943 - Is Registered"],
    free: false
  },      

  { name: "AS Option 3 Luncheon and Private Wine Tasting at Pippin Hill Reserve Room",
    columns: [#"AS Option 3 Luncheon and Private Wine Tasting at Pippin Hill Reserve Room - Is attending",
              #"RW22 - Private Wine Tasting Fee",
              "Fee Name (RW22 - Private Wine Tasting Fee)",
              "RW22 - Private Wine Tasting Fee - total_price_paid",
              #"RW22 - Private Wine Tasting Transportation",
              "Fee Name (RW22 - Private Wine Tasting Transportation)",
              #"RW22 - Private Wine Tasting Transportation - total_price_paid",
              "AS Option 3 Luncheon and Private Wine Tasting at Pippin Hill Reserve Room - 31936 - Is Registered"],
    free: false
  },      
  
  { name: "Option 1 Darden Picnic and Field Day",
    columns: [#"Option 1 Darden Picnic and Field Day - Is attending",
              #"RW22 - Darden Picnic and Field Day Fee",
              "Fee Name (RW22 - Darden Picnic and Field Day Fee)",
              "RW22 - Darden Picnic and Field Day Fee - total_price_paid",
              "Option 1 Darden Picnic and Field Day - 31909 - Is Registered"],
    free: false
  },      

  { name: "Option 2 Afternoon at the Vineyard",
    columns: [#"Option 2 Afternoon at the Vineyard - Is attending",
              #"RW22 - Saturday Afternoon at the Vineyard Fee",
              "Fee Name (RW22 - Saturday Afternoon at the Vineyard Fee)",
              "RW22 - Saturday Afternoon at the Vineyard Fee - total_price_paid",
              "Option 2 Afternoon at the Vineyard - 31910 - Is Registered"],
    free: false
  },      

  { name: "Option 3 Foxfield Spring Races",
    columns: [#"Option 3 Foxfield Spring Races - Is attending",
              #"RW22 - Saturday Foxfield Fee",
              "Fee Name (RW22 - Saturday Foxfield Fee)",
              "RW22 - Saturday Foxfield Fee - total_price_paid",
              #"RW22 - Foxfield Transportation",
              "Fee Name (RW22 - Foxfield Transportation)",
              "RW22 - Foxfield Transportation - total_price_paid",
              "Option 3 Foxfield Spring Races - 31911 - Is Registered"],
    free: false
  },      
    
  { name: "Option 4 Class of 2002 Golf Outing",
    columns: [#"Option 4 Class of 2002 Golf Outing - Is attending",
              "Option 4 Class of 2002 Golf Outing - 31939 - Is Registered"],
    free: true
  },

  { name: "Darden Society and Cornerstone Society Cocktail Reception",
    columns: [#"Darden Society and Cornerstone Society Cocktail Reception - Is attending",
              "Darden Society and Cornerstone Society Cocktail Reception - 31912 - Is Registered"],
    free: true
  },

  { name: "Class of 2002 Scholarship Toast",
    columns: [#"Class of 2002 Scholarship Toast - Is attending",
              "Class of 2002 Scholarship Toast - 31913 - Is Registered"],
    free: true
  },
  
  { name: "Class of 2020 Saturday Dinner",
    columns: [#"Class of 2020 Saturday Dinner - Is attending",
              "Class of 2020 Saturday Dinner - 31940 - Is Registered"],
    free: true
  },

  { name: "Class of 2021 Saturday Dinner",
    columns: [#"Class of 2021 Saturday Dinner - Is attending",
              "Class of 2021 Saturday Dinner - 31941 - Is Registered"],
    free: true
  },

  { name: "Class of 2021 EMBA Saturday Dinner",
    columns: [#"Class of 2021 EMBA Saturday Dinner - Is attending",
              "Class of 2021 EMBA Saturday Dinner - 31942 - Is Registered"],
    free: true
  },
  
  { name: "Class Dinners and Saturday Night Soire",
    columns: [#"Class Dinners and Saturday Night Soire - Is attending",
              #"RW22 - Class Dinners and Saturday Soiree",
              "Fee Name (RW22 - Class Dinners and Saturday Soiree)",
              "RW22 - Class Dinners and Saturday Soiree - total_price_paid",
              "Class Dinners and Saturday Night Soire - 31914 - Is Registered"],
    free: false
  },      
  
  { name: "Class of 1972 Saturday Dinner",
    columns: [#"Class of 1972 Saturday Dinner - Is attending",
              #"RW22 - Saturday 1972 Dinner Event Fee",
              "Fee Name (RW22 - Saturday 1972 Dinner Event Fee)",
              "RW22 - Saturday 1972 Dinner Event Fee - total_price_paid",
              #"RW22 - Saturday 1972 Event Transportation",
              "Fee Name (RW22 - Saturday 1972 Event Transportation)",
              #"RW22 - Saturday 1972 Event Transportation - total_price_paid",
              "Class of 1972 Saturday Dinner - 31915 - Is Registered"],
    free: false
  },      

  { name: "Class of 1987 Saturday Dinner",
    columns: [#"Class of 1987 Saturday Dinner - Is attending",
              #"RW22 - Saturday 1987 Dinner Event Fee",
              "Fee Name (RW22 - Saturday 1987 Dinner Event Fee)",
              "RW22 - Saturday 1987 Dinner Event Fee - total_price_paid",
              #"RW22 - Saturday 1987 Event Transportation",
              "Fee Name (RW22 - Saturday 1987 Event Transportation)",
              #"RW22 - Saturday 1987 Event Transportation - total_price_paid",
              "Class of 1987 Saturday Dinner - 31916 - Is Registered"],
    free: false
  },      

  { name: "Class of 2017 EMBA Saturday Dinner",
    columns: [#"Class of 2017 EMBA Saturday Dinner - Is attending",
              "Class of 2017 EMBA Saturday Dinner - 31917 - Is Registered"],
    free: true
  },

  { name: "Farewell Brunch at Darden",
    columns: [#"Farewell Brunch at Darden - Is attending",
              #"RW22 - Sunday Farewell Brunch Fee",
              "Fee Name (RW22 - Sunday Farewell Brunch Fee)",
              "RW22 - Sunday Farewell Brunch Fee - total_price_paid",
              "Class Dinners and Saturday Night Soire - 31914 - Is Registered"],
    free: false
  },      

  { name: "Class of 1987 Farewell Brunch",
    columns: [#"Class of 1987 Farewell Brunch - Is attending",
              "Class of 1987 Farewell Brunch - 31920 - Is Registered"],
    free: true
  },

  { name: "Class of 2020 EMBA Graduation Brunch",
    columns: [#"Class of 2020 EMBA Graduation Brunch - Is attending",
              "Class of 2020 EMBA Graduation Brunch - 31921 - Is Registered"],
    free: true
  },

  { name: "Celebration of Life for John Colley",
    columns: [#"Celebration of Life for John Colley - Is attending",
              "Celebration of Life for John Colley - 31922 - Is Registered"],
    free: true
  },

  { name: "Reception honoring John Colley",
    columns: [#"Reception honoring John Colley - Is attending",
              "Reception honoring John Colley - 31923 - Is Registered"],
    free: true
  },

  { name: "Class of 2020 EMBA Graduation Ceremony",
    columns: [#"Class of 2020 EMBA Graduation Ceremony - Is attending",
              "Class of 2020 EMBA Graduation Ceremony - 31924 - Is Registered"],
    free: true
  },

  { name: "Visit Dardens Sands Family Grounds in the Washington D.C. Area",
    columns: [#"Visit Dardens Sands Family Grounds in the Washington D.C. Area - Is attending",
              "Visit Dardens Sands Family Grounds in the Washington D.C. Area - 31925 - Is Registered"],
    free: true
  },

  { name: "Career Development Student Engagement",
    columns: [#"Career Development Student Engagement - Is attending",
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
              "RW22 - CDC International Opportunities",              
              "Career Development Student Engagement - 31926 - Is Registered"],
    free: true
  }
    
]

FOXFIELD_EVENT_NAME = "Option 3 Foxfield Spring Races"

CONFLICTS = [
  { conflict_name: "Friday Morning",
    activities: [ "Strategic Insights from Eastern Philosophy", 
                  "Introducing the Future Year Scholars Program", 
                  "Pilates Class at Club Pilates",
                  "Fostering Connection and Belonging"
                ]
  },
  
  {
    conflict_name: "Friday Afternoon 1st Session",
    activities: [ "Tour of Morven Farms",
                  "The Future of Cryptocurrency",
                  "The Encore Case Finding Purposeful Work Later in Your Career",
                  "Revising the Narrative Womens Journey to Darden and Beyond"
                ]
  },
  
  {
    conflict_name: "Friday Afternoon 2nd Session",
    activities: [ "Tour of Morven Farms",
                  "2021-2022 Student Venture Showcase",
                  "Creating a Coaching Culture",
                  "Timeless Insights for Modern Leadership",
                  "Graduate Women in Business Reception"
                ]
  },
  
  {
    conflict_name: "Saturday Afternoon Abbott Society",
    activities: [ "AS Option 1 Abbott Society Luncheon",
                  "AS Option 2 Abbott Society Luncheon and Foxfield",
                  "AS Option 3 Luncheon and Private Wine Tasting at Pippin Hill Reserve Room"
                ]
  },
  
  {
    conflict_name: "Saturday Afternoon",
    activities: [ "Option 1 Darden Picnic and Field Day",
                  "Option 2 Afternoon at the Vineyard",
                  "Option 3 Foxfield Spring Races",
                  "Option 4 Class of 2002 Golf Outing"
                ]
  }
  
]















