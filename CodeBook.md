# Samsung S6 Accelerometer Data

## Description

The data was obtained from the Human Activity Recognition using Smartphones dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 


## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

This tidy dataset provides the average of each variable for each activity and each subject. The dimensions of the tidy dataset are 180 observations (30 subjects x 6 activities) and 68 variables. 

## List of Variables
Variable Number | Variable Label | Description 
----------------|----------------|------------
1 | subjectID | integer ranging from 1 to 30 indicating the subject
2 | activity | factor with 6 levels describing the activity being performed by the subject at the time of the measurement. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING LAYING 
3 |tBodyAcc.mean.X | integer 
4 |tBodyAcc.mean.Y | integer 
5 |tBodyAcc.mean.Z | integer 
6 |tBodyAcc.std.X | integer 
7 |tBodyAcc.std.Y | integer 
8 |tBodyAcc.std.Z | integer 
9 |tGravityAcc.mean.X | integer 
10 |tGravityAcc.mean.Y | integer 
11 |tGravityAcc.mean.Z | integer 
12 |tGravityAcc.std.X | integer 
13 |tGravityAcc.std.Y | integer 
14 |tGravityAcc.std.Z | integer 
15 |tBodyAccJerk.mean.X | integer 
16 |tBodyAccJerk.mean.Y | integer 
17 |tBodyAccJerk.mean.Z | integer 
18 |tBodyAccJerk.std.X | integer 
19 |tBodyAccJerk.std.Y | integer 
20 |tBodyAccJerk.std.Z | integer 
21 |tBodyGyro.mean.X | integer 
22 |tBodyGyro.mean.Y | integer 
23 |tBodyGyro.mean.Z | integer 
24 |tBodyGyro.std.X | integer 
25 |tBodyGyro.std.Y | integer 
26 |tBodyGyro.std.Z | integer 
27 |tBodyGyroJerk.mean.X | integer 
28 |tBodyGyroJerk.mean.Y | integer 
29 |tBodyGyroJerk.mean.Z | integer 
30 |tBodyGyroJerk.std.X | integer 
31 |tBodyGyroJerk.std.Y | integer 
32 |tBodyGyroJerk.std.Z | integer 
33 |tBodyAccMag.mean | integer 
34 |tBodyAccMag.std | integer 
35 |tGravityAccMag.mean | integer 
36 |tGravityAccMag.std | integer 
37 |tBodyAccJerkMag.mean | integer 
38 |tBodyAccJerkMag.std | integer 
39 |tBodyGyroMag.mean | integer 
40 |tBodyGyroMag.std | integer 
41 |tBodyGyroJerkMag.mean | integer 
42 |tBodyGyroJerkMag.std | integer 
43 |fBodyAcc.mean.X | integer 
44 |fBodyAcc.mean.Y | integer 
45 |fBodyAcc.mean.Z | integer 
46 |fBodyAcc.std.X | integer 
47 |fBodyAcc.std.Y | integer 
48 |fBodyAcc.std.Z | integer 
49 |fBodyAccJerk.mean.X | integer 
50 |fBodyAccJerk.mean.Y | integer 
51 |fBodyAccJerk.mean.Z | integer 
52 |fBodyAccJerk.std.X | integer 
53 |fBodyAccJerk.std.Y | integer 
54 |fBodyAccJerk.std.Z | integer 
55 |fBodyGyro.mean.X | integer 
56 |fBodyGyro.mean.Y | integer 
57 |fBodyGyro.mean.Z | integer 
58 |fBodyGyro.std.X | integer 
59 |fBodyGyro.std.Y | integer 
60 |fBodyGyro.std.Z | integer 
61 |fBodyAccMag.mean | integer 
62 |fBodyAccMag.std | integer 
63 |fBodyBodyAccJerkMag.mean | integer 
64 |fBodyBodyAccJerkMag.std | integer 
65 |fBodyBodyGyroMag.mean | integer 
66 |fBodyBodyGyroMag.std | integer 
67 |fBodyBodyGyroJerkMag.mean | integer 
68 |fBodyBodyGyroJerkMag.std | integer

## Data Transformation

The original data contained 6 text files used to create this dataset: 

* /UCI HAR Dataset/activity_labels.txt - Labels for given activities
* /UCI HAR Dataset/features.txt - List of features (aka variables) in the original data
* /UCI HAR Dataset/subject_text.txt, ./data/UCI HAR Dataset/subject_train.txt - subject corresponding to each row for original set of features
* /UCI HAR Dataset/y_test.txt, ./data/UCI HAR Dataset/y_train.txt - activity being p performed by subject corresponding to each row of features
* /UCI HAR Dataset/X_test.txt, ./data/UCI HAR Dataset/X_train.txt - transformed data for each feature.

These data are merged together and cleaned using the script run_analysis.R. Details of the dataset creation are in the code. 

In the final tidy dataset, the variables are the average of each variable for each activity and each subject.


