The dataset includes the following files:
=========================================
- 'README.md'

- 'codebook.md': explains all the columns in the tidy data set.

- 'run_analysis.R': This is the script to convert raw data into tidy data

- 'tidyData.txt': This is the tidy data set which is the result of above script run_analysis.R

run_analysis.R
==============
These are the steps this script does:
  - Load libraries
  - set the working directory to "UCI HAR Dataset"
  - load activity labels
  - load the test data
  - add the new columns for activities and subject data
  - do the same steps for training data
  - merge them using rbind
  - assign the column names to merged data
  - removing duplicate names
  - getting only variables related to mean and standard deviation
  - applying activity labels to IDs
  - give valid names to columns
  - calculate the average for all the variables for each subject and activity.
  - generate the tidy result set in a file.

