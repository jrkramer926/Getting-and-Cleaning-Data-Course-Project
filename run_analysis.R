#Getting and Cleaning Data Course Project
#by Jack Kramer

##Instructions:
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement.
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names.
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


library(plyr)
##below sets my working directory
setwd("\\Users\\kcaj2\\Desktop\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset")

##below reads files from the "train" folder in my directory
x_train <- read.table("train\\X_train.txt")
y_train <- read.table("train\\y_train.txt")
subject_train <- read.table("train\\subject_train.txt")

##below reads files from the "test" folder in my directory
x_test <- read.table("test\\X_test.txt")
y_test <- read.table("test\\y_test.txt")
subject_test <- read.table("test\\subject_test.txt")

##below will combine the "train" and "test" data sets for x, y, and subject.

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train,subject_test)
colnames(subject_data) <- "subject"

##below will read in features.txt (column name map for x_data) and name the columns appropriately.
features <- read.table("features.txt")
colnames(x_data) <- features[1:561,2]

#below will identify which columns have the words 'mean()' and 'std()' in it. We will then subset the data for those columns.
column_index <- grep("-mean\\()|-std\\()", features[,2])
final_x <- x_data[,column_index]

##below will read in activity_labels.txt and label rows accordingly
activity_labels <- read.table("activity_labels.txt")
activity <- merge(y_data, activity_labels)
final_y <- data.frame(activity[1:10299,2])
colnames(final_y) <- "activity"

##below combines the final data sets into one nice sheet
final_data <- cbind(subject_data,final_y, final_x)

##below summarizes final_data and provides the average for each uniqie combination
#of subject and activity
tidydata <- ddply(final_data, .(subject, activity), function(x) colMeans(x[,3:ncol(final_data)]))

##below exports our tidydata to the directory
write.table(tidydata,"tidydata.txt", row.names = FALSE)
