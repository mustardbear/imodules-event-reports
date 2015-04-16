# iModules Event Reports

Generates useful reports for activity based (new) iModules events from a full custom export file.

## Features

- Creates a merged version of the full export that combines multiple rows for the same person into a single row
- Creates a report for each activity configured that includes data for each person and their activity registration information
- Creates a dashboard report that summarizes the number of people registered for each activity by class year

Look in the data/sample directory for an example of these reports:

- sample_registrations.csv - the full event export as generated in iModules
- merged_sample_registrations.csv - merged version of the full export
- 2000 Friday Night Class Event.csv, Campus Tour.csv, Reunion 2015.csv, Welcome Cocktail Reception.csv - individual activity reports
- dashboard.csv - the summarized dashboard report

Assumptions: You must include the imodules_id column in your report - it is used to identify multiple rows for a single individual.