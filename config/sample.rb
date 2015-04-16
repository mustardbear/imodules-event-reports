# For reunion 2015
DIRECTORY = 'data/sample/'
SOURCE = "#{DIRECTORY}sample_registrations.csv"
MERGED = "#{DIRECTORY}merged_sample_registrations.csv"

# Summable for Reuion 2014
SUMMABLE = [
  "Welcome Cocktail Reception - RW15 - Friday Cocktail Reception",
  "Welcome Cocktail Reception - RW15 - Friday Cocktail Reception - total_price_paid",
  "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee",
  "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee - total_price_paid",
  "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala",
  "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala - total_price_paid"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First Name", output_column_name: "First Name" },
  last_name: { column_name: "Last Name", output_column_name: "Last Name"  },
  pref_first_name: { column_name: "pref_first_name", output_column_name: "Preferred First Name" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "Class Year", output_column_name: "Class Year" },
  guest_of: { column_name: "Guest of", output_column_name: "Guest Of" }
}

ACTIVITIES = [

  { name: "Reunion 2015",
    columns: ["Registrant - 9822 - Is Registered"]
  },

  { name: "Campus Tour",
    columns: ["Campus Tour - Is attending",
              "Campus Tour - 9842 - Is Registered"]
  },

  { name: "Welcome Cocktail Reception",
    columns: ["Welcome Cocktail Reception - Is attending",
              "Welcome Cocktail Reception - RW15 - Friday Cocktail Reception",
              "Fee Name (Welcome Cocktail Reception - RW15 - Friday Cocktail Reception)",
              "Welcome Cocktail Reception - RW15 - Friday Cocktail Reception - total_price_paid",
              "Welcome Cocktail Reception - 9876 - Is Registered"]
  },

  { name: "2000 Friday Night Class Event",
    columns: ["2000 Friday Night Class Event - Is attending",
              "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee",
              "Fee Name (2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee)",
              "2000 Friday Night Class Event - RW15 - Friday 2000 Event Fee - total_price_paid",
              "2000 Friday Night Class Event - 9893 - Is Registered"]
  },

  { name: "Evening Cocktail Dinner Gala",
    columns: ["Evening Cocktails Dinner  Gala - Is attending",
              "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala",
              "Fee Name (Evening Cocktails Dinner  Gala - RW15 - Saturday Gala)",
              "Evening Cocktails Dinner  Gala - RW15 - Saturday Gala - total_price_paid",
              "Evening Cocktails, Dinner & Gala - 10036 - Is Registered"]
  }
  
]

