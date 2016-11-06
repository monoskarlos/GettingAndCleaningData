#setwd("C:/Users/xxxxxxxxx/GettingAndCleaningData/CourseProject")

##download file
fileURL <-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,destfile = "./HumanActivity.zip")

#Unzip the downloaded package into the working directory

unzip ("HumanActivity.zip")


#### 1. Merge Training and Test sets  ####

#read training and test sets into corresponding dataframes
HATest <- read.table(file = "./UCI HAR Dataset/test/X_test.txt",header=FALSE)
HATrain <- read.table(file = "./UCI HAR Dataset/train/X_train.txt",header=FALSE)
#tail(HATest,1) ## 2947
#tall(HATrain,1) ##7352

##read column names for training and test data sets into the cols dataframe 
##equip training and test data sets with maningful column names 
cols <- read.table("./UCI HAR Dataset/features.txt")
library(dplyr)
colnames(HATest) <- c(as.character(cols$V2))
colnames(HATrain) <- c(as.character(cols$V2))

##Read Subject and Activity fields for each measurement(record) in the test and training dataframes
SubjectTest <- read.table("./UCI HAR Dataset/Test/subject_test.txt")
SubjectTrain <- read.table("./UCI HAR Dataset/Train/subject_train.txt")
ActivityTest <- read.table("./UCI HAR Dataset/Test/y_test.txt")
ActivityTrain <- read.table("./UCI HAR Dataset/Train/y_train.txt")
##ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
##ActivityLabelsTest <- merge(ActivityTest,ActivityLabels,by.x=V1,by.y=V1,all=TRUE)
##colnames(SubjectTest) <- c("Subject")
##ActivityLabelsTest <- merge(ActivityTest,ActivityLabels,by.x="V1",by.y="V1",all=TRUE)

## Add collumns for Acivity and Subject as first columns to the test and training data sets

MyHATrain <- cbind(Activity=ActivityTrain$V1,Subject=SubjectTrain$V1,HATrain)
MyHATest <- cbind(Activity=ActivityTest$V1,Subject=SubjectTest$V1,HATest)
## Merge Training and Test data sets 
MyHA <- rbind(MyHATrain,MyHATest)

##### 2. Subset MyHA by certain columns only: Subject,Activity, mean() or std() fields  ####

HA <- MyHA[,grep("Activity|Subject|std\\(\\)|mean\\(\\)",names(MyHA))]
##HA <- MyHA[c("Activity","Activity",colnames(MyHA)[grep("mean\\(\\)",colnames(MyHA))],colnames(MyHA)[grep("std\\(\\)",colnames(MyHA))])]

#### 3. Add descriptive Activity Labels to Activity numbers with descriptive values   ####

## Load Activity Labels data frame from the activity_lables.txt file
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c("Activity", "ActivityLabel"))
##  merge HA and ActivityLabels dataframes 
HADesc<- merge(ActivityLabels,HA,by.x="Activity",by.y="Activity",all=TRUE)

#### 4. Rename variables for readability  ####

names(HADesc) <- gsub("std\\(\\)", "StandardDeviation", names(HADesc))
names(HADesc) <- gsub("mean\\(\\)", "Mean", names(HADesc))

#### 5. Find Averages of all features grouped by ActivityLabel and Subject ####

HAavg <- aggregate(HADesc[,4:69], HADesc[,2:3], FUN = mean)

## Save final tidy data set
write.csv(HAavg, file = "HumanActivityAverages.csv",row.names=FALSE)