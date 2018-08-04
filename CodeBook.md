# CodeBook for *dataMerged* and *AvgOfEachVarForEachSubAct*

Set *dataMerged* is the combination of testing and training sets with 10299 obs. of 88 variables. The first 2947 obs. are testing data, and the latter 7352 obs. are training data.

Set *AvgOfEachVarForEachSubAct* is an independent tidy data set with the average of each variable for each activity and each subject, with 180 obs. and 88 variables.

## Variables
**Subject** - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

**Activity** - The kind of activity performed in the experiment. It can take value including (walking, walking upstairs, walking downstairs, sitting, standing, laying).

### The other 86 variables follow the rules below:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals **tAccX(YZ)** and **tGyroX(YZ)**. These time domain signals (prefix '**t**' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**tBodyAccX(YZ)** and **tGravityAccX(YZ)**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**tBodyAccJerkX(YZ)** and **tBodyGyroJerkX(YZ)**). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (**tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag**). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing **fBodyAccX(YZ)**, **fBodyAccJerkX(YZ)**, **fBodyGyroX(YZ)**, **fBodyAccJerkMag**, **fBodyGyroMag**, **fBodyGyroJerkMag**. (Note the '**f**' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'**X(YZ)**' is used to denote 3-axial signals in the X, Y and Z directions. '**Mean**' and '**Std**' are used to denote mean value and standard deviation.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the **angle()** variable:
- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean
