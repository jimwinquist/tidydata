## Study Design
The following documents the process I used to clean up the "Human Activity
Recognition Using Smartphones Data Set" as part of the Coursera course "Getting
and Cleaning Data" through the Johns Hopkins Data Science Specialization.

More info about the dataset can be found at the address below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Assumptions
* You must be connected to the internet to run the script since it downloads
raw data from the internet
* Operating System must have curl installed since the download uses the curl
method
* No additional R packages are required.
* Running the script will create a directory named "data" along side the script
that contains all of the necessary data files for processing

### System Info
The system that I used to test the script is:
* Mac OSX 10.9.2
* 2.6GHz Intel Core i7
* 16GB RAM
* R 3.0.3 GUI 1.63 Snow Leopard build (6660)
* RStudio Version 0.98.501

### Process
The run_analysis.R script follows the process below to download the raw data
process it and return 2 tidy data sets. One contains all of the extracted data
with labels and another that just contains the averages of all the extracted
data grouped by test subject and activity. The output files are in
a tab-separated text format.

* Downloads raw data from the internet into a directory called "data" inside
the current working directory
* Unzips the raw data inside the data directory
* Combines the data into a single data frame
* Labels all variables appropriately using features.txt
* Sort the data by test subject id and activity id in ascending order
* Extracts only the variables containing measurements for mean and std
(I made the assumption that meanFreq() variables should be included as well
as mean() variables for each measurement)
* Replaces column of activity id's with descriptive activity labels provided in
activity_labels.txt
* Then the extracted labeled data is aggregated to get the average measurements
of each variable for each activity and each test subject.
* This second aggregated data set is written to tidy_data.txt in the
working directory

## Code Book
The output tidy data set contains 81 feature variables(columns) and
180 observations(rows)(6 activities * 30 test subjects)
The feature variables are detailed below:
### subject
        * An integer from 1-30
        * An identifier of the subject who carried out the experiment

### activity
        *A character vector containing a descriptive label for each activity
        performed as part of the experiment
        *LAYING
        *SITTING
        *STANDING
        *WALKING
        *WALKING_DOWNSTAIRS
        *WALKING_UPSTAIRS

### tBodyAcc-mean()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyAcc-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyAcc-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-mean()-X
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-mean()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-mean()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-mean()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyAccMag-mean()
        Average value of this meaurement for each activity ordered by subject

### tGravityAccMag-mean()
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerkMag-mean()
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroMag-mean()
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerkMag-mean()
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-mean()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-meanFreq()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-meanFreq()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-meanFreq()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-mean()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-meanFreq()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-meanFreq()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-meanFreq()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-mean()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-mean()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-mean()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-meanFreq()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-meanFreq()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-meanFreq()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAccMag-mean()
        Average value of this meaurement for each activity ordered by subject

### fBodyAccMag-meanFreq()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyAccJerkMag-mean()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyAccJerkMag-meanFreq()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroMag-mean()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroMag-meanFreq()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroJerkMag-mean()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroJerkMag-meanFreq()
        Average value of this meaurement for each activity ordered by subject

### tBodyAcc-std()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyAcc-std()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyAcc-std()-Z
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-std()-X
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-std()-Y
        Average value of this meaurement for each activity ordered by subject

### tGravityAcc-std()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-std()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-std()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerk-std()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-std()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-std()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyGyro-std()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-std()-X
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-std()-Y
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerk-std()-Z
        Average value of this meaurement for each activity ordered by subject

### tBodyAccMag-std()
        Average value of this meaurement for each activity ordered by subject

### tGravityAccMag-std()
        Average value of this meaurement for each activity ordered by subject

### tBodyAccJerkMag-std()
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroMag-std()
        Average value of this meaurement for each activity ordered by subject

### tBodyGyroJerkMag-std()
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-std()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-std()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAcc-std()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-std()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-std()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyAccJerk-std()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-std()-X
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-std()-Y
        Average value of this meaurement for each activity ordered by subject

### fBodyGyro-std()-Z
        Average value of this meaurement for each activity ordered by subject

### fBodyAccMag-std()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyAccJerkMag-std()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroMag-std()
        Average value of this meaurement for each activity ordered by subject

### fBodyBodyGyroJerkMag-std()
        Average value of this meaurement for each activity ordered by subject

