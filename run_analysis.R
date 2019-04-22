## 1. Check if data set exists and if not download and unzip file (in working directory).
filename <- "getdata-projectfiles-UCI HAR Dataset.zip"

# Checking if file is already downloaded
if (!file.exists(filename)){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, filename, method="curl")
}  

# Checking if datasset exists and if not unzip file 
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

## 2. Merging the training and the test sets to create one data set.
# Assigning dataframes to the textfiles and assigning columnnames to dataframes
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityId", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subjectId")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityId")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subjectId")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityId")

# Merging subject, X, and Y to mergedData
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
mergedData <- cbind(subject, Y, X)

# Reading column names and structure of mergedData
colNames <- colnames(mergedData)
colNames
str(mergedData)

## 3. Extracting only the measurements on the mean and standard deviation for each measurement.
tidyData <- mergedData %>% select(subjectId, activityId, contains("mean"), contains("std"))
colnames(tidyData)

# Create vector for defining Id's, mean and standard deviation
mean_and_std <- (grepl("subjectId" , colNames) | 
                         grepl("activityId" , colNames) | 
                         grepl("[Mm]ean." , colNames) | 
                         grepl("std.." , colNames) 
)

# Making nessesary subset from mergedData
tidyDataMeanStd <- mergedData[ ,mean_and_std == TRUE]
colnames(tidyDataMeanStd)

## 4. Using descriptive activity names to name the activities in the data set.
tidyDataMeanStd$activityId <- activity_labels[tidyDataMeanStd$activityId, 2]
# Order data by SubjectId, ActivityId
tidyDataMeanStd <- tidyDataMeanStd[order(tidyDataMeanStd$subjectId, tidyDataMeanStd$activityId),]
str(tidyDataMeanStd)

## 5. Appropriately labels the data set with descriptive variable names.
names(tidyDataMeanStd)[2] = "activity"
names(tidyDataMeanStd)<-gsub("Acc", "Accelerometer", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("Gyro", "Gyroscope", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("BodyBody", "Body", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("Mag", "Magnitude", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("^t", "Time", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("^f", "Frequency", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("tBody", "TimeBody", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("angle", "Angle", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("mean", "Mean", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub("std", "Std", names(tidyDataMeanStd))
names(tidyDataMeanStd)<-gsub(".", "", names(tidyDataMeanStd),fixed = TRUE)

colnames(tidyDataMeanStd)
View(tidyDataMeanStd)


## 6. Creating a second, independent tidy data set from dataset in step 4with the average.
# of each variable for each activity and each subject
tidyDataAverage <- aggregate(.~subjectId + activity, tidyDataMeanStd, mean)
tidyDataAverage <- tidyDataAverage[order(tidyDataAverage$subjectId, tidyDataAverage$activity),]
str(tidyDataAverage)

## 7. Writing second tidy data set in txt file.
write.table(tidyDataAverage, "tidyDataAverage.txt", row.name=FALSE)

