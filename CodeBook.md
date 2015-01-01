# CODE BOOK - Human Activity Recognition Using Smartphones Data Set 


## About the data:

  - The tidy data set called **averaged_dataset** that presented below obtained by a raw data from [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) .
  - The dimension of this tidy data set is: **180 rows/observation & 68 columns/variables**.

  
## Having saved the raw data folder "UCI HAR Dataset" in my working directory, I performed the following:

  1. From that folder the labels.txt, features.txt, X_test.txt, y_test.txt, subject_test.txt and the other 3 of train folder, read into R by using read.table.
  2. Files of test folder merged together (with cbind). The same for train folder, and then all **merged** together (with rbind) saved in a variable called **data**.
  3. **Descriptive activity names** used to name the activities in the data set, by converting the activity column into a factor and renaming the levels according to the names within our activity_labels set.
  4. **The measurements on the mean and standard deviation for each measurement extracted** by using: the grep function, and extracting only the first 2 column & the column names containing "mean" or "s.d", but not "angle" or "meanFreq".
  5. The so far data is given **descriptive variable names:** The first 2 columns are called "subjectId", "activity".The rest (obtained by extracting them from features file) was renamed by replacing the 'f','t','mean','std' with 'freq','time','Mean' and 'Std' respectively, removing parenthesis and periods, and correcting the "BodyBody" typo for the selected columns. 
  6. By using **arrange** from the same package, the data set ordered first based on subjectId, and then activity column.
  7. The data **grouped by** subjectId and activity. Then, using summarise_each function the data **summarized** by calculating the mean for each column for each activity and each subjectId, except the first 2.Now, this data is called **averaged_data**,and was written out to the "averaged_data.txt" file.
  
  - The **run_analysis.R** script contains **comments** and the code for the described analysis. 

  
 
## General description of data and variables:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


## These signals were used to estimate the variables for each pattern:  
 - '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 - Each on of them is **class**: **numeric**.
 - **Values** : bounded within **[-1,1]**
 - **Summary choice** : **the average for each activity and each subject**.

   
  - tBodyAcc-XYZ
  - tGravityAcc-XYZ
  - tBodyAccJerk-XYZ
  - tBodyGyro-XYZ
  - tBodyGyroJerk-XYZ
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag
  - fBodyAcc-XYZ
  - fBodyAccJerk-XYZ
  - fBodyGyro-XYZ
  - fBodyAccMag
  - fBodyAccJerkMag
  - fBodyGyroMag
  - fBodyGyroJerkMag



### The set of variables that were estimated from these signals are: 
  - mean(): Mean value
  - std(): Standard deviation



## Other variables:
  - subjectId:
    - An identifier of the subject who carried out the experiment.
    - **Class**: **integer**
	- **Values** (number of volunteers): **1-30**
			   
  - activity: 
    - Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.
    - **Class**: **factor**
	- **Levels**: **WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING**

			  
			  
## The complete list of variables of the dataset:

* subjectId
* activity
* timeBodyAccMeanX
* timeBodyAccMeanY
* timeBodyAccMeanZ
* timeBodyAccStdX
* timeBodyAccStdY
* timeBodyAccStdZ
* timeGravityAccMeanX
* timeGravityAccMeanY
* timeGravityAccMeanZ
* timeGravityAccStdX
* timeGravityAccStdY
* timeGravityAccStdZ
* timeBodyAccJerkMeanX
* timeBodyAccJerkMeanY
* timeBodyAccJerkMeanZ
* timeBodyAccJerkStdX
* timeBodyAccJerkStdY
* timeBodyAccJerkStdZ
* timeBodyGyroMeanX
* timeBodyGyroMeanY
* timeBodyGyroMeanZ
* timeBodyGyroStdX
* timeBodyGyroStdY
* timeBodyGyroStdZ
* timeBodyGyroJerkMeanX
* timeBodyGyroJerkMeanY
* timeBodyGyroJerkMeanZ
* timeBodyGyroJerkStdX
* timeBodyGyroJerkStdY
* timeBodyGyroJerkStdZ
* timeBodyAccMagMean
* timeBodyAccMagStd
* timeGravityAccMagMean
* timeGravityAccMagStd
* timeBodyAccJerkMagMean
* timeBodyAccJerkMagStd
* timeBodyGyroMagMean
* timeBodyGyroMagStd
* timeBodyGyroJerkMagMean
* timeBodyGyroJerkMagStd
* freqBodyAccMeanX
* freqBodyAccMeanY
* freqBodyAccMeanZ
* freqBodyAccStdX
* freqBodyAccStdY
* freqBodyAccStdZ
* freqBodyAccJerkMeanX
* freqBodyAccJerkMeanY
* freqBodyAccJerkMeanZ
* freqBodyAccJerkStdX
* freqBodyAccJerkStdY
* freqBodyAccJerkStdZ
* freqBodyGyroMeanX
* freqBodyGyroMeanY
* freqBodyGyroMeanZ
* freqBodyGyroStdX
* freqBodyGyroStdY
* freqBodyGyroStdZ
* freqBodyAccMagMean
* freqBodyAccMagStd
* freqBodyAccJerkMagMean
* freqBodyAccJerkMagStd
* freqBodyGyroMagMean
* freqBodyGyroMagStd
* freqBodyGyroJerkMagMean
* freqBodyGyroJerkMagStd

