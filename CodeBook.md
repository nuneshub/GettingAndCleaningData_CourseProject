GettingAndCleaningData_CourseProject

====================================

## Code Book



### Study design section (data)

The data supplied for this Course Project represents data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones> 

The data was downloaded from the following source: 

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The data was downloaded from the link above (zip file), extracted, and the directory "UCI HAR Dataset" and sub-directories saved in the R working directory. A copy of the complete data is also included in this repository.

The files in the directory "Inertial Signals" of the source data set were not used for this project. 

From the original README.txt file in "UCI HAR Dataset" directory:
"In the original experiments the sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

So, the data in the directory "Inertial Signals" was already used to obtain the "features" data necessary for this project and included in the "test" and "train" directories.


### Code book section (variables)

#### Variables and description

#### subject

Id of person, part of a group of 30 volunteers within an age bracket of 19-48 years that have participated in the experiments.

`UNITS:` No units. 

```
unique(dt_tidy$subject)
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
```


#### activity

Activity name. 

`UNITS:` No units. 

Each subject performed six activities:

```
unique(dt_tidy$activity)
[1] LAYING   SITTING   STANDING   WALKING   WALKING_DOWNSTAIRS   WALKING_UPSTAIRS 
```

#### features

Features are variables calculated from the signals recorded during the activities, when the subjects (persons) are wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope the signals were captured.

`UNITS:` No units. Features are normalised and bounded within [-1,1].

```
unique(dt_tidy$features)

 [1] timeBodyAcceleration.mean.X                    timeBodyAcceleration.mean.Y                    timeBodyAcceleration.mean.Z                    timeBodyAcceleration.std.X                    
 [5] timeBodyAcceleration.std.Y                     timeBodyAcceleration.std.Z                     timeGravityAcceleration.mean.X                 timeGravityAcceleration.mean.Y                
 [9] timeGravityAcceleration.mean.Z                 timeGravityAcceleration.std.X                  timeGravityAcceleration.std.Y                  timeGravityAcceleration.std.Z                 
[13] timeBodyAccelerationJerk.mean.X                timeBodyAccelerationJerk.mean.Y                timeBodyAccelerationJerk.mean.Z                timeBodyAccelerationJerk.std.X                
[17] timeBodyAccelerationJerk.std.Y                 timeBodyAccelerationJerk.std.Z                 timeBodyAngularVelocity.mean.X                 timeBodyAngularVelocity.mean.Y                
[21] timeBodyAngularVelocity.mean.Z                 timeBodyAngularVelocity.std.X                  timeBodyAngularVelocity.std.Y                  timeBodyAngularVelocity.std.Z                 
[25] timeBodyAngularVelocityJerk.mean.X             timeBodyAngularVelocityJerk.mean.Y             timeBodyAngularVelocityJerk.mean.Z             timeBodyAngularVelocityJerk.std.X             
[29] timeBodyAngularVelocityJerk.std.Y              timeBodyAngularVelocityJerk.std.Z              timeBodyAccelerationMagnitude.mean             timeBodyAccelerationMagnitude.std             
[33] timeGravityAccelerationMagnitude.mean          timeGravityAccelerationMagnitude.std           timeBodyAccelerationJerkMagnitude.mean         timeBodyAccelerationJerkMagnitude.std         
[37] timeBodyAngularVelocityMagnitude.mean          timeBodyAngularVelocityMagnitude.std           timeBodyAngularVelocityJerkMagnitude.mean      timeBodyAngularVelocityJerkMagnitude.std      
[41] frequencyBodyAcceleration.mean.X               frequencyBodyAcceleration.mean.Y               frequencyBodyAcceleration.mean.Z               frequencyBodyAcceleration.std.X               
[45] frequencyBodyAcceleration.std.Y                frequencyBodyAcceleration.std.Z                frequencyBodyAccelerationJerk.mean.X           frequencyBodyAccelerationJerk.mean.Y          
[49] frequencyBodyAccelerationJerk.mean.Z           frequencyBodyAccelerationJerk.std.X            frequencyBodyAccelerationJerk.std.Y            frequencyBodyAccelerationJerk.std.Z           
[53] frequencyBodyAngularVelocity.mean.X            frequencyBodyAngularVelocity.mean.Y            frequencyBodyAngularVelocity.mean.Z            frequencyBodyAngularVelocity.std.X            
[57] frequencyBodyAngularVelocity.std.Y             frequencyBodyAngularVelocity.std.Z             frequencyBodyAccelerationMagnitude.mean        frequencyBodyAccelerationMagnitude.std        
[61] frequencyBodyAccelerationJerkMagnitude.mean    frequencyBodyAccelerationJerkMagnitude.std     frequencyBodyAngularVelocityMagnitude.mean     frequencyBodyAngularVelocityMagnitude.std     
[65] frequencyBodyAngularVelocityJerkMagnitude.mean frequencyBodyAngularVelocityJerkMagnitude.std 
```

====================================

##### Time domain signals

====================================

**timeBodyAcceleration.mean.X**

**timeBodyAcceleration.mean.Y**

**timeBodyAcceleration.mean.Z**

mean body acceleration, axis X, Y and Z

**timeBodyAcceleration.std.X**

**timeBodyAcceleration.std.Y**

