<b><h1>Getting and Cleaning Data Course Project</b></h1>

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The repository contains the following files:
- README.md, which provides an overview of the data set and how it was created,
- run_analysis.R, the R script that was used to create the data set,
- tidyDataAverage.txt, the tidy data set in txt-format,
- CodeBook.md, which describes the data, variables and transformations used to generate the data,

<b>Data Set Information </b><BR>
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

<b>Attribute Information</b><BR>
For each record in the dataset a 561-feature vector with time and frequency domain variables is provided with an identifier of the subject who carried out the experiment and the activity performed.

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <BR>
The zip file containing the source data is located at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

<b>R script: run_analysis.R</b><BR>
The R script run_analysis.R encompasses the following steps:
1. Checks if data set exists and if not it downloads and unzips file.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Write the data set to the tidyDataAverage.txt file.

The tidyDataAverage.txt in this repository was created by running the run_analysis.R script using R version 3.5.3 (2019-03-11) on macOS Mojave Version 10.14.4.

The script requires the dplyr package (version 0.8.0.1 was used).

