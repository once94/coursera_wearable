# Code Book

## Source

The original data comes from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html).

## Data Set Information

See Source for more info.

### Data Set 1 - the basic data set

The first dataset, called `dataSet`, contains merged observations from the test and the train dataset based in the original data set.

For *Data Set 1*, only only the measurements on the mean and standard deviation were extracted.

### Data Set 2 - the summed data set 
The second dataset, called `tidyData`, contains the averaged out data for each subject and each activity. It is derived from *Data Set 1*.

## Attribute Information

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 66-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Variables

#### Data Set 1 Variables

Data set has 69 variables:
* Subject - An identifier of the subject who carried out the experiment
* Learning.Set - An identifier of partitioned data set, that were randomly allocated to two separate data sets (training and test data set)
* Activity - A performed activity label
* A 66-feature vector with time and frequency domain variables that is specified in Features Selection below

#### Data Set 2 Variables

Data set has 68 variables:
* Subject - An identifier of the subject who carried out the experiment
* Activity - A performed activity label
* A 66-feature vector with time and frequency domain variables average out for each subject and each activity

### Features Selection

Source: `features_info.txt` in original data set (see Source above). Updated for actual *Data Set 1* and *Data Set 2*.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

