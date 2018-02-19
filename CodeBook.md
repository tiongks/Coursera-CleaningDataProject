## Test and Training Data CodeBook

### About this CodeBook

This codebook describes resultig data set and the transformations that was carried over the [archive data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### R Script

The *run_analysis.R* script contains a series of steps that performed the following:
1. download and extracted the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
1. applied the following sequence to both the training and test data
   1. load the data from *x_<train/test>.txt*
   1. applied the correct variable (column) names based from *features.txt* 
   1. load labels from *y_<train/test>.txt* and merged the corresponding label descriptions from *activity_labels.txt*
   1. extracted the mean and standard deviation variables (columns)
   1. applied the labels to the test adn training data
1. after completing the above, the test and train data are then merged, summarized and saved to *tidy_data.txt*


### Tidy Data

The *tidy_data.txt* file contains the mean per subject and activity of the following variables:

| "tBodyAcc-mean()-X"                    | "tBodyAcc-mean()-Y"                  |  
| "tBodyAcc-mean()-Z"                    | "tBodyAcc-std()-X"                   |  
| "tBodyAcc-std()-Y"                     | "tBodyAcc-std()-Z"                   |  
| "tGravityAcc-mean()-X"                 | "tGravityAcc-mean()-Y"               |  
| "tGravityAcc-mean()-Z"                 | "tGravityAcc-std()-X"                |  
| "tGravityAcc-std()-Y"                  | "tGravityAcc-std()-Z"                |  
| "tBodyAccJerk-mean()-X"                | "tBodyAccJerk-mean()-Y"              |  
| "tBodyAccJerk-mean()-Z"                | "tBodyAccJerk-std()-X"               |  
| "tBodyAccJerk-std()-Y"                 | "tBodyAccJerk-std()-Z"               |  
| "tBodyGyro-mean()-X"                   | "tBodyGyro-mean()-Y"                 |  
| "tBodyGyro-mean()-Z"                   | "tBodyGyro-std()-X"                  |  
| "tBodyGyro-std()-Y"                    | "tBodyGyro-std()-Z"                  |  
| "tBodyGyroJerk-mean()-X"               | "tBodyGyroJerk-mean()-Y"             |  
| "tBodyGyroJerk-mean()-Z"               | "tBodyGyroJerk-std()-X"              |  
| "tBodyGyroJerk-std()-Y"                | "tBodyGyroJerk-std()-Z"              |  
| "tBodyAccMag-mean()"                   | "tBodyAccMag-std()"                  |  
| "tGravityAccMag-mean()"                | "tGravityAccMag-std()"               |  
| "tBodyAccJerkMag-mean()"               | "tBodyAccJerkMag-std()"              |  
| "tBodyGyroMag-mean()"                  | "tBodyGyroMag-std()"                 |  
| "tBodyGyroJerkMag-mean()"              | "tBodyGyroJerkMag-std()"             |  
| "fBodyAcc-mean()-X"                    | "fBodyAcc-mean()-Y"                  |  
| "fBodyAcc-mean()-Z"                    | "fBodyAcc-std()-X"                   |  
| "fBodyAcc-std()-Y"                     | "fBodyAcc-std()-Z"                   |  
| "fBodyAcc-meanFreq()-X"                | "fBodyAcc-meanFreq()-Y"              |  
| "fBodyAcc-meanFreq()-Z"                | "fBodyAccJerk-mean()-X"              |  
| "fBodyAccJerk-mean()-Y"                | "fBodyAccJerk-mean()-Z"              |  
| "fBodyAccJerk-std()-X"                 | "fBodyAccJerk-std()-Y"               |  
| "fBodyAccJerk-std()-Z"                 | "fBodyAccJerk-meanFreq()-X"          |  
| "fBodyAccJerk-meanFreq()-Y"            | "fBodyAccJerk-meanFreq()-Z"          |  
| "fBodyGyro-mean()-X"                   | "fBodyGyro-mean()-Y"                 |  
| "fBodyGyro-mean()-Z"                   | "fBodyGyro-std()-X"                  |  
| "fBodyGyro-std()-Y"                    | "fBodyGyro-std()-Z"                  |  
| "fBodyGyro-meanFreq()-X"               | "fBodyGyro-meanFreq()-Y"             |  
| "fBodyGyro-meanFreq()-Z"               | "fBodyAccMag-mean()"                 |  
| "fBodyAccMag-std()"                    | "fBodyAccMag-meanFreq()"             |  
| "fBodyBodyAccJerkMag-mean()"           | "fBodyBodyAccJerkMag-std()"          |  
| "fBodyBodyAccJerkMag-meanFreq()"       | "fBodyBodyGyroMag-mean()"            |  
| "fBodyBodyGyroMag-std()"               | "fBodyBodyGyroMag-meanFreq()"        |  
| "fBodyBodyGyroJerkMag-mean()"          | "fBodyBodyGyroJerkMag-std()"         |  
| "fBodyBodyGyroJerkMag-meanFreq()"      | "angle(tBodyAccMean,gravity)"        |  
| "angle(tBodyAccJerkMean),gravityMean)" | "angle(tBodyGyroMean,gravityMean)"   |  
| "angle(tBodyGyroJerkMean,gravityMean)" | "angle(X,gravityMean)"               | 
