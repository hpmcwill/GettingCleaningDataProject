Code Book
=========

The 'tidy_data.txt' file produced by the 'run_analysis.R' script processing of the "Human Activity Recognition Using Smartphones Data Set" (from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) consists of 68 columns describing the data variables for the fields detailed below.

For details of the source data data fields see the documetation files included in the data distribution, in particular the fields descriptions in 'features_info.txt' and the field titles in 'features.txt'.

The Data Fields
---------------

* "Activity"
  
  Physical activity type. One of:
  
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
  
* "Subject"
  
  A numeric identifier for the test subject.
  
* "MeanOfTimeBodyAccelerationMeanAxisX", "MeanOfTimeBodyAccelerationMeanAxisY", "MeanOfTimeBodyAccelerationMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y" and "tBodyAcc-mean()-Z" respectivly.
  
* "MeanOfTimeBodyAccelerationStandardDeviationAxisX", "MeanOfTimeBodyAccelerationStandardDeviationAxisY", "MeanOfTimeBodyAccelerationStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAcc-std()-X", "tBodyAcc-std()-Y" and "tBodyAcc-std()-Z" respectivly.
  
* "MeanOfTimeGravityAccelerationMeanAxisX", "MeanOfTimeGravityAccelerationMeanAxisY", "MeanOfTimeGravityAccelerationMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y" and "tGravityAcc-mean()-Z" respectivly.
  
* "MeanOfTimeGravityAccelerationStandardDeviationAxisX", "MeanOfTimeGravityAccelerationStandardDeviationAxisY", "MeanOfTimeGravityAccelerationStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tGravityAcc-std()-X", "tGravityAcc-std()-Y" and "tGravityAcc-std()-Z" respectivly.
  
* "MeanOfTimeBodyAccelerationJerkMeanAxisX", "MeanOfTimeBodyAccelerationJerkMeanAxisY", "MeanOfTimeBodyAccelerationJerkMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y" and "tBodyAccJerk-mean()-Z" respectivly.
  
* "MeanOfTimeBodyAccelerationJerkStandardDeviationAxisX", "MeanOfTimeBodyAccelerationJerkStandardDeviationAxisY", "MeanOfTimeBodyAccelerationJerkStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y" and "tBodyAccJerk-std()-Z" respectivly.
  
* "MeanOfTimeBodyGyroscopeMeanAxisX", "MeanOfTimeBodyGyroscopeMeanAxisY", "MeanOfTimeBodyGyroscopeMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y" and "tBodyGyro-mean()-Z" respectivly.
  
* "MeanOfTimeBodyGyroscopeStandardDeviationAxisX", "MeanOfTimeBodyGyroscopeStandardDeviationAxisY", "MeanOfTimeBodyGyroscopeStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyro-std()-X", "tBodyGyro-std()-Y" and "tBodyGyro-std()-Z" respectivly.
  
* "MeanOfTimeBodyGyroscopeJerkMeanAxisX", "MeanOfTimeBodyGyroscopeJerkMeanAxisY", "MeanOfTimeBodyGyroscopeJerkMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y" and "tBodyGyroJerk-mean()-Z" respectivly.
  
* "MeanOfTimeBodyGyroscopeJerkStandardDeviationAxisX", "MeanOfTimeBodyGyroscopeJerkStandardDeviationAxisY", "MeanOfTimeBodyGyroscopeJerkStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y" and "tBodyGyroJerk-std()-Z" respectivly.
  
* "MeanOfTimeBodyAccelerationMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccMag-mean()".
  
* "MeanOfTimeBodyAccelerationMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccMag-std()".
  
* "MeanOfTimeGravityAccelerationMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tGravityAccMag-mean()".
  
* "MeanOfTimeGravityAccelerationMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tGravityAccMag-std()".
  
* "MeanOfTimeBodyAccelerationJerkMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccJerkMag-mean()".
  
* "MeanOfTimeBodyAccelerationJerkMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyAccJerkMag-std()".
  
* "MeanOfTimeBodyGyroscopeMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroMag-mean()".
  
* "MeanOfTimeBodyGyroscopeMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroMag-std()".
  
* "MeanOfTimeBodyGyroscopeJerkMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroJerkMag-mean()".
  
* "MeanOfTimeBodyGyroscopeJerkMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "tBodyGyroJerkMag-std()".
  
* "MeanOfFrequencyBodyAccelerationMeanAxisX", "MeanOfFrequencyBodyAccelerationMeanAxisY", "MeanOfFrequencyBodyAccelerationMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y" and "fBodyAcc-mean()-Z" respectivly.
  
* "MeanOfFrequencyBodyAccelerationStandardDeviationAxisX", "MeanOfFrequencyBodyAccelerationStandardDeviationAxisY", "MeanOfFrequencyBodyAccelerationStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAcc-std()-X", "fBodyAcc-std()-Y" and "tBodyAcc-std()-Z" respectivly.
  
* "MeanOfFrequencyBodyAccelerationJerkMeanAxisX", "MeanOfFrequencyBodyAccelerationJerkMeanAxisY", "MeanOfFrequencyBodyAccelerationJerkMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y" and "fBodyAccJerk-mean()-Z" respectivly.
  
* "MeanOfFrequencyBodyAccelerationJerkStandardDeviationAxisX", "MeanOfFrequencyBodyAccelerationJerkStandardDeviationAxisY", "MeanOfFrequencyBodyAccelerationJerkStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y" and "fBodyAccJerk-std()-Z" respectivly.
  
* "MeanOfFrequencyBodyGyroscopeMeanAxisX", "MeanOfFrequencyBodyGyroscopeMeanAxisY", "MeanOfFrequencyBodyGyroscopeMeanAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y" and "fBodyGyro-mean()-Z" respectivly.
  
* "MeanOfFrequencyBodyGyroscopeStandardDeviationAxisX", "MeanOfFrequencyBodyGyroscopeStandardDeviationAxisY", "MeanOfFrequencyBodyGyroscopeStandardDeviationAxisZ"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyGyro-std()-X", "fBodyGyro-std()-Y" and "fBodyGyro-std()-Z" respectivly.
  
* "MeanOfFrequencyBodyAccelerationMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAccMag-mean()".
  
* "MeanOfFrequencyBodyAccelerationMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyAccMag-std()".
  
* "MeanOfFrequencyBodyAccelerationJerkMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyAccJerkMag-mean()".
  
* "MeanOfFrequencyBodyAccelerationJerkMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyAccJerkMag-std()".
  
* "MeanOfFrequencyBodyGyroscopeMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyGyroMag-mean()".
  
* "MeanOfFrequencyBodyGyroscopeMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyGyroMag-std()".
  
* "MeanOfFrequencyBodyGyroscopeJerkMagnitudeMean"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyGyroJerkMag-mean()".
  
* "MeanOfFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation"
  
  For a combination of "Activity" and "Subject" the mean of the observations recorded for "fBodyBodyGyroJerkMag-std()".
  
