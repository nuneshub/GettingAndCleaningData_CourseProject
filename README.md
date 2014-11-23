GettingAndCleaningData_CourseProject

====================================

## Getting and Cleaning Data
### Course Project



### Requirements of the project


The requirements of this project are as follows.


Create one R script called run_analysis.R that does the following:

* 1. Merges the training and the test sets to create one data set.

* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

* 3. Uses descriptive activity names to name the activities in the data set

* 4. Appropriately labels the data set with descriptive variable names. 

* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Project 

#### Steps to reproduce the analysis

* Download and extract directory "UCI HAR Dataset", with all data, into your R working directory. The link to the data source is: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

* Copy R script "run_analysis.R", included in this repo, to the same directory. Your working directory can be obtained in RStudio with the function getwd().

* In RStudio run `source('~/run_analysis.R')`.


#### R Script Output

The script generates the `independent tidy data set with the average of each variable for each activity and each subject` as required for this project (point 5. of the requirements). This data set is saved as a txt file named `"tidy_data_point5.txt"`.

For loading the output file in RStudio use the following code:

```
file <- file.path(getwd(), "tidy_data_point5.txt")
dt_tidy <- read.table(file=file, header=TRUE, sep="\t", quote="")
```

Although not required for this project the data set correspondent to point 4. is also saved (file "data_point4.txt").

Additionally, the script starts by downloading the zip file with all data from the link provided and saving it in the R working directory with name "courseprojectdata.zip".


#### Additional information on each step of the R script


##### 1. Merges the training and the test sets to create one data set

The files in dir "Inertial Signals" of the source data set were not used for this project. 

From the README.txt file in "UCI HAR Dataset" directory results that this data was already used to obtain the "features" data necessary for this project and included in the "test" and "train" directories.


##### 2. Extracts only the measurements on the mean() and std() for each measurement

Other measurements where the word "mean" appear were not included, such as "meanFreq" and "angle..Mean..". Point 2. above seems to point in that direction with "Extracts only the measurements on the mean() and std() (...)". The adaptation of the code to include all features where "mean" appear would be easily done if necessary, but that is behind the requirements of this project.


##### 3. Uses descriptive activity names to name the activities in the data set

The descriptive activity names supplied in the data set were used (file activity_labels.txt), since they are sufficiently descriptive.

Descriptive names should be understood by anyone reading the code, being able to guess its meaning and when they have two or more words, the initial letter of each word should be capitalised (except the first word) or the words separated by underscore.


##### 4. Appropriately labels the data set with descriptive variable names

In this case the names for the "features" data were not sufficiently descriptive. Changes were made in order to be more comprehensible. In particular in names starting with "t" this letter was replaced with "time" and in names starting with "f" this letter was replaced with "frequency", to indicate time and frequency domains. Other changes were made and typos corrected (ex. "BodyBody" replaced by "Body").


##### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Definition of tidy data:

* Each variable forms a column.
* Each observation forms a row.
* Each type of observational unit forms a table.

The output data set respects these principles of tidy data.

This point (5.) could be solved in two forms, with wide or long form data sets as stated in the peer evaluation instructions: "Either a wide or a long form of the data is acceptable".

Given the requirement in point 5."independent tidy data set with the average of each variable for each activity and each subject" it seems that a data set with the following structure would be more appropriate (long or tall data set):

        ========================================================================
                subject         activity        features        average
        ========================================================================
        
        
        ========================================================================

Thus, the melt() function was used to melt the "features" data columns into one column, going from a wide data set to a long data set.


### Information submitted for the Course Project

        ========================================================================
        Information                             File
        ========================================================================
        Required information:
        1) Tidy data set                        tidy_data_point5.txt
        2) Link to Github with R script         run_analysis.R
        3) Code book                            CodeBook.md
        4) README                               README.md
        
        Additional information: 
        Data set at point 4.                    data_point4.txt
        Original data                           directory "UCI HAR Dataset"
        ========================================================================

### Acknowledgements

Acknowledgements are due to all participants in the threads of the Discussions Forums of this course for the valuable information provided. 


### References

Forums / Course Project / David's Project FAQ
<https://class.coursera.org/getdata-009/forum/thread?thread_id=58>

Wickham, Hadley (2014) "Tidy Data", Journal of Statistical Software
<http://www.jstatsoft.org/v59/i10/paper>

"Incremental Java. Descriptive Variable Names"
<http://www.cs.umd.edu/~clin/MoreJava/Intro/var-descr.html>


