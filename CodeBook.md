CodeBook
========

#Transformations done by run_analysis.R to get tidy data set

After downloading and extracting the original data source, run_analysis.R is copied into the extracted folder.

When run_analysis.R executes, first training and test data sets are read and merged into one combined data set. When merging the data sets, subject- and classification information (activity labels) are added for each data row. The names of the features are extracted from provided file "features.txt", cleaned (commata and dashes are removed) and the column names of the combined data set are changed to be more meaningful and human-readable. Then only variables, which correspond to mean or standard deviation of signals recorded, are kept. The column for the classification information (i.e. activity label) is transformed to use descriptive (human-readable) activity names with information given by provided file "activity_labels.txt". In the last step, the mean is taken over each kept variable grouped by each subject and activity. Finally the tidy data is written to file "tidy_data.txt".

#Kept Variables in tidy data set

Subject	- field width: 2, a number corresponding to each participating person,  range: 1-30  
Activity - field width: 18, activity types, range: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING   
tBodyAccmeanX - field width: 18, Time domain body acceleration mean along X, range: -1 - +1 
tBodyAccmeanY - field width: 18, Time domain body acceleration mean along Y, range: -1 - +1  
tBodyAccmeanZ - field width: 18, Time domain body acceleration mean along Z, range: -1 - +1  
tBodyAccstdX - field width: 18, Time domain body acceleration standard deviation along X, range: -1 - +1  
tBodyAccstdY - field width: 18, Time domain body acceleration standard deviation along Y, range: -1 - +1 
tBodyAccstdZ - field width: 18, Time domain body acceleration standard deviation along Z, range: -1 - +1 
tGravityAccmeanX - field width: 18, Time domain gravity acceleration mean along X, range: -1 - +1 
tGravityAccmeanY - field width: 18, Time domain gravity acceleration mean along Y, range: -1 - +1  
tGravityAccmeanZ - field width: 18, Time domain gravity acceleration mean along Z, range: -1 - +1 	
tGravityAccstdX - field width: 18, Time domain gravity acceleration standard deviation along X, range: -1 - +1  	
tGravityAccstdY - field width: 18, Time domain gravity acceleration standard deviation along Y, range: -1 - +1 	
tGravityAccstdZ - field width: 18, Time domain gravity acceleration standard deviation along Z, range: -1 - +1 	
tBodyAccJerkmeanX - field width: 18, Time domain body jerk mean along X, range: -1 - +1 	
tBodyAccJerkmeanY - field width: 18, Time domain body jerk mean along Y, range: -1 - +1 	
tBodyAccJerkmeanZ - field width: 18, Time domain body jerk mean along Z, range: -1 - +1  	
tBodyAccJerkstdX - field width: 18, Time domain body jerk standard deviation along X, range: -1 - +1  	
tBodyAccJerkstdY - field width: 18, Time domain body jerk standard deviation along Y, range: -1 - +1 
tBodyAccJerkstdZ - field width: 18, Time domain body jerk standard deviation along Z, range: -1 - +1  	
tBodyGyromeanX - field width: 18, Time domain gyroscope mean along X, range: -1 - +1  	
tBodyGyromeanY - field width: 18, Time domain gyroscope mean along Y, range: -1 - +1  	
tBodyGyromeanZ - field width: 18, Time domain gyroscope mean along Z, range: -1 - +1 	
tBodyGyrostdX - field width: 18, Time domain gyroscope standard deviation along X, range: -1 - +1 	
tBodyGyrostdY - field width: 18, Time domain gyroscope standard deviation along Y, range: -1 - +1 
tBodyGyrostdZ - field width: 18, Time domain gyroscope standard deviation along Z, range: -1 - +1 	
tBodyGyroJerkmeanX - field width: 18, Time domain gyroscope jerk mean along X, range: -1 - +1 	
tBodyGyroJerkmeanY - field width: 18, Time domain gyroscope jerk mean along Y, range: -1 - +1 	
tBodyGyroJerkmeanZ - field width: 18, Time domain gyroscope jerk mean along Z, range: -1 - +1 	 	
tBodyGyroJerkstdX - field width: 18, Time domain gyroscope jerk standard deviation along X, range: -1 - +1 	
tBodyGyroJerkstdY - field width: 18, Time domain gyroscope jerk standard deviation along Y, range: -1 - +1 	
tBodyGyroJerkstdZ - field width: 18, Time domain gyroscope jerk standard deviation along Z, range: -1 - +1 	
tBodyAccMagstd - field width: 18, Time domain body acceleration magnitude standard deviation, range: -1 - +1 	
tGravityAccMagstd - field width: 18, Time domain gravity acceleration magnitude standard deviation, range: -1 - +1 	
tBodyAccJerkMagstd - field width: 18, Time domain body jerk magnitude standard deviation, range: -1 - +1 	
tBodyGyroMagstd - field width: 18, Time domain gyroscope magnitude standard deviation, range: -1 - +1 	
tBodyGyroJerkMagstd - field width: 18, Time domain gyroscope jerk magnitude standard deviation, range: -1 - +1 	
fBodyAccmeanX - field width: 18, Frequency domain body acceleration mean along X, range: -1 - +1 	
fBodyAccmeanY - field width: 18, Frequency domain body acceleration mean along Y, range: -1 - +1 	 
fBodyAccmeanZ - field width: 18, Frequency domain body acceleration mean along Z, range: -1 - +1 	
fBodyAccstdX - field width: 18, Frequency domain body acceleration standard deviation along X, range: -1 - +1 	
fBodyAccstdY - field width: 18, Frequency domain body acceleration standard deviation along Y, range: -1 - +1 	
fBodyAccstdZ - field width: 18, Frequency domain body acceleration standard deviation along Z, range: -1 - +1 	
fBodyAccJerkmeanX - field width: 18, Frequency domain body jerk mean along X, range: -1 - +1 	
fBodyAccJerkmeanY - field width: 18, Frequency domain body jerk mean along Y, range: -1 - +1 	
fBodyAccJerkmeanZ - field width: 18, Frequency domain body jerk mean along Z, range: -1 - +1 	
fBodyAccJerkstdX - field width: 18, Frequency domain body jerk standard deviation along X, range: -1 - +1 	
fBodyAccJerkstdY - field width: 18, Frequency domain body jerk standard deviation along Y, range: -1 - +1 	
fBodyAccJerkstdZ - field width: 18, Frequency domain body jerk standard deviation along Z, range: -1 - +1 	
fBodyGyromeanX - field width: 18, Frequency domain gyroscope mean along X, range: -1 - +1 	
fBodyGyromeanY - field width: 18, Frequency domain gyroscope mean along Y, range: -1 - +1 	
fBodyGyromeanZ - field width: 18, Frequency domain gyroscope mean along Z, range: -1 - +1 	
fBodyGyrostdX - field width: 18, Frequency domain gyroscope standard deviation along X, range: -1 - +1 	
fBodyGyrostdY - field width: 18, Frequency domain gyroscope standard deviation along Y, range: -1 - +1 	
fBodyGyrostdZ - field width: 18, Frequency domain gyroscope standard deviation along Z, range: -1 - +1 	
fBodyAccMagstd - field width: 18, Frequency domain body acceleration magnitude standard deviation, range: -1 - +1 	
fBodyBodyAccJerkMagstd - field width: 18, Frequency domain body jerk magnitude standard deviation, range: -1 - +1 	
fBodyBodyGyroMagstd - field width: 18, Frequency domain gyroscope magnitude standard deviation, range: -1 - +1 	
fBodyBodyGyroJerkMagstd - field width: 18, Frequency domain gyroscope jerk magnitude standard deviation, range: -1 - +1 
 
#About Original Data

Information provided by features_info.txt:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."



