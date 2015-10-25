##  run_analysis.R

##  Here are the data for the project: 

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# 'activity_labels.txt': Links the class labels with their activity name.
# 'features.txt': List of all features.
# 'train/X_train.txt': Training set.
# 'train/y_train.txt': Training labels.
# 'test/X_test.txt': Test set.
# 'test/y_test.txt': Test labels.
library(dplyr)

path = "/Users/ozgurgul/GitHub/GCD/TermProject/UCI HAR Dataset/"
activityLabels = "./activity_labels.txt"
features = "./features.txt"
xTrain = "./train/X_train.txt"
xTest = "./test/X_test.txt"
yTrain = "./train/y_train.txt"
yTest = "./test/y_test.txt"


      ## 'path' is a character vector of length 1 indicating
      ## the location of the CSV files
      if(file_test("-d", path) == FALSE) return('This is not a valid directory')
      
      setwd(path)
      
      # Conform activityName column from activity_labels.txt 
      activityDataset<- read.csv(activityLabels, sep=" ", header = FALSE)
      colnames(activityDataset) <- c("ID","activityName")
      # Conform column names from features.txt 
      colNames<- read.csv(features, sep="", header = FALSE)
      # Transpose the rows to columns
      colNames <- t(colNames[2])
 
      # Create training dataset 
      xDataset <- read.table(xTrain, header=FALSE) 
      # Set the column names
      colnames(xDataset) <- colNames
      valid_column_names <- make.names(names=names(xDataset), unique=TRUE, allow_ = TRUE)
      names(xDataset) <- valid_column_names
      
      # Create training activity dataset 
      yDataset <- read.table(yTrain, header=FALSE) 
      colnames(yDataset) <- c("ID")
      # Merge training activity dataset with activity name
      yDataset <- merge(yDataset,activityDataset,by="ID") %>%
            select(activityName)
      # Create big activity dataset
      dt <- xDataset %>%
            select(contains(".mean.."), contains(".std..")) %>% 
            mutate( sourceType="training") 
      dt <- cbind(dt, yDataset)
      
      # Create test activity dataset 
      temp_dataset <-read.table(xTest, header=FALSE)
      # Set the column names
      colnames(temp_dataset) <- colNames
      valid_column_names <- make.names(names=names(temp_dataset), unique=TRUE, allow_ = TRUE)
      names(temp_dataset) <- valid_column_names
      
      # Create test activity dataset
      ytemp_dataset <- read.table(yTest, header=FALSE) 
      colnames(ytemp_dataset) <- c("ID")
      # Merge test activity dataset with activity name
      ytemp_dataset <- merge(ytemp_dataset,activityDataset,by="ID") %>%
            select(activityName)
      # Create big activity dataset
      dtemp <- temp_dataset %>%
            select(contains(".mean.."), contains(".std..")) %>% 
            mutate( sourceType="test") 
      dtemp <- cbind(dtemp, ytemp_dataset)
      
      # Create master activity dataset
      dataset<-rbind(dt, dtemp)
      
      # Remove datasets
      rm(temp_dataset) 
      rm(ytemp_dataset)
      rm(dtemp)
      rm(dt)
      
      View(dataset)
      ## step nothing
      # write the data for course upload
      write.table(format(dataset, scientific=T), "tidy1.txt",
                  row.names=F, col.names=F, quote=2)
      
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#    each variable for each activity and each subject.          
      
      aggrDataset <- aggregate(dataset[, 1:(ncol(dataset)-2)],
                             by=list(sourceType = dataset$sourceType, 
                                     activityName = dataset$activityName),
                             mean)
      
      ## step nothing
      # write the data for course upload
      write.table(format(aggrDataset, scientific=T), "tidy2.txt",
                  row.names=F, col.names=F, quote=2)