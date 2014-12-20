# Getting and Cleaning Data project.
# The goal of this project is getting a tidy data set from raw data. the task 
# inlcludes merging files, and others.
# The file contains one function splitted in three sections.In parenthesis number
# of task as explained in project.
# Section 1: merging both data sets(1)
# Section 2: extract measurements, add names to activities and labels to 
# variables(2,3,4)
# Section 3: extract average values(5)


run_analysis <- function(){

# original data set must be stored in working directory saved with its original
# name "UCI HAR Dataset"
# load original data files
observationsTrainSet <- read.table("UCI HAR Dataset/train/X_train.txt")
labelsTrainSet <- read.table("UCI HAR Dataset/train/y_train.txt")
subjectTrainSet <- read.table("UCI HAR Dataset/train/subject_train.txt")

observationsTestSet <- read.table("UCI HAR Dataset/test/X_test.txt")
labelsTestSet <- read.table("UCI HAR Dataset/test/y_test.txt")
subjectTestSet <- read.table("UCI HAR Dataset/test/subject_test.txt")

listOfVariables <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")


# Merging observations, activity labels and subject number from the data sets.
observationsMergedSet <- rbind(observationsTestSet,observationsTrainSet)
labelsMergedSet <- rbind(labelsTestSet, labelsTrainSet)
subjectMergedSet <- rbind(subjectTestSet, subjectTrainSet)

################################################################################
# Replacing activity numbers for labels (task 4)
numberOfObservations <- nrow(labelsMergedSet)
# print( c("Number of observations", numberOfObservations))
activitiesMergedSet <- vector(mode = "character",length = numberOfObservations)
for (i in 1:numberOfObservations) {
    activitiesMergedSet[i] <- as.character(activityLabels[labelsMergedSet[i,1],2])
}

################################################################################
# Merging data in one data set, subject, activitiy and observations (task 1)
dataMergedSet <- cbind(subjectMergedSet, 
                       activitiesMergedSet, observationsMergedSet)

################################################################################
# Adding variable names in the merged data set(task 3)
names(dataMergedSet) <- c("Subject", "Activity",
                          as.character(listOfVariables[,2]))

################################################################################
# Extract require data from merged data set(task 2)
# Check variavle names that contain mean and average values.
containMean <- grep("mean",names(dataMergedSet))
containStd <- grep("std", names(dataMergedSet))
# Sortering 
containBoth <- sort( c(containMean,containStd))

# Extracting requested data, this include Subject and activity column 
# as well as all the variable columns containing mean or standard deviation 
# values
meanAndStdsDataSet <- dataMergedSet[,c(1:2,containBoth)]


################################################################################
# Summarizing  mean and standard deviation observations for each subject and 
# activity (task 5)
summarizeData <- aggregate(meanAndStdsDataSet[,3:81],
            list( 'Subject number' = meanAndStdsDataSet$Subject, 
                  'Activity performed'= meanAndStdsDataSet$Activity), mean)

# Data is sorted first based on subject and next on activity.
summarizeData <- summarizeData[order(summarizeData$'Subject number'),]
summarizeData[,1] <- as.factor(summarizeData[,1])

# Write data set in file 'results.txt'
write.table(summarizeData, file = "results.txt", row.names = F)


}