**timeBodyAcceleration.std.Z**

standard deviation of body acceleration, axis X, Y and Z

**timeGravityAcceleration.mean.X**

**timeGravityAcceleration.mean.Y**

**timeGravityAcceleration.mean.Z**

mean gravity acceleration, axis X, Y and Z

**timeGravityAcceleration.std.X**

**timeGravityAcceleration.std.Y**

**timeGravityAcceleration.std.Z**

standard deviation of gravity acceleration, axis X, Y and Z

**timeBodyAccelerationJerk.mean.X**

**timeBodyAccelerationJerk.mean.Y**

**timeBodyAccelerationJerk.mean.Z**

mean body acceleration, Jerk signals, axis X, Y and Z

**timeBodyAccelerationJerk.std.X**

**timeBodyAccelerationJerk.std.Y**

**timeBodyAccelerationJerk.std.Z**

standard deviation of body acceleration, Jerk signals, axis X, Y and Z

**timeBodyAngularVelocity.mean.X**

**timeBodyAngularVelocity.mean.Y**

**timeBodyAngularVelocity.mean.Z**

mean body angular velocity, axis X, Y and Z

**timeBodyAngularVelocity.std.X**

**timeBodyAngularVelocity.std.Y**

**timeBodyAngularVelocity.std.Z**

standard deviation of body angular velocity, axis X, Y and Z

**timeBodyAngularVelocityJerk.mean.X**

**timeBodyAngularVelocityJerk.mean.Y**

**timeBodyAngularVelocityJerk.mean.Z**

mean body angular velocity, Jerk signals, axis X, Y and Z

**timeBodyAngularVelocityJerk.std.X**

**timeBodyAngularVelocityJerk.std.Y**

**timeBodyAngularVelocityJerk.std.Z**

standard deviation of body angular velocity, Jerk signals, axis X, Y and Z

**timeBodyAccelerationMagnitude.mean**

Mean magnitude (Euclidean norm) of body acceleration

**timeBodyAccelerationMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body acceleration

**timeGravityAccelerationMagnitude.mean**

Mean magnitude (Euclidean norm) of gravity acceleration

**timeGravityAccelerationMagnitude.std**

standard deviation of magnitude (Euclidean norm) of gravity acceleration

**timeBodyAccelerationJerkMagnitude.mean**

Mean magnitude (Euclidean norm) of body acceleration, Jerk signals

**timeBodyAccelerationJerkMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body acceleration, Jerk signals

**timeBodyAngularVelocityMagnitude.mean**

Mean magnitude (Euclidean norm) of body angular velocity

**timeBodyAngularVelocityMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body angular velocity

**timeBodyAngularVelocityJerkMagnitude.mean**

Mean magnitude (Euclidean norm) of body angular velocity, Jerk signals

**timeBodyAngularVelocityJerkMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body angular velocity, Jerk signals

====================================

##### Frequency domain signals

====================================

**frequencyBodyAcceleration.mean.X**

**frequencyBodyAcceleration.mean.Y**

**frequencyBodyAcceleration.mean.Z**

mean body acceleration, axis X, Y and Z

**frequencyBodyAcceleration.std.X**

**frequencyBodyAcceleration.std.Y**

**frequencyBodyAcceleration.std.Z**

standard deviation of body acceleration, axis X, Y and Z

**frequencyBodyAccelerationJerk.mean.X**

**frequencyBodyAccelerationJerk.mean.Y**

**frequencyBodyAccelerationJerk.mean.Z**

mean body acceleration, axis X, Y and Z, Jerk signals

**frequencyBodyAccelerationJerk.std.X**

**frequencyBodyAccelerationJerk.std.Y**

**frequencyBodyAccelerationJerk.std.Z**

standard deviation of body acceleration, axis X, Y and Z, Jerk signals

**frequencyBodyAngularVelocity.mean.X**

**frequencyBodyAngularVelocity.mean.Y**

**frequencyBodyAngularVelocity.mean.Z**

mean body angular velocity, axis X, Y and Z, Jerk signals

**frequencyBodyAngularVelocity.std.X**

**frequencyBodyAngularVelocity.std.Y**

**frequencyBodyAngularVelocity.std.Z**

standard deviation of body angular velocity, axis X, Y and Z, Jerk signals

**frequencyBodyAccelerationMagnitude.mean**

Mean magnitude (Euclidean norm) of body acceleration

**frequencyBodyAccelerationMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body acceleration

**frequencyBodyAccelerationJerkMagnitude.mean**

Mean magnitude (Euclidean norm) of body acceleration, Jerk signals

**frequencyBodyAccelerationJerkMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body acceleration, Jerk signals

**frequencyBodyAngularVelocityMagnitude.mean**

Mean magnitude (Euclidean norm) of body angular velocity

**frequencyBodyAngularVelocityMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body angular velocity

**frequencyBodyAngularVelocityJerkMagnitude.mean**

Mean magnitude (Euclidean norm) of body angular velocity, Jerk signals

**frequencyBodyAngularVelocityJerkMagnitude.std**

standard deviation of magnitude (Euclidean norm) of body angular velocity, Jerk signals


#### average

Average of each variable for each activity and each subject.

`UNITS:` No units, since features are normalised and bounded within [-1,1].




