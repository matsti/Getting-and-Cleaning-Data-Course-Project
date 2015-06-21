### run_analysis.R, a script to produce tidy data
## Getting & Cleaning Data Course Project

## 1. Uploading the data files
# Setting the location of the data files relative to the working directory
# Test files
X_test_file <- "./UCI HAR Dataset/test/X_test.txt"
y_test_file <- "./UCI HAR Dataset/test/y_test.txt"
subject_test_file <- "./UCI HAR Dataset/test/subject_test.txt"
# Train files
X_train_file <- "./UCI HAR Dataset/train/X_train.txt"
y_train_file <- "./UCI HAR Dataset/train/y_train.txt"
subject_train_file <- "./UCI HAR Dataset/train/subject_train.txt"
# Activity labels file
activity_labels_file <- "./UCI HAR Dataset/activity_labels.txt"
# Feature file
features_file <- "./UCI HAR Dataset/features.txt"

#Reading the files into memory
# Files where the data is separated by one or multiple white space, data is
# numerical but treated as character to convert later
X_test <- read.table(X_test_file, header = FALSE, sep = "",
                     colClasses = "character")
X_train <- read.table(X_train_file, header = FALSE, sep = "",
                      colClasses = "character")

# Data containing the variable names for X_train.txt and X_test.txt
features <- read.csv(features_file, header = FALSE, sep = " ",
                     colClasses = "character")

# Activity, activity label and subject training data uploaded as factor
# Data is one element per line so no separators are used
y_test <- read.csv(y_test_file, header = FALSE, sep = "",
                   stringsAsFactors=TRUE)
y_train <- read.csv(y_train_file, header = FALSE, sep = "",
                    stringsAsFactors=TRUE)
subject_test <- read.csv(subject_test_file, header = FALSE, sep = "",
                         stringsAsFactors=TRUE)
subject_train <- read.csv(subject_train_file, header = FALSE, sep = "",
                          stringsAsFactors=TRUE)
activity_labels <- read.csv(activity_labels_file, header = FALSE, sep = "",
                            stringsAsFactors=TRUE)

## 2. Checking the size of various datasets to make sure they fit together
# As per David Hood's diagram
# https://class.coursera.org/getdata-015/forum/thread?thread_id=112

# Number of columns
if(ncol(X_test)==ncol(X_train) & ncol(X_test)==nrow(features)) {
        cat("X_train, X_test have as many columns as there are column headings
            in features:", ncol(X_test))
}

# Number of rows for the train data
if(nrow(X_train)==nrow(subject_train) & nrow(X_train)==nrow(y_train)) {
        cat("The train data has the same number of observations:",
            nrow(y_train))
}

# Number of rows for the test data
if(nrow(X_test)==nrow(subject_test) & nrow(X_test)==nrow(y_test)) {
        cat("The test data has the same number of observations:", nrow(y_test))
}

## 3. Extracting the measurements of the mean and standard deviation 
# Populating a vector with the positions containing mean() or std(),
# but not meanFreq() or tBodyAccMean. Names are in the second column
column_keepers <- grep(("std\\(\\)|mean\\(\\)"), features$V2)
X_train <- X_train[, column_keepers]
X_test <- X_test[, column_keepers]

## 4. Collating the data
# Adding subject data to X_train
X_train <- cbind(X_train, subject_train)
# Adding activity data to X_train
X_train <- cbind(X_train, y_train)
# removing the old variables
remove(subject_train, y_train)

# Adding subject data to X_test
X_test <- cbind(X_test, subject_test)
# Adding activity data to X_train
X_test <- cbind(X_test, y_test)
# removing the old variables
remove(subject_test, y_test)

# Adding X_test to X_train
X_train <- rbind(X_train, X_test)
# removing the old variables
remove(X_test)

## 5. Naming the data
# Simplifying the name of the data columns, removing parenthesis
n <- gsub("\\(\\)", "", features[column_keepers, ]$V2)
# Replacing hyphens with dots
n <- gsub("\\-", ".", n)
# Naming the columns
names(X_train) <- c(n, "Subject", "Activity")
# Naming the activities
X_train$Activity <- activity_labels[X_train$Activity, 2]

## 6. Transforming the data to numeric
X_train[, 1:66] <- sapply(X_train[, 1:66], as.numeric)

## 7. Rearranging the columns
X_train <- X_train[, c(67, 68, 1:66)]

## 8. Using dplyr do aggregate the data
library(dplyr)
X_train <- tbl_df(X_train)
suject_activity <- group_by(X_train, Subject, Activity)
average <- summarise_each(suject_activity, funs(sum))
obs <- nrow(X_train)
average[, 3:68] <- average[, 3:68]/obs
# Displaying the data
average

## 9. Writing the aggregated data to the average.txt file
write.table(average, "average.txt", row.name=FALSE)


