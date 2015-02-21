## This code book describes the variables in the tidy_data.txt file that is the output of running the run_analysis.R.


The following paragraph describes the features of the original data set [1] prior to analysis.

Feature Selection (Original Data) [1]
=====================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and 
tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 
20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals
 (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using 
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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


## Tidy Data
Different activities were performed by different subject in order to collect the data that is provided in the UCI HAR Dataset.
However, these data were stored in different files with variables names that are not quite descriptive. The purpose of this 
assignment is to combine the different datasets into one dataset with descriptive variables names.

To make the variable names descriptive, I simply replaced the abbreviated descriptions with their full names.
t -> time
f -> frequency
Acc -> Accelerometer
Gyro -> Gyroscope
Mag -> Magnitude
BodyBody -> Body

As a result, 
tBodyAcc-XYZ -> timeBodyAccelerometer-XYZ
fBodyAccJerkMag -> frequencyBodyAccelerometerJerkMagnitude
                .
                .
                .
                .


There are many variables were estimated from the collected signals. However, for the purpose of this project, we were
only interested in the mean value and the standard deviation. As a result, only the variables representing the mean and the
standard deviation were selected in the tidy data.

mean(): Mean value
std(): Standard deviation


The complete list of variables in the 'tidy_data.txt' is:
 [1] "subject"                                        "activity"                                      
 [3] "timeBodyAccelerometer-mean()-X"                 "timeBodyAccelerometer-mean()-Y"                
 [5] "timeBodyAccelerometer-mean()-Z"                 "timeBodyAccelerometer-std()-X"                 
 [7] "timeBodyAccelerometer-std()-Y"                  "timeBodyAccelerometer-std()-Z"                 
 [9] "timeGravityAccelerometer-mean()-X"              "timeGravityAccelerometer-mean()-Y"             
[11] "timeGravityAccelerometer-mean()-Z"              "timeGravityAccelerometer-std()-X"              
[13] "timeGravityAccelerometer-std()-Y"               "timeGravityAccelerometer-std()-Z"              
[15] "timeBodyAccelerometerJerk-mean()-X"             "timeBodyAccelerometerJerk-mean()-Y"            
[17] "timeBodyAccelerometerJerk-mean()-Z"             "timeBodyAccelerometerJerk-std()-X"             
[19] "timeBodyAccelerometerJerk-std()-Y"              "timeBodyAccelerometerJerk-std()-Z"             
[21] "timeBodyGyroscope-mean()-X"                     "timeBodyGyroscope-mean()-Y"                    
[23] "timeBodyGyroscope-mean()-Z"                     "timeBodyGyroscope-std()-X"                     
[25] "timeBodyGyroscope-std()-Y"                      "timeBodyGyroscope-std()-Z"                     
[27] "timeBodyGyroscopeJerk-mean()-X"                 "timeBodyGyroscopeJerk-mean()-Y"                
[29] "timeBodyGyroscopeJerk-mean()-Z"                 "timeBodyGyroscopeJerk-std()-X"                 
[31] "timeBodyGyroscopeJerk-std()-Y"                  "timeBodyGyroscopeJerk-std()-Z"                 
[33] "timeBodyAccelerometerMagnitude-mean()"          "timeBodyAccelerometerMagnitude-std()"          
[35] "timeGravityAccelerometerMagnitude-mean()"       "timeGravityAccelerometerMagnitude-std()"       
[37] "timeBodyAccelerometerJerkMagnitude-mean()"      "timeBodyAccelerometerJerkMagnitude-std()"      
[39] "timeBodyGyroscopeMagnitude-mean()"              "timeBodyGyroscopeMagnitude-std()"              
[41] "timeBodyGyroscopeJerkMagnitude-mean()"          "timeBodyGyroscopeJerkMagnitude-std()"          
[43] "frequencyBodyAccelerometer-mean()-X"            "frequencyBodyAccelerometer-mean()-Y"           
[45] "frequencyBodyAccelerometer-mean()-Z"            "frequencyBodyAccelerometer-std()-X"            
[47] "frequencyBodyAccelerometer-std()-Y"             "frequencyBodyAccelerometer-std()-Z"            
[49] "frequencyBodyAccelerometerJerk-mean()-X"        "frequencyBodyAccelerometerJerk-mean()-Y"       
[51] "frequencyBodyAccelerometerJerk-mean()-Z"        "frequencyBodyAccelerometerJerk-std()-X"        
[53] "frequencyBodyAccelerometerJerk-std()-Y"         "frequencyBodyAccelerometerJerk-std()-Z"        
[55] "frequencyBodyGyroscope-mean()-X"                "frequencyBodyGyroscope-mean()-Y"               
[57] "frequencyBodyGyroscope-mean()-Z"                "frequencyBodyGyroscope-std()-X"                
[59] "frequencyBodyGyroscope-std()-Y"                 "frequencyBodyGyroscope-std()-Z"                
[61] "frequencyBodyAccelerometerMagnitude-mean()"     "frequencyBodyAccelerometerMagnitude-std()"     
[63] "frequencyBodyAccelerometerJerkMagnitude-mean()" "frequencyBodyAccelerometerJerkMagnitude-std()" 
[65] "frequencyBodyGyroscopeMagnitude-mean()"         "frequencyBodyGyroscopeMagnitude-std()"         
[67] "frequencyBodyGyroscopeJerkMagnitude-mean()"     "frequencyBodyGyroscopeJerkMagnitude-std()" 



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

