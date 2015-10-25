Codebook for wearable computing dataset
==================================

## Variables
````
sourceType                 1..2
    Subject number
                           1..30 .Unique identifier assigned to each subject

activityName               6..18
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"


tBodyAcc.mean...X	            12	
      Described below

tBodyAcc.mean...Y	            12	
      Described below

tBodyAcc.mean...Z	            12	
      Described below

tGravityAcc.mean...X	         12	
      Described below

tGravityAcc.mean...Y	         12	
      Described below

tGravityAcc.mean...Z	         12	      
      Described below

tBodyAccJerk.mean...X	      12	
      Described below

tBodyAccJerk.mean...Y	      12	
      Described below

tBodyAccJerk.mean...Z	      12	
      Described below

tBodyGyro.mean...X	         12	
      Described below

tBodyGyro.mean...Y	         12
   	Described below

tBodyGyro.mean...Z	         12	
      Described below

tBodyGyroJerk.mean...X	      12	
      Described below

tBodyGyroJerk.mean...Y	      12	
      Described below

tBodyGyroJerk.mean...Z	      12	
      Described below

tBodyAccMag.mean..	         12	
      Described below

tGravityAccMag.mean..	      12	
      Described below

tBodyAccJerkMag.mean..	      12	
      Described below

tBodyGyroMag.mean..	         12	
      Described below

tBodyGyroJerkMag.mean..	      12	
      Described below

fBodyAcc.mean...X	            12	
      Described below

fBodyAcc.mean...Y	            12	
      Described below

fBodyAcc.mean...Z	            12	
      Described below

fBodyAccJerk.mean...X	      12	
      Described below

fBodyAccJerk.mean...Y	      12	
      Described below

fBodyAccJerk.mean...Z	      12	
      Described below

fBodyGyro.mean...X	         12	
      Described below

fBodyGyro.mean...Y	         12	
      Described below

fBodyGyro.mean...Z	         12	
      Described below

fBodyAccMag.mean..	         12	
      Described below

fBodyBodyAccJerkMag.mean..	   12	
      Described below

fBodyBodyGyroMag.mean..	      12	
      Described below

fBodyBodyGyroJerkMag.mean..	12	
      Described below

tBodyAcc.std...X	            12	
      Described below

tBodyAcc.std...Y	            12	
      Described below

tBodyAcc.std...Z	            12	
      Described below

tGravityAcc.std...X	         12	
      Described below

tGravityAcc.std...Y	         12	
      Described below

tGravityAcc.std...Z	         12	
      Described below

tBodyAccJerk.std...X	         12	
      Described below

tBodyAccJerk.std...Y	         12	
      Described below

tBodyAccJerk.std...Z	         12	
      Described below

tBodyGyro.std...X	            12	
      Described below

tBodyGyro.std...Y	            12	
      Described below

tBodyGyro.std...Z	            12	
      Described below

tBodyGyroJerk.std...X	      12	
      Described below

tBodyGyroJerk.std...Y	      12	   
      Described below

tBodyGyroJerk.std...Z	      12	
      Described below

tBodyAccMag.std..	            12	
      Described below

tGravityAccMag.std..	         12	
      Described below

tBodyAccJerkMag.std..	      12	
      Described below

tBodyGyroMag.std..	         12	
      Described below

tBodyGyroJerkMag.std..	      12	
      Described below

fBodyAcc.std...X	            12	   
      Described below

fBodyAcc.std...Y	            12	
      Described below

fBodyAcc.std...Z	            12	
      Described below

fBodyAccJerk.std...X	         12	
      Described below

fBodyAccJerk.std...Y       	12	
      Described below

fBodyAccJerk.std...Z	         12	
      Described below

fBodyGyro.std...X	            12	
      Described below

fBodyGyro.std...Y	            12	
      Described below

fBodyGyro.std...Z	            12	
      Described below

fBodyAccMag.std..	            12	   
      Described below

fBodyBodyAccJerkMag.std..	   12	
      Described below

fBodyBodyGyroMag.std..	      12	
      Described below

fBodyBodyGyroJerkMag.std..	   12	
      Described below


````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 2 subjects and 6 activities, hence the resulting dataset is 12 rows by 88 columns.