# GettingAndCleaningData
 
The run_analysis.R script contains all transformations needed to create tidy data set with Mean and Standard Deviation values of base variables, averaged for each Activity / Subject pair. The script performs following operations:

1.	Downloads Human Activity Recognition package from the URL provided in the Course Project assignment;

2.	Inflates Human Activity Recognition package in the R working directory;

3.	Merges Training and Test data sets:

		- loads training and test measurements data sets into two corresponding dataframes;

		- reads features lables' into the "column names" dataframe;

		- renames generically named columns of the training and measurement dataframes with meaningful features' labels;

		- loads activity numbers for each measurement for training and test into corresponding two dataframes;

		- loads subject numbers for each measurement for training and test into corresponding two dataframes;

		- binds activity and subject dataframes' columns with measurement dataframes for training and test;

		- binds rows of training and test measurement dataframes into one data set MyHA;

4.	 Subsets MyHA by choosing only Subject,Activity, mean() or std() fields thus retaining only features requested in the Project assignment; 

5.	 Adds descriptive Activity Labels as an additional column to the MyHA subset: 

		- loads Activity Labels data frame from the activity_lables.txt file  

		- Merges Activity Labels with the MyHA into one dataframe 

6.	 Renames columns of the MyHA subset: "mean()" is changed to Mean, std() is changed to StandardDeviation; 

7.	 Aggregates MyHA dataframe to find averages of all requested features grouped by Activity and Subject, to produce final tidy data set including 180 row and 69 columns; 

8.	 Writes final data set into the HumanActivityAverages.csv file in the R working directory

The run_analysis.R script is self contained and portable. It can run in R console (tested in R version 3.1.3) or RStudio console (tested in RStudio Version 0.99.485). The output file HumanActivityAverages.csv, Human Activity Recognition package and UCI HAR Dataset will be residing in the R working directory after the script successfully finishes  
