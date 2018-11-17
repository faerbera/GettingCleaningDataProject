# Peer-graded Assignment: Getting and Cleaning Data Course Project

In this assignment, I demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In this script, I collect and clean the above dataset into a tidy data set that describes the accelerometer recordings for 30 subjects over 6 different activities. 


## Getting Started

Files are 
* README.md - This file that explains how all of the scripts work and how they are connected
* CodeBook.md - A code book that describes the variables, the data, and transformations or work that I performed to clean up the data.
* run_analysis.R - The core script that inputs the raw data at the ZIP URL above and outputs a tidy data set in TXT format. 

### Prerequisites

These scripts need the following libraries to function: 
* Utils 
* Tidyverse

The data file (linked above) should be downloaded and unzipped into ./data/FUCI HAR Dataset/
If the files are not available, the script will download the zip file, unzip it, and load the files in the correct directory structure. 

### Installing

To create the tidy dataset for further analysis, run the script run_analysis.R





