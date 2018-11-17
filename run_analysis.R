#Coursera - Getting and Cleaning Data Course--------------------------------------------
#Course Project
#Addi Faerber, 11/10/2018

#This script imports, cleans and creates a dataset of accelerometer data from a Samsung phone
#See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for a
#full description of the data. 

#input from
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#and outputs ./data/tidydata.txt, a tidy dataset containing tidy data set with
#the average of each variable for each activity and each subject.

# Library Calls------------------------------------------------------------------
library(utils) #for unzipping downloaded data
library(tidyverse) #because it's the Tidyverse


# Download and import data-----------------------------------
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}

if(!file.exists("./data/FUCI_HAR_Dataset.zip")){
  download.file(fileURL, destfile = "./data/FUCI_HAR_Dataset.zip", method = "curl")
  unzip("./data/FUCI_HAR_Dataset.zip", exdir="./data")
} 

# Merge the training and the test sets to create one data set.------------------------

#Test Dataset
importDatafromTxtFiles <- function (subj, act, feat) {
  require(dplyr)
  #subj = filename of subject file (string) with directories 
      #e.g. "./data/UCI HAR Dataset/train/subject_train.txt" 
  #act =  activity file (string) with directories
  #feat = features file (string) with directories
  
  #read in Activity Labels for labeling activities
  activity_lab <- read.table("./data/UCI HAR Dataset/activity_labels.txt", 
                             col.names = c("activityID","activity"))

  #Need column names for the features
  features_colnames <- read.table("./data/UCI HAR Dataset/features.txt",
                                  col.names = c("featureID","feature"), 
                                  stringsAsFactors = FALSE)
  #parenthesis and commas are not allowed in R variable names... so take them out. 
  features_colnames$feature <- sub("\\(","",features_colnames$feature)
  features_colnames$feature <- sub("\\)","",features_colnames$feature)
  features_colnames$feature <- sub("\\,","",features_colnames$feature)
  features_colnames$feature <- sub("\\.","_",features_colnames$feature)
  
  
  
  #read in the files
  subjects <-  read.table(file = subj, sep = " ", col.names = c("subjectID"))
  activities <- read.table(file = act,  sep = " ", col.names = c("activity")) 
  #label the activities with decriptive activity names in the factor
  activities[,"activity"] <- factor(activities[,"activity"], labels = activity_lab$activity ) 
 
  features <-  read.table(file = feat, col.names = features_colnames$feature)
  
  data <- bind_cols(subjects, activities, features)
  
  
  return(data)
}
#import TEST data
testdata <- importDatafromTxtFiles(subj = "./data/UCI HAR Dataset/test/subject_test.txt",
                                   act = "./data/UCI HAR Dataset/test/y_test.txt",
                                   feat = "./data/UCI HAR Dataset/test/X_test.txt") %>% 
  mutate(source = "test")
#import TRAIN data
traindata <- importDatafromTxtFiles(subj = "./data/UCI HAR Dataset/train/subject_train.txt",
                                   act = "./data/UCI HAR Dataset/train/y_train.txt",
                                   feat = "./data/UCI HAR Dataset/train/X_train.txt") %>% 
  mutate(source = "train")

#Merge datasets

df <- bind_rows(testdata, traindata)


# Extract only the measurements on the mean and standard deviation for each measurement.----------
#these are variables of the form variable-mean() and variable-std()
# or the regular expression (\\.mean\\.)|(\\.std\\.)|(\\.mean$)|(\\.std$)"

#build a logical vector of variable names that match 
keepvars <- grepl("(\\.mean\\.)|(\\.std\\.)|(\\.mean$)|(\\.std$)",names(df))
#but we also want to keep the subject ID and activity variables, elements 1 and 2 of the list of names. 
#this switch elements 1 and 2 to be true to keep those variables.
keepvars[1] <- TRUE; keepvars[2] <- TRUE
#subset the data frame
df <- df[,which(keepvars)]


# Use descriptive activity names to name the activities in the data set------------------------------
#this was done on line 54
table(df$activity)

# Appropriately label the data set with descriptive variable names.------------------------------
#this was done in lines 45-49. Removed parenthesis and converted dashes to periods. 
str(df)



# From the data set in step 4, create a second, independent tidy data set with------------------------------
# the average of each variable for each activity and each subject.
tidydf <- df %>% 
 group_by(subjectID, activity) %>% 
  summarize_all(funs(mean))
           



#write file to drive
write.table(tidydf, "./data/tidydata.txt", row.names = FALSE)
