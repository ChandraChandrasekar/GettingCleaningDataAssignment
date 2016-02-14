
# Assume we are in folder where HAR data was unzipped. If required setwd appropriately
# setwd(".../UCI HAR Dataset")

library(dplyr)
library(tidyr)


# Helper functions
activityFinder <- function (labelnum) {
        return(as.character(activitylabels[labelnum,2]))
}


##### STEP 1  Read in data and combine train/test data
#  Read common data  into tables/dataframes(dfs)
activitylabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

#  Read test data into vectors/dfs and combine subjectid, activityid and acc/gyro data into one df 
testxtest <- read.table("test/X_test.txt")
colnames(testxtest) <- paste(features[,1], features[,2], sep="_")  ## used to be features[,2]

testsubjecttest <- read.table("test/subject_test.txt")
testytest <- read.table("test/y_test.txt")
testsuby <- cbind(testsubjecttest, testytest)
colnames(testsuby) <-  c("Subject", "Activity")

# Now compose into one test df
testdata <- cbind(testsuby, testxtest)

##################
#  Read train data into vectors/dfs and combine subjectid, activityid and acc/gyro data into one df 
trainxtrain <- read.table("train/X_train.txt")
colnames(trainxtrain) <- paste(features[,1], features[,2], sep="_")  ## used to be features[,2]

trainsubjecttrain <- read.table("train/subject_train.txt")
trainytrain <- read.table("train/y_train.txt")
trainsuby <- cbind(trainsubjecttrain, trainytrain)
colnames(trainsuby) <-  c("Subject", "Activity")

# Now compose into one train df
traindata <- cbind(trainsuby, trainxtrain)

# Now merge train and test data
traintestdata <- rbind(traindata, testdata)


##### STEP 2   Extract columns with mean() and std() 
dftraintestdata <- tbl_df(traintestdata)
meanstd_traintestdata <- select(dftraintestdata, Subject, Activity, contains("mean()"), contains("std()"))


##### STEP 3   Change activity ids to activity names
# We use the helper function above to get this done
meanstd_traintestdata <- mutate(meanstd_traintestdata, Activity = activityFinder(Activity))


##### STEP 4   Make variable names descriptive
# Changing  ^[0-9]+_ -> "", ^t -> time, ^f-> freq, Acc-> Accel, mean() -> Avg, std() -> StdDev,  - -> "", () -> ""
# Not sure how many of these really help make the variables more descriptive.

# Could have been done with calls to rename too

col <- colnames(meanstd_traintestdata)
col <- gsub("^[0-9]+_", "", col)   # zap all nnn_
col <- gsub("^t", "time", col)     # t -> freq
col <- gsub("^f", "freq", col)     # f -> freq
col <- gsub("Acc", "Accel", col)   # Acc -> Accel
col <- gsub("mean", "Avg", col)    # mean -> Avg
col <- gsub("std", "StdDev", col)  # std -> StdDev
col <- gsub("-", "", col)          # zap hyphens
col <- gsub("\\Q()\\E", "", col, perl=TRUE)  # zap ()s

colnames(meanstd_traintestdata)  <- col  # map back to df


##### STEP 5   Create indep tidy data set with average of each var, summarized for each activity-subject combination

normalizedAveragedData <- group_by(meanstd_traintestdata, Activity, Subject)  %>% summarize_each(funs(mean))


### Now write it out to a file
write.table(normalizedAveragedData, file = "tidyData.txt", row.names=FALSE)
