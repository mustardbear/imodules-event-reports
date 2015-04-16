# iModules Event Reports

Generates useful reports for activity based (new) iModules events from a full custom export file.

## Features

- Creates a merged version of the full export that combines multiple rows for the same person into a single row
- Creates a report for each activity configured that includes data for each person and their activity registration information
- Creates a dashboard report that summarizes the number of people registered for each activity by class year

Look in the data/sample directory for an example of these reports:

- [sample_registrations.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/sample_registrations.csv) - the full event export as generated in iModules
- [merged_sample_registrations.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/merged_sample_registrations.csv) - merged version of the full export
- [2000 Friday Night Class Event.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/2000%20Friday%20Night%20Class%20Event.csv), [Campus Tour.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/Campus%20Tour.csv), [Reunion 2015.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/Reunion%202015.csv), [Welcome Cocktail Reception.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/Welcome%20Cocktail%20Reception.csv) - individual activity reports
- [dashboard.csv](https://github.com/mustardbear/imodules-event-reports/blob/master/data/sample/dashboard.csv) - the summarized dashboard report

## Requirements

- Ability to run Ruby 2.x scripts
- Bundler
- A custom export from an Activity Driven Event that allows guests. The report must includes columns for:
   - last name
   - first name
   - class year
   - imodules id
   - guest of (automatically included)

## Usage

Clone/download this repository, cd to the directory, and run bundle install. Once done you can check to see if it's working by running `ruby create_reports.rb -e sample` - this will run the report generator on the sample registration file. If you don't receive any errors you are ready to move on to configuring your own event.

### Configuration

1. First create a new directory in the data directory that will hold your reports. No spaces, please. For example, if this event is your 2016 homecoming event you can create a directory in data with the name homecoming15. When you run your custom export you will place the resulting .csv file in this directory.

2. Copy the config/sample.rb file and rename the copy to correspond to your event, e.g. homecoming15.rb.

3. Modify the new configuration file to reflect your event. There are four sections:

   - **General configuration** (at the top): this defines where your reports will live and the name of the custom export and the merged report that the script will generate.
   - **Summables**: This is a list of the columns in your export that should be added together when merging rows. Usually these are the columns for fees and that have a 1, 0, -1, or blank in the for an activity.
   - **Person Definition**: This is the columns from the export that you want in each of the activity report for each person. At a minimum you must have definitions for last name, first name, class year, and guest of. **NOTE** the class year column cannot be blank - if you have blank class years use Excel to replace the blanks/empty cells with a string of your choice, like "NONE". You can add others if you like, such as email or an offline system id. Each column has three parts that you need to define:
      - **system name**: The name the system will use for the column - this needs to be an acceptable symbols in Ruby so no spaces or odd characters and must end in : **do not change this for last name, first name, class year, and guest of** - the are used by the system.
      - **column_name**: The actual column header from the export (copy and paste, must be in quotes)
      - **output_column_name**: the column header as you would like it to appear in activity reports (can be the same as column name)
   - **Activities** This is where you define the activities from the custom export that you would like reports for. Each activity has two parts:
      - **name*: The name of the activity as you would like it to appear in the dashboard and that will be the name of the report file.
      - **columns*: The columns from the custom export that are relevant to this event. The last column listed should be a TRUE/FALSE column that will be used to determine if someone is registered for that event. It's usually the last column that appears for that activity in the export.
      
4. Modify the config.rb file. In the EVENTS list add an entry for your event. Each entry has two parts:
   - short name: this is how you will tell the create reports script which event you want it to run on. For homecoming something like `h15:` would be fine.
   - The name of the configuration file you created in step 3 (must be in quotes).
   
You should now be able to run the reports by going to the main directory and typing ruby create_reports.rb -e h15, where h15 is the short name created above.
