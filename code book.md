**Study Design**   
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity signals were measured at a constant rate of 50Hz.   

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.   

From the raw data, the mean and standard deviation variables were extracted. A tidy data set with the average of each variable for each activity and each subject was then created.


**Code book**     
This is the code book for the tidy data (tidy_data.txt) resulted from the experiments.  
It describes the 68 variables (columns) in the data file.    
The first 2 columns describe the subject identity (by number 1 to 30) and the six activities performed by each subject.    

The next 66 variables have the following format:

                  Y XAABB-CC-D

The format has the following meaning:      

**Y** = Mean of     
All the 66 variables are mean values. And yes, so you get mean of std().        

**X** = t or f.    
t = time domain measurements of the linear acceleration and angular velocity signals captured.    
f = application of Fast Fourier Transform (FTT) to the time domain measurements (t). f denotes frequency domain signals. See note below.     

**AA** = BodyAcc, GravityAcc or BodyGyro signals.    
The linear acceleration signal from the accelerometer is a combination of the body acceleration (BodyAcc) and gravitation acceleration (GravityAcc). Gravitational acceleration signal is filtered off using low pass Butterworth filter with a corner frequency of 0.3 Hz.
BodyGyro signal measures the body angular velocity from the gyroscope.

**BB** = Jerk, JerkMag or Mag signals.      
Jerk signals are derived from body linear acceleration or angular velocity signals in time domain (t).     
Magnitude (Mag) of some of these signals were calculated using the Euclidean norm. See note below.     

**CC** = mean(), std().    
mean() = Mean value estimated from the signals;     
std() = Standard Deviation estimated from the signals;    

**D** = X,Y,Z or none.   
X, Y, Z directions due to either the linear acceleration or angular velocity.          
Mag does not have directions.     

Therefore examples of a variable description would be:

**tBodyAccJerk-mean()-X** (X=t,AA=BodyAcc,BB=Jerk,CC=mean(),D=X)
**fBodyGyroMag-std()** (X=f,AA=BodyGyro,BB=Mag,CC=std())

**Note:**          
Fast Fourier Transformed was applied to the following signals to obtain the frequency domain signals (f) - BodyAcc-XYZ, BodyAccJerk-XYZ, BodyGyro-XYZ, BodyAccJerkMag, BodyGyroMag, BodyGyroJerkMag.     

Euclidean norm are applied to the following time domain measurements to obtain the magnitude - tBodyAcc, tGravityAcc, tBodyAccJerk, tBodyGyro, tBodyGyroJerk.      

**License:**     
Use of the experimental datasets in publications must be acknowledged by referencing the following publication [1]   

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

