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
* Mac OSX 10.9.2 16GB RAM
* R 3.0.3 GUI 1.63 Snow Leopard build (6660)

### Process
The run_analysis.R script follows the process below to download the raw data
process it and return 2 tidy data sets. One contains all of the extracted data
with labels and another that just contains the averages of all the extracted
data grouped by test subject and activity. The output files are in
a tab-separated text format.
STEPS
* Downloads raw data from the internet into a directory called "data"
* Unzips the raw data inside the data directory
*

## Code Book
