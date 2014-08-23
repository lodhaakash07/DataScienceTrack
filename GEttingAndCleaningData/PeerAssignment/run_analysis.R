# Akash Lodha
# Coursera Specialisation
# Course 3- Getting And Cleaning data
# Peer Assignment

## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## I have uploaded the data too so run directly
## Date -[1] "Sat Aug 23 15:12:41 2014"

## No need to install the packages if you have already done it
install.packages("data.table")
library(data.table)
## No need to install the packages if you have already done it
install.packages("reshape2")
library(reshape2)

if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,method="curl",destfile="getdata_projectfiles_UCI HAR Dataset.zip")  
}

## Extract the zip file manually

### For the Test data

# Load the activity lables
activities_label<- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load the X_test and y_test data.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# From the features file read the features
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Read the subjects of test data
subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# We need to Extract only the measurements on the mean and standard deviation.
need_features <- grepl("mean|std", features)

# Label the X_test dataset with the features
names(X_test) <- features

# Extract only the measurements on the mean and standard deviation 
X_test = X_test[,need_features]

# Load activity labels
y_test[,2] = activities_label[y_test[,1]]

names(y_test) = c("Activity_ID", "Activity_Label")
names(subject) = "subject"

# Bind data
test_data <- cbind(subject,y_test,X_test)


## For the train data

# Load and process X_train & y_train data.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(X_train) = features


# Extract only the measurements on the mean and standard deviation 
X_train = X_train[,need_features]

# Load activity data
y_train[,2] = activities_label[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Bind data
train_data <- cbind(subject_train,y_train, X_train)

# Merge test and train data
data <-  rbind(test_data, train_data)

data <- data.table(data)

id_labels = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)
# Apply mean function to dataset using dcast function
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)

##Write the tidy_data to a file
write.table(tidy_data, file = "tidy_data.txt")