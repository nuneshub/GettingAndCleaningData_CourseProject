################################################################################
# Getting and Cleaning Data
# Course Project

# This R script called run_analysis.R does the following:
# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean() and std() for each measurement
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
################################################################################

# load multiple R packages

packages <- c("data.table", "reshape2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

# download data from source

Url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- file.path(getwd(), "courseprojectdata.zip")
download.file(Url, destfile=file, mode="wb")
# unzipped directory "UCI HAR Dataset" containing all data to R working dir


# 1. Merges the training and the test sets to create one data set

# reading data into R
# files in dir "Inertial Signals" were not used for this project

tmp1 <- read.table("./UCI HAR Dataset/train/subject_train.txt")
tmp2 <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(tmp1, tmp2)

tmp1 <- read.table("./UCI HAR Dataset/train/y_train.txt")
tmp2 <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity <- rbind(tmp1, tmp2)

tmp1 <- read.table("./UCI HAR Dataset/train/X_train.txt")
tmp2 <- read.table("./UCI HAR Dataset/test/X_test.txt")
features <- rbind(tmp1, tmp2)

activitynames <- read.table("./UCI HAR Dataset/activity_labels.txt")
featuresnames <- read.table("./UCI HAR Dataset/features.txt")

colnames(subject) <- "subject"
colnames(activity) <- "activity"
colnames(features) <- featuresnames$V2

# merging data into one data set

dt <- cbind(subject, activity, features)


# 2. Extracts only the measurements on the mean() and std() for each measurement

# did not include other measurements where the word "mean" appear, such as
# meanFreq and angles

featuresnames_idx <- grep("mean\\(\\)|std\\(\\)", colnames(dt))
featuresnames_idx<-c(1,2,featuresnames_idx)
dt <- dt[,featuresnames_idx]


# 3. Uses descriptive activity names to name the activities in the data set

dt[,2] <- activitynames[dt[,2],2]


# 4. Appropriately labels the data set with descriptive variable names

colnames(dt) <- make.names(colnames(dt), unique=TRUE)
colnames(dt) <- gsub("..", "", colnames(dt), fixed = TRUE)
colnames(dt) <- gsub("Acc", "Acceleration", colnames(dt), fixed = TRUE)
colnames(dt) <- gsub("Gyro", "AngularVelocity", colnames(dt), fixed = TRUE)
colnames(dt) <- gsub("Mag", "Magnitude", colnames(dt), fixed = TRUE)
colnames(dt) <- gsub("BodyBody", "Body", colnames(dt), fixed = TRUE)

# to replace only the 1st "t" with "time" and 1st "f" with "frequency"

for(i in seq_along(colnames(dt))) {
        if(substr(colnames(dt)[i],1,1)=="t") {
                colnames(dt)[i]<-paste("time",
                                       substring(colnames(dt)[i],2),sep="")
        }
        if(substr(colnames(dt)[i],1,1)=="f") {
                colnames(dt)[i]<-paste("frequency",
                                       substring(colnames(dt)[i],2),sep="")
        }
}

file <- file.path(getwd(), "data_point4.txt")
write.table(dt, file=file, row.names=FALSE, col.names=TRUE, sep="\t", 
            quote=FALSE)


# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

dt_tidy <- melt(dt,id=colnames(dt)[1:2], measure.vars=colnames(dt)[3:68])
colnames(dt_tidy)[3] <- "features"
dt_tidy <- as.data.table(dt_tidy)

setkey(dt_tidy, subject, activity, features)
dt_tidy <- dt_tidy[, list(average = mean(value)), by=key(dt_tidy)]

file <- file.path(getwd(), "tidy_data_point5.txt")
write.table(dt_tidy, file=file, row.names=FALSE, col.names=TRUE, sep="\t", 
            quote=FALSE)




