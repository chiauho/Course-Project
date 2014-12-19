**Background**   
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity signals were measured at a constant rate of 50Hz.


This is the code book for the tidy data resulted from the experiments (tidy_data.txt data file).
It describes the 81 variables (columns) in the data file.
The first 2 columns describe the subject identity (by number 1 to 30) and activities performed by each subject. 

The next 79 variables have the following format:

                  XAABB-CC-D

**X** = t or f. t = time domain measurements captured at 50HZ. f = application of Fast Fourier Transform (FTT) to the time domain measurements

**AA** = BodyAcc, GravityAcc or BodyGyro signals. The linear acceleration signal from the accelerometer (Acc) is due to a combination of body and gravitation accelerations. Gravitational acceleration signal is filtered off using low pass Butterworth filter with a corner frequency of 0.3 Hz. BodyGyro measures the body angular velocity from the gyroscope.

**BB** = Jerk, JerkMag or Mag signals. Jerk signals are derived from body linear acceleration or angular velocity signals in time domain. Magnitude (Mag) of some of these signals were calculated using the Euclidean norm.These are tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag

**CC** = mean(), std() or meanFreq. mean = Mean value estimated from the signals; std = Standard Deviation estimated frome the signals; meanFreq = Weighted average of the frequency components to obtain a mean frequency

**D** = X,Y,Z or none. X, Y, Z directions. Mag does not have directions.

Therefore examples of a variable description would be:

tBodyAccJerk-mean()-X (X=t,AA=BodyAcc,BB=Jerk,CC=mean(),D=X)
fBodyGyroMag-std() (X=f,AA=BodyGyro,BB=Mag,CC=std())
