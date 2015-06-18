Codebook.md

## Source data

Links: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The UCI HAR Dataset is briefly described as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## What to do

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
There are 68 columns in tidy data set , each is explained below

activity_labels is Factor with 6 levels.

Subject is int and all other variables are numeric

All columns in new data set represent average of original varaibles for each subject and activity

There are 180 observations - 30 subjects * 6 activities

| ColumnName	          |            Explanation                         |
|:-------------------------------|:------------------------------------------------------|
activity_labels  |  The labels for activities that were performed by the subject
subject  |  Identifier for Subject
tBodyAcc.mean.X  |  Mean Time for body linear acceleration signals in X axis
tBodyAcc.mean.Y  |  Mean Time for body linear acceleration signals in Y axis
tBodyAcc.mean.Z  |  Mean Time for body linear acceleration signals in Z axis
tBodyAcc.std.X  |  Standard deviation Time for body linear acceleration signals in X axis
tBodyAcc.std.Y  |  Standard deviation Time for body linear acceleration signals in Y axis
tBodyAcc.std.Z  |  Standard deviation Time for body linear acceleration signals in Z axis
tGravityAcc.mean.X  |  Mean Time for gravitational acceleration signals. in X axis
tGravityAcc.mean.Y  |  Mean Time for gravitational acceleration signals in Y axis
tGravityAcc.mean.Z  |  Mean Time for gravitational acceleration signals in Z axis
tGravityAcc.std.X  |  Standard deviation Time for gravitational acceleration signals in X axis
tGravityAcc.std.Y  |  Standard deviation Time for gravitational acceleration signals in Y axis
tGravityAcc.std.Z  |  Standard deviation Time for gravitational acceleration signals in Z axis
tBodyAccJerk.mean.X  |  Mean Time for body linear acceleration signals to obtain jerk signals. in X axis
tBodyAccJerk.mean.Y  |  Mean Time for body linear acceleration signals to obtain jerk signals in Y axis
tBodyAccJerk.mean.Z  |  Mean Time for body linear acceleration signals to obtain jerk signals in Z axis
tBodyAccJerk.std.X  |  Standard deviation Time for body linear acceleration signals to obtain jerk signals in X axis
tBodyAccJerk.std.Y  |  Standard deviation Time for body linear acceleration signals to obtain jerk signals in Y axis
tBodyAccJerk.std.Z  |  Standard deviation Time for body linear acceleration signals to obtain jerk signals in Z axis
tBodyGyro.mean.X  |  Mean Time for body angular velocity. in X axis
tBodyGyro.mean.Y  |  Mean Time for body angular velocity in Y axis
tBodyGyro.mean.Z  |  Mean Time for body angular velocity in Z axis
tBodyGyro.std.X  |  Standard deviation Time for body angular velocity in X axis
tBodyGyro.std.Y  |  Standard deviation Time for body angular velocity in Y axis
tBodyGyro.std.Z  |  Standard deviation Time for body angular velocity in Z axis
tBodyGyroJerk.mean.X  |  Mean Time for body angular velocity to obtain jerk signals. in X axis
tBodyGyroJerk.mean.Y  |  Mean Time for body angular velocity to obtain jerk signals in Y axis
tBodyGyroJerk.mean.Z  |  Mean Time for body angular velocity to obtain jerk signals in Z axis
tBodyGyroJerk.std.X  |  Standard deviation Time for body angular velocity to obtain jerk signals in X axis
tBodyGyroJerk.std.Y  |  Standard deviation Time for body angular velocity to obtain jerk signals in Y axis
tBodyGyroJerk.std.Z  |  Standard deviation Time for body angular velocity to obtain jerk signals in Z axis
tBodyAccMag.mean.  |  Mean Time of magnitude for body linear acceleration signals
tBodyAccMag.std.  |  Standard deviation Time for magnitude of body linear acceleration signals
tGravityAccMag.mean.  |  Mean Time for magnitude of gravitational acceleration signals.
tGravityAccMag.std.  |  Standard deviation Time for magnitude of gravitational acceleration signals
tBodyAccJerkMag.mean.  |  Mean Time for magnitude of body linear acceleration signals to obtain jerk signals.
tBodyAccJerkMag.std.  |  Standard deviation Time for magnitude of body linear acceleration signals to obtain jerk signals
tBodyGyroMag.mean.  |  Mean Time for magnitude of body angular velocity signals.
tBodyGyroMag.std.  |  Standard deviation Time for magnitude of body angular velocity signals
tBodyGyroJerkMag.mean.  |  Mean Time for magnitude of body angular velocity to obtain jerk signals.
tBodyGyroJerkMag.std.  |  Standard deviation Time for magnitude of body angular velocity to obtain jerk signals
fBodyAcc.mean.X  |  Mean value of frequency domain signals for t for tBodyAcc in X axis
fBodyAcc.mean.Y  |  Mean value of frequency domain signals for t for tBodyAcc in Y axis
fBodyAcc.mean.Z  |  Mean value of frequency domain signals for tBodyAcc in Z axis
fBodyAcc.std.X  |  Standard deviation of frequency domain signals for tBodyAcc in X axis
fBodyAcc.std.Y  |  Standard deviation of frequency domain signals for tBodyAcc in Y axis
fBodyAcc.std.Z  |  Standard deviation of frequency domain signals for tBodyAcc in Z axis
fBodyAccJerk.mean.X  |  Mean value of frequency domain signals for tBodyAccJerk in X axis
fBodyAccJerk.mean.Y  |  Mean value of frequency domain signals for tBodyAccJerk in Y axis
fBodyAccJerk.mean.Z  |  Mean value of frequency domain signals for tBodyAccJerk in Z axis
fBodyAccJerk.std.X  |  Standard deviation of frequency domain signals for tBodyAccJerk in X axis
fBodyAccJerk.std.Y  |  Standard deviation of frequency domain signals for tBodyAccJerk in Y axis
fBodyAccJerk.std.Z  |  Standard deviation of frequency domain signals for tBodyAccJerk in Z axis
fBodyGyro.mean.X  |  Mean value of frequency domain signals for tBodyGyro in X axis
fBodyGyro.mean.Y  |  Mean value of frequency domain signals for tBodyGyro in Y axis
fBodyGyro.mean.Z  |  Mean value of frequency domain signals for tBodyGyro in Z axis
fBodyGyro.std.X  |  Standard deviation of frequency domain signals for tBodyGyro in X axis
fBodyGyro.std.Y  |  Standard deviation of frequency domain signals for tBodyGyro in Y axis
fBodyGyro.std.Z  |  Standard deviation of frequency domain signals for tBodyGyro in Z axis
fBodyAccMag.mean.  |  Mean value of frequency domain signals for tBodyAccMag
fBodyAccMag.std.  |  Standard deviation of frequency domain signals for tBodyAccMag
fBodyBodyAccJerkMag.mean.  |  Mean value of frequency domain signals for tBodyBodyAccJerkMag
fBodyBodyAccJerkMag.std.  |  Standard deviation of frequency domain signals for tBodyBodyAccJerkMag
fBodyBodyGyroMag.mean.  |  Mean value of frequency domain signals for tBodyBodyGyroMag
fBodyBodyGyroMag.std.  |  Standard deviation of frequency domain signals for tBodyBodyGyroMag
fBodyBodyGyroJerkMag.mean.  |  Mean value of frequency domain signals for tBodyBodyGyroJerkMag
fBodyBodyGyroJerkMag.std.  |  Standard deviation of frequency domain signals for tBodyBodyGyroJerkMag
