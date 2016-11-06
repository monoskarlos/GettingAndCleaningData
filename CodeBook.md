Human Activity Recognition Using Smartphones - Aggregated Dataset
===============================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
The features selected for the Data Set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Mean value and Standard Deviation were estimated for each of the variables.

ActivityLabel
Subject	
tBodyAcc-Mean-X	
tBodyAcc-Mean-Y	
tBodyAcc-Mean-Z	
tBodyAcc-StandardDeviation-X	
tBodyAcc-StandardDeviation-Y	
tBodyAcc-StandardDeviation-Z	
tGravityAcc-Mean-X	
tGravityAcc-Mean-Y	
tGravityAcc-Mean-Z	
tGravityAcc-StandardDeviation-X	
tGravityAcc-StandardDeviation-Y	
tGravityAcc-StandardDeviation-Z	
tBodyAccJerk-Mean-X	
tBodyAccJerk-Mean-Y	
tBodyAccJerk-Mean-Z	
tBodyAccJerk-StandardDeviation-X	
tBodyAccJerk-StandardDeviation-Y	
tBodyAccJerk-StandardDeviation-Z	
tBodyGyro-Mean-X	
tBodyGyro-Mean-Y	
tBodyGyro-Mean-Z	
tBodyGyro-StandardDeviation-X	
tBodyGyro-StandardDeviation-Y	
tBodyGyro-StandardDeviation-Z	
tBodyGyroJerk-Mean-X	
tBodyGyroJerk-Mean-Y	
tBodyGyroJerk-Mean-Z	
tBodyGyroJerk-StandardDeviation-X	
tBodyGyroJerk-StandardDeviation-Y	
tBodyGyroJerk-StandardDeviation-Z	
tBodyAccMag-Mean	
tBodyAccMag-StandardDeviation	
tGravityAccMag-Mean	
tGravityAccMag-StandardDeviation	
tBodyAccJerkMag-Mean	
tBodyAccJerkMag-StandardDeviation	
tBodyGyroMag-Mean	
tBodyGyroMag-StandardDeviation	
tBodyGyroJerkMag-Mean	
tBodyGyroJerkMag-StandardDeviation	
fBodyAcc-Mean-X	
fBodyAcc-Mean-Y	
fBodyAcc-Mean-Z	
fBodyAcc-StandardDeviation-X	
fBodyAcc-StandardDeviation-Y	
fBodyAcc-StandardDeviation-Z	
fBodyAccJerk-Mean-X	
fBodyAccJerk-Mean-Y	
fBodyAccJerk-Mean-Z	
fBodyAccJerk-StandardDeviation-X	
fBodyAccJerk-StandardDeviation-Y	
fBodyAccJerk-StandardDeviation-Z	
fBodyGyro-Mean-X	
fBodyGyro-Mean-Y	
fBodyGyro-Mean-Z	
fBodyGyro-StandardDeviation-X	
fBodyGyro-StandardDeviation-Y	
fBodyGyro-StandardDeviation-Z	
fBodyAccMag-Mean	
fBodyAccMag-StandardDeviation	
fBodyBodyAccJerkMag-Mean	
fBodyBodyAccJerkMag-StandardDeviation	
fBodyBodyGyroMag-Mean	
fBodyBodyGyroMag-StandardDeviation	
fBodyBodyGyroJerkMag-Mean	
fBodyBodyGyroJerkMag-StandardDeviation


The data set provides averages of Mean and Standard Deviation values of the variables for each Subject and Activity. So it includes 30*6 = 180 rows and 2 + 33*2 = 68 columns.  

