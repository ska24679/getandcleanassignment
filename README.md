getandcleanassignment
=====================

Getting And Cleaning Data course project

This assumes the dataset is in the current working directory, in a directory named "UCI HAR Dataset".  The script "get_data.R" can be used to pull down the dataset and unzip it.

The script "run_analysis.R" generates a tidy dataset from the full dataset, and saves it to a file named "tidydata.csv".

The first two columns of "tidydata.csv" are for the subject's ID number, and the activity.  The remaining columns are the features. Each row contains a subject's ID number, activity, and a mean of the observations of the features.

See UCI HAR Dataset/features_info.txt and UCI HAR Dataset/README.txt for more information about collection procedures, preprocessing, and filtering.

The feature names have been altered slightly to be more legible in "camelCase".

Features in the time domain are prefixed with time.

Features in the frequency domain are prefixed with freq.

STD denotes standard deviation

Gyro denotes data collected from the gyroscope.  Think of tilt data, or a level.

When the data is specific to a particular axis, it is labeled "XAxis", "YAxis", or, "ZAxis".

Please see codebook.md for a more detailed description of the features and activities.
