# GettingAndCleaningData
 
The run_analysis.R script contains all transformations needed to create tidy data set with base variables Mean and Standard Deviation values averaged by Activity and Subject. The script performs following operations:

1.	Downloads Human Activity Recognition package from the URL provided in the Course Project assignment;

2.	Inflates Human Activity Recognition package in the R working directory;

3.	Merges Training and Test data sets:

		- loads training and test measurements data sets into two corresponding dataframes;

		- reads features lables' into the "column names" dataframe;

		- renames generically named columns of the training and measurement dataframes with meaningful features' labels;

		- loads activity numbers for each measurement in training and test phases into corresponding two dataframes;

		- loads subject numbers for each measurement in training and test phases into corresponding two dataframes;

		- binds activity and subject dataframes' columns with measurement dataframes for training and test;

		- binds rows of training and test dataframes into one data set;
