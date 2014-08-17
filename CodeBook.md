Code Book for tidy dataframe produced and submitted in this Course Project.
=====================================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.




"subject" 1 
Subject code
1 .Subject 1
2 .Subject 2
3 .Subject 3
4 .Subject 4
5 .Subject 5
6 .Subject 6
7 .Subject 7
8 .Subject 8
9 .Subject 9
10 .Subject 10
11 .Subject 11
12 .Subject 12
13 .Subject 13
14 .Subject 14
15 .Subject 15
16 .Subject 16
17 .Subject 17
18 .Subject 18
19 .Subject 19
20 .Subject 20
21 .Subject 21
22 .Subject 22
23 .Subject 23
24 .Subject 24
25 .Subject 25
26 .Subject 26
27 .Subject 27
28 .Subject 28
29 .Subject 29
30 .Subject 30


"activity" 2 
Activity Name
Walking
WalkingUpstairs
WalkingDownstairs
Sitting
Standing
Laying


"tBodyAccMeanX" 
Mean Value of Body Acceleration in axis X
-1..1

"tBodyAccMeanY"
Mean Value of Body Acceleration in axis Y
-1..1

"tBodyAccMeanZ"
Mean Value of Body Acceleration in axis X
-1..1

"tGravityAccMeanX"
Mean Value of Gravity Acceleration in axis X
-1..1
"tGravityAccMeanY"
Mean Value of Gravity Acceleration in axis Y
-1..1

"tGravityAccMeanZ"
Mean Value of Gravity Acceleration in axis Z
-1..1

"tBodyAccJerkMeanX"
Mean Value of body linear acceleration in axis X
-1..1

"tBodyAccJerkMeanY"
Mean Value of body linear acceleration in axis Y
-1..1

"tBodyAccJerkMeanZ"
Mean Value of body linear acceleration in axis X
-1..1

"tBodyGyroMeanX"
Mean Value of Gyroscope signal in axis X
-1..1

"tBodyGyroMeanY"
Mean Value of Gyroscope signal in axis Y
-1..1

"tBodyGyroMeanZ"
Mean Value of Gyroscope signal in axis Z
-1..1

"tBodyGyroJerkMeanX"
Mean Value of Angular Velocity ofGyroscope signal in axis X
-1..1

"tBodyGyroJerkMeanY"
Mean Value of Angular Velocity ofGyroscope signal in axis Y
-1..1

"tBodyGyroJerkMeanZ"
Mean Value of Angular Velocity ofGyroscope signal in axis Z
-1..1

"tBodyAccMagMean"
Mean Value of Magnitude of Body Acceleration
-1..1

"tGravityAccMagMean"
Mean Value of Magnitude of Gravity Acceleration
-1..1

"tBodyAccJerkMagMean"
Mean Value of Magnitude of body linear acceleration
-1..1

"tBodyGyroMagMean"
Mean Value of Magnitude of Gyroscope signal
-1..1

"tBodyGyroJerkMagMean"
Mean Value of Magnitude of Angular Velocity ofGyroscope signal
-1..1

"fBodyAccMeanX"
Mean Value of Body Acceleration in axis X (FFT)
-1..1

"fBodyAccMeanY"
Mean Value of Body Acceleration in axis Y (FFT)
-1..1

"fBodyAccMeanZ"
Mean Value of Body Acceleration in axis Z (FFT)
-1..1

"fBodyAccJerkMeanX"
Mean Value of body linear acceleration in axis X (FFT)
-1..1

"fBodyAccJerkMeanY"
Mean Value of body linear acceleration in axis Y (FFT)
-1..1

"fBodyAccJerkMeanZ"
Mean Value of body linear acceleration in axis Z (FFT)
-1..1

"fBodyGyroMeanX"
Mean Value of Gyroscope signal in axis X (FFT)
-1..1

"fBodyGyroMeanY"
Mean Value of Gyroscope signal in axis Y (FFT)
-1..1

"fBodyGyroMeanZ"
Mean Value of Gyroscope signal in axis Z (FFT)
-1..1

"fBodyAccMagMean"
Mean Value of Magnitude of Body Acceleration (FFT)
-1..1

