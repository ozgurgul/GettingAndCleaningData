# Getting and cleaning data

For creating a tidy data set of wearable computing data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files in this repo
* README.md -- you are reading it right now
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- actual R code

## run_analysis.R goals
 Create one R script called run_analysis.R that does the following. 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
    each variable for each activity and each subject. 

It should run in a folder of the Samsung data (the zip had this folder: UCI HAR Dataset)
The script assumes it has in it's working directory the following files and folders:
* 'activity_labels.txt': Links the class labels with their activity name.
* 'features.txt': List of all features.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The output is created in working directory with the name of tidy2.txt

*Note:* the R script is built to run without including any libraries for the purpose of this course.

## run_analysis.R walkthrough
It follows the goals step by step.

 * Change 'path' 
      * Check the working directory location of the CSV files exist
      
      * Conform activityName column from activity_labels.txt 
      * Conform column names from features.txt 
      * Transpose the rows to columns
      * Create training dataset 
      * Set the column names
      * Create training activity dataset 
      * Merge training activity dataset with activity name
      * Create big activity dataset
      * Repeat same for test activity dataset
      * Create tidy dataset
      
* Final step:
  * Write the new tidy set into a text file called tidy2.txt, formatted similarly to the original files.