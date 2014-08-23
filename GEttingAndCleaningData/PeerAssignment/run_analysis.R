# Akash Lodha
# Coursera Specialisation
# Course 3- Getting And Cleaning data

## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


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

#Write the data set created into a file "tidy data.txt"
write.table("tidy_data.txt",row.names= F,col.names=T)