# Uses the data.table library
library("data.table")

## 1. Merges the training and the test sets to create one data set.

# Read the training data
xTrainTbl <- read.table("train/X_train.txt")
yTrainTbl <- read.table("train/y_train.txt")
subjectTrainTbl <- read.table("train/subject_train.txt")

# Read the test data
xTestTbl <- read.table("test/X_test.txt")
yTestTbl <- read.table("test/y_test.txt")
subjectTestTbl <- read.table("test/subject_test.txt")

# Combine training and test data parts
trainSet <- cbind(subjectTrainTbl,yTrainTbl,xTrainTbl)
testSet <- cbind(subjectTestTbl,yTestTbl,xTestTbl)

# Combine both training and test data into one large data set
allData <- rbind(trainSet,testSet)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Read features.txt (provided) which describes feature columns
features <- read.table("features.txt")

# Cleanup feature names
featureNames <- as.character(factor(features[,2]))
featureNames <- gsub("\\(|-|\\)","", featureNames)
featureNames <- gsub(",","", featureNames)

# Rename each column of the test set with the help of features_info.txt (provided)
names(allData) <- c("Subject", "Activity",featureNames)

# Keep columns that are measurements on the mean or standard deviation only
keepFeatures <- grep("mean+[^F]|std", features[, 2]) + 2

# Add the columns for subject and label
selectedColumns <- c(1,2,keepFeatures)

# New data set based on kept columns
goodData <- allData[selectedColumns]

## 3. Uses descriptive activity names to name the activities in the data set

# Read activity_labels.txt (provided) which contains descriptive activity names
activityLabels <- read.table("activity_labels.txt")

#assign activity words to numbers as a factor
goodData$Activity <- factor(goodData$Activity, labels=activityLabels[,2])

## 4. Appropriately labels the data set with descriptive variable names. 

# Already done in 2.

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

aggregatedData <- aggregate(goodData[,3:59], by=list("Subject"=goodData$Subject, "Activity"=goodData$Activity), FUN=mean)
write.table(aggregatedData, file = "tidy_data.txt", row.name=FALSE)
