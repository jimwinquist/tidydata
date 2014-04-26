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
* Writes this extracted labeled data frame to all_tidy_data.txt in the working
directory
* Then the extracted labeled data is aggregated to get the average measurements
of each variable for each activity and each test subject.
* This second aggregated data set is written to average_tidy_data.txt in the
working directory

## Code Book
