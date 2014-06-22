getandcleanassignment
=====================

Getting And Cleaning Data course project

This assumes the dataset is in the current working directory, in a directory named "UCI HAR Dataset".  The script "get_data.R" can be used to pull down the dataset and unzip it.

The resulting tidy dataset is named tidydata.csv.  The first two columns are for the subject's ID number, and the activity.  The remaining columns are averages(mean) of of the observations of the features for the specified subject and activity.

See UCI HAR Dataset/features_info.txt and UCI HAR Dataset/README.txt for more information about collection procedures, preprocessing, and filtering.

The feature names have been altered slightly to be more legible in "camelCase".

Features in the time domain are prefixed with time.

Features in the frequency domain are prefixed with freq.

STD denotes standard deviation

Gyro denotes data collected from the gyroscope.  Think of tilt data, or a level.

When the data is specific to a particular axis, it is labeled "XAxis", "YAxis", or, "ZAxis".

Features
==========
timeBodyAccelerationMeanXAxis  
timeBodyAccelerationMeanYAxis  
timeBodyAccelerationMeanZAxis  
timeBodyAccelerationSTDXAxis  
timeBodyAccelerationSTDYAxis  
timeBodyAccelerationSTDZAxis  
timeGravityAccelerationMeanXAxis  
timeGravityAccelerationMeanYAxis  
timeGravityAccelerationMeanZAxis  
timeGravityAccelerationSTDXAxis  
timeGravityAccelerationSTDYAxis  
timeGravityAccelerationSTDZAxis  
timeBodyAccelerationJerkMeanXAxis  
timeBodyAccelerationJerkMeanYAxis  
timeBodyAccelerationJerkMeanZAxis  
timeBodyAccelerationJerkSTDXAxis  
timeBodyAccelerationJerkSTDYAxis  
timeBodyAccelerationJerkSTDZAxis  
timeBodyGyroMeanXAxis  
timeBodyGyroMeanYAxis  
timeBodyGyroMeanZAxis  
timeBodyGyroSTDXAxis  
timeBodyGyroSTDYAxis  
timeBodyGyroSTDZAxis  
timeBodyGyroJerkMeanXAxis  
timeBodyGyroJerkMeanYAxis  
timeBodyGyroJerkMeanZAxis  
timeBodyGyroJerkSTDXAxis  
timeBodyGyroJerkSTDYAxis  
timeBodyGyroJerkSTDZAxis  
timeBodyAccelerationMagnitudeMean  
timeBodyAccelerationMagnitudeSTD  
timeGravityAccelerationMagnitudeMean  
timeGravityAccelerationMagnitudeSTD  
timeBodyAccelerationJerkMagnitudeMean  
timeBodyAccelerationJerkMagnitudeSTD  
timeBodyGyroMagnitudeMean  
timeBodyGyroMagnitudeSTD  
timeBodyGyroJerkMagnitudeMean  
timeBodyGyroJerkMagnitudeSTD  
freqBodyAccelerationMeanXAxis  
freqBodyAccelerationMeanYAxis  
freqBodyAccelerationMeanZAxis  
freqBodyAccelerationSTDXAxis  
freqBodyAccelerationSTDYAxis  
freqBodyAccelerationSTDZAxis  
freqBodyAccelerationMeanFreqXAxis  
freqBodyAccelerationMeanFreqYAxis  
freqBodyAccelerationMeanFreqZAxis  
freqBodyAccelerationJerkMeanXAxis  
freqBodyAccelerationJerkMeanYAxis  
freqBodyAccelerationJerkMeanZAxis  
freqBodyAccelerationJerkSTDXAxis  
freqBodyAccelerationJerkSTDYAxis  
freqBodyAccelerationJerkSTDZAxis  
freqBodyAccelerationJerkMeanFreqXAxis  
freqBodyAccelerationJerkMeanFreqYAxis  
freqBodyAccelerationJerkMeanFreqZAxis  
freqBodyGyroMeanXAxis  
freqBodyGyroMeanYAxis  
freqBodyGyroMeanZAxis  
freqBodyGyroSTDXAxis  
freqBodyGyroSTDYAxis  
freqBodyGyroSTDZAxis  
freqBodyGyroMeanFreqXAxis  
freqBodyGyroMeanFreqYAxis  
freqBodyGyroMeanFreqZAxis  
freqBodyAccelerationMagnitudeMean  
freqBodyAccelerationMagnitudeSTD  
freqBodyAccelerationMagnitudeMeanFreq  
freqBodyBodyAccelerationJerkMagnitudeMean  
freqBodyBodyAccelerationJerkMagnitudeSTD  
freqBodyBodyAccelerationJerkMagnitudeMeanFreq  
freqBodyBodyGyroMagnitudeMean  
freqBodyBodyGyroMagnitudeSTD  
freqBodyBodyGyroMagnitudeMeanFreq  
freqBodyBodyGyroJerkMagnitudeMean  
freqBodyBodyGyroJerkMagnitudeSTD  
freqBodyBodyGyroJerkMagnitudeMeanFreq  
