==================================================================
Averages of Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec 
and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration & gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The dataset includes the following files:
============================================
- 'Averages.txt'

Data Information
============================================
Person		30
         Person identifier
                1 .Person number 1
		2 .Person number 2 
		3 .Person number 3              
		4 .Person number 4
		5 .Person number 5
		6 .Person number 6
		7 .Person number 7 
		8 .Person number 8              
		9 .Person number 9
		10 .Person number 10
		11 .Person number 11
		12 .Person number 12
		13 .Person number 13
		14 .Person number 14
		15 .Person number 15
		16 .Person number 16
		17 .Person number 17
		18 .Person number 18
		19 .Person number 19
		20 .Person number 20
		21 .Person number 21
		22 .Person number 22
		23 .Person number 23
		24 .Person number 24
		25 .Person number 25
		26 .Person number 26
		27 .Person number 27
		28 .Person number 28
		29 .Person number 29
		30 .Person number 30

Activity	6
          Activity performed
		WALKING            .General walking 
		WALKING_UPSTAIRS   .Climbing up a flight of stairs
		WALKING_DOWNSTAIRS .Descending down a flight of stairs
		SITTING            .Sitting 
		STANDING           .Stading at one place
		LAYING             . Lying down

Feature Selection:
====================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Next, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

The set of variables that were estimated from these signals were: 

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency

Finally, the average value for each signal was calculated for a specific person performing a specific Activity.
These are the final values visible in the text file - Averages.txt.
====================================================================================================================
Notes:
=====================
The 't' in the naming of the column variables refers to - The time domain values
The 'f' in the naming of the column variables refers to - The Fast Fourier Transform values
The 'Acc' in the naming of the column variables refers to - observations recorded using the accelerometer
The 'Gyro' in the naming of the column variables refers to - observations recorded using the Gyrometer
The 'Body' in the naming of the column variables refers to - body of the person

Naming convention used in the initial data frame provided in the reference has been retained for ease in correlation.


References:
=============
The dataset created in this publication was created using the data taken from reference [1].

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
