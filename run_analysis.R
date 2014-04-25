## Download file and unzip contents into local data directory
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "./data/raw_sensor_data.zip"
## Make sure curl is installed on this system
## Following Steps are dependent on curl
download.file(fileUrl, destfile, method="curl")
unzip(destfile, exdir="./data")

## Read data into data frames
subject.train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
y.train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
x.train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")

subject.test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
y.test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
x.test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")

## Combine data into single data frame
train <- cbind(subject.train, y.train, x.train)
test <- cbind(subject.test, y.test, x.test)
data.initial <- rbind(train, test)

## Label data using features.txt
features <- read.table("./data/UCI HAR Dataset/features.txt")
names(data.initial) <- c("subject", "activity", as.character(features$V2))

## Order data by subject, then activity in ascending order
data.ordered <- data.initial[order(data.initial$subject,data.initial$activity),]

## Extract only the columns containing mean and std measurements
data.extracted <- data.ordered[,c("subject", "activity", 
                                  grep("mean", names(data.ordered), value=TRUE),
                                  grep("std", names(data.ordered), value=TRUE))]

## Get descriptive activity labels
activity.labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")


## Transform data frame into matrix to speed up operations
#extracted.matrix <- as.matrix(data.extracted)

## Loop through activity id's and replace data frame activity id's that match
## with descriptive labels
for(n in 1:6) {
    data.extracted[data.extracted$activity==n,]$activity <- as.character(activity.labels[activity.labels$V1==n,]$V2)
}

## Aggregate the data frame to get the average of each variable for each activity
## of each subject
data.average <- aggregate(data.extracted[,3:ncol(data.extracted)], 
                          by=list(data.extracted$subject, data.extracted$activity), 
                          FUN="mean", simplify=TRUE)

## Rename subject and activity columns after aggregate
colnames(data.average)[1] <- "subject"
colnames(data.average)[2] <- "activity"

## Write out tidy data sets to external text file
write.table(data.extracted, file="./data/all_tidy_data.txt", sep='\t', quote=FALSE)
write.table(data.average, file="./data/average_tidy_data.txt", sep='\t', quote=FALSE)