"fBodyBodyAccJerkMagMean"
Mean Value of Magnitude of body linear acceleration (FFT)
-1..1

"fBodyBodyGyroMagMean"
Mean Value of Magnitude of Gyroscope signal (FFT)
-1..1

"fBodyBodyGyroJerkMagMean"
Mean Value of Magnitude of Angular Velocity ofGyroscope signal (FFT)
-1..1

"tBodyAccStdX"
Standard Deviation of Body Acceleration in axis X
-1..1

"tBodyAccStdY"
Standard Deviation of Body Acceleration in axis Y
-1..1

"tBodyAccStdZ"
Standard Deviation of Body Acceleration in axis Z
-1..1

"tGravityAccStdX"
Standard Deviation of Gravity Acceleration in axis X
-1..1

"tGravityAccStdY"
Standard Deviation of Gravity Acceleration in axis Y
-1..1

"tGravityAccStdZ"
Standard Deviation of Gravity Acceleration in axis Z
-1..1

"tBodyAccJerkStdX"
Standard Deviation of body linear acceleration in axis X
-1..1

"tBodyAccJerkStdY"
Standard Deviation of body linear acceleration in axis Y
-1..1

"tBodyAccJerkStdZ"
Standard Deviation of body linear acceleration in axis Z
-1..1

"tBodyGyroStdX"
Standard Deviation of Gyroscope signal in axis X
-1..1

"tBodyGyroStdY"
Standard Deviation of Gyroscope signal in axis Y
-1..1

"tBodyGyroStdZ"
Standard Deviation of Gyroscope signal in axis Z
-1..1

"tBodyGyroJerkStdX"
Standard Deviation of Angular Velocity ofGyroscope signal in axis X
-1..1

"tBodyGyroJerkStdY"
Standard Deviation of Angular Velocity ofGyroscope signal in axis Y
-1..1

"tBodyGyroJerkStdZ"
Standard Deviation of Angular Velocity ofGyroscope signal in axis Z
-1..1

"tBodyAccMagStd"
Standard Deviation of Magnitude of Body Acceleration
-1..1

"tGravityAccMagStd"
Standard Deviation of Magnitude of Gravity Acceleration
-1..1

"tBodyAccJerkMagStd"
Standard Deviation of Magnitude of body linear acceleration
-1..1

"tBodyGyroMagStd"
Standard Deviation of Magnitude of Gyroscope signal
-1..1

"tBodyGyroJerkMagStd"
Standard Deviation of Magnitude of Angular Velocity ofGyroscope signal
-1..1

"fBodyAccStdX"
Standard Deviation of Body Acceleration in axis X (FFT)
-1..1

"fBodyAccStdY"
Standard Deviation of Body Acceleration in axis X (FFT)
-1..1

"fBodyAccStdZ"
Standard Deviation of Body Acceleration in axis X (FFT)
-1..1

"fBodyAccJerkStdX"
Standard Deviation of body linear acceleration in axis X (FFT)
-1..1

"fBodyAccJerkStdY"
Standard Deviation of body linear acceleration in axis Y (FFT)
-1..1

"fBodyAccJerkStdZ"
Standard Deviation of body linear acceleration in axis Z (FFT)
-1..1

"fBodyGyroStdX"
Standard Deviation of Gyroscope signal in axis X (FFT)
-1..1

"fBodyGyroStdY"
Standard Deviation of Gyroscope signal in axis Y (FFT)
-1..1

"fBodyGyroStdZ"
Standard Deviation of Gyroscope signal in axis Z (FFT)
-1..1

"fBodyAccMagStd"
Standard Deviation of Magnitude of Body Acceleration (FFT)
-1..1

"fBodyBodyAccJerkMagStd"
Standard Deviation of Magnitude of body linear acceleration (FFT)
-1..1

"fBodyBodyGyroMagStd"
Standard Deviation of Magnitude of Gyroscope signal (FFT)
-1..1

"fBodyBodyGyroJerkMagStd"
Standard Deviation of Magnitude of Angular Velocity ofGyroscope signal (FFT)
-1..1
