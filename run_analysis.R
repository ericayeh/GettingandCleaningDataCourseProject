# Downloading the data from the provided website.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="./zipdata.zip", mode="wb")
unzip("./zipdata.zip", exdir="./UCI")

# Reading the activity files.
testActivity <- read.table("./UCI//dataset/test/y_test.txt") 
trainActivity <- read.table("./UCI//dataset/train/y_train.txt")

# Merging the activity files and naming the variables.
Activity <- rbind(testActivity, trainActivity)
names(Acticity) <- "activity"


# Reading the subject files.
testSubject <- read.table("./UCI//dataset/test/subject_test.txt")
trainSubject <- read.table("./UCI//dataset/train/subject_train.txt")

# Merging the subject files and naming the variables.
Subject <- rbind(testSubject, trainSubject)
names(Subject) <- "subject"

# Reading the features files.
X_test <- read.table("./UCI//dataset/test/X_test.txt") 
X_train <- read.table("./UCI//dataset/train/X_train.txt") 

# Reading the file that contains the names of the features.
features <- read.table("./UCI//dataset/features.txt") 
# The labels of the columns are in the second column.
labels <- features[,2]

# Labelling the dataset with variables names.
names(X_test) <- labels
names(X_train) <- labels

# Merging the training and the test data sets to create one data set.
# Using "rbind()" to add one dataset at the end of the other.
X_merge <- rbind(X_test, X_train)


# Extracting only the measurements on the mean "mean()" and standard deviation "std()". 
# In greping in R, \\(\\) should be used to represent the special characters.
select_data <- X_merge[, grep("mean\\(\\)|std\\(\\)", names(X_merge))]

# Merging all the data into a single data frame
desc_data <- cbind(Activity, Subject)
data <- cbind(desc_data, select_data)

# Using descriptive activity names to name the activities in the data set.
# Reading the descriptive activity names.
activity_labels <- read.table("./UCI/dataset/activity_labels.txt")
# Factoring the label names into the "activity" variable.
data$activity <- factor(data$activity, labels = activity_labels$V2)

# Appropriately labelling the data set with descriptive variable names. 
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))


# Creating a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
library(plyr);
# The dot (.) in the "aggregate()" function means "all other variables." 
# Useful to avoid specifyng all the column names.
data2 <- aggregate(. ~ subject + activity, data, mean)
data2 <- data2[order(data2$subject, data2$activity),]

# Creating a text file of the new and tidy data.
write.table(data2, file = "tidy_data.txt", row.name=FALSE)



