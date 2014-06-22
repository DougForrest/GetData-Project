# Getting and Cleaning Data Project

## Steps to run the script run_analysis.R
- Download and unzip the [project data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Change current directory and set the working directory to the `UCI HAR Dataset` folder
- Download CRAN Package plyr if necessary <code>install.packages('plyr')</code>
- Source the script to run <code>source('~/run_analysis.R')</code>
- A cleaned data set will be created call 'tidydata.txt' in your working directory
- Optionally - The read in the tidydata.txt file in to your environment with the following R command: <code>tidydata = read.table("tidydata.txt", header=TRUE)</code>

### Goal
 The goal of this project is to demonstrate my ability to transform a messy data set to a tidy data set which allows for further processing and analysis.  

 The approach to clean the data utilized the principals set out in [Hadley Wickham's Tidy Data paper.](http://vita.had.co.nz/papers/tidy-data.pdf)
 
 The project is created in accordance with the coursera course [Getting and Cleaning Data] (https://www.coursera.org/course/getdata) by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD as part of the John Hopkins Data Science Specialization. 


### Summary steps to process
 The data was processed using R version 3.0.3 (2014-03-06) using the R script called run_analysis.R.  

 The R script performs the following operations:
 1. Merge the training and test data sets
 2. Label the columns with descriptive variable names
 3. Label the numeric activity names with descriptive character strings
 4. Extract the variables related to standard deviation and mean 
 5. Combine the data to a single data frame
 6. Summarize the data set by subject and activity with the mean of each variable
 7. Export the data set to tidydata.txt file 

### Details

The script assumes you have downloaded and unzipped the Project Data to your computer.  The training, test, and meta data is then read into separate data frames in R.  

Step 1: Merge the training and test sets

The test sets are then appended to the relevant training set set resulting in three separate data frames.  The data frames are not combined to a single data frame in this step to avoid needless subsetting of the data as the steps below pertain to specific sections of the data.

Step 2: Label the columns with descriptive variable names

The variable names loaded from features.txt of the data set are parsed to clean the variable names by first setting all characters to lowercase.  

Then undesired text is then replaced with the desired text by looping through a list of defined character attributes and performing text substitution on the features data frame. Lowercase names we retained to enable easy subsetting post processing.  Spaces, and special characters were removed and replaced with underscores when applicable to enable easy import to other software applications.

The columns of the data frames created in step 1 are then labeled with the cleaned and desired variable names.

Step 3: Label the numeric activity names with descriptive character strings

The activity labels in the y_data dataframe are then set to strings based on descriptive labels in activity_labels.txt by looping through the activity_labels and performing a text substitution on the y_data data frame.  

Step 4: Extract the variables related to standard deviation and mean

The extraction is performed first by setting a list of desired column numbers to extract from the x_data data frame by matching strings in the cleaned features table containing the desired strings "mean" and "std".  

All column names matching the desired strings are extracted including 7 columns toward the tail end of the table which contain the word "Mean."  As there is some ambiguity regarding which columns to extract, I have taken the conservative approach to extract all possible relevant data, which can easily be eliminated later if necessary by the data analyst.  

The list of column numbers meeting the matching criteria is then used to extract the relevant columns from the x_data data frame.

Step 5: Combine the data to a single data frame

Now that the parsing of the individual data frames is complete the three separate data frames are column combined into a single data frame.


Step 6: Summarize the data set by subject and activity with the mean of each variable

The plyr package is used to transform the data frame to a summarized data frame.  

Step 7: Export the data set to tidydata.txt file
The data frame is then exported to a text file which can be imported to the analysis software of choice.  

The details for the variables in the final data set can be found in the CodeBook.md file


