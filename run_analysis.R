# Assuming we have "UCI HAR Dataset" directory in working directory.
#Load dplyr package
library(dplyr)
library(plyr)
setwd("UCI HAR Dataset")
#load activity labels
activity_names <- read.table("./activity_labels.txt")
# get the test data
test_data <- read.table("./test/X_test.txt")
activity_labels_test <- read.table("./test/y_test.txt")
sub_test <- read.table("./test/subject_test.txt")
# add the new columns for activities and subject data
new_test <- cbind(test_data, activity_labels_test, sub_test)

# get the training data
train_data <- read.table("./train/X_train.txt")
activity_labels_train <- read.table("./train/y_train.txt")
sub_train <- read.table("./train/subject_train.txt")
# add the new columns for activities and subject data
new_train <- cbind(train_data, activity_labels_train, sub_train)

merge_data  <- rbind(new_test, new_train)

#variable names
col_names<- read.table("./features.txt")
#assigning the column names to meged data
names(merge_data) <- c(as.character(col_names[,2]), "activity", "subject")
#removing duplicate names
merge_data_nodup <-merge_data[, !duplicated(colnames(merge_data))]
#getting only variables related to mean and standard deviation
mean_std_cols <- select(merge_data_nodup, matches("(mean\\(\\)|std\\(\\)|subject|activity)"))

#applying activity labels to IDs
mean_std_cols_labels <- mutate(mean_std_cols,activity_labels=activity_names[,2][activity])

#giving valid names to columns
tmp <- select(mean_std_cols_labels,-activity)
names <- sub("...", ".",make.names(colnames(tmp)), fixed=TRUE)
names(tmp) <-  sub("..",".", names,fixed=TRUE)
# calculate the average for all the variables for each subject and activity.
result <- ddply(tmp, c("activity_labels", "subject"), numcolwise(mean))
# generate the tidy result set in a file.
write.table(result, file = "tidyData.txt", col.names=TRUE, row.name=FALSE, quote=FALSE)
