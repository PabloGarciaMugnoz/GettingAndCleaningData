##Experimental design:
The experiments have been carried out with a group of 30
volunteers within an age bracket of 19-48 years. Each person performed six 
activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its 
embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 
3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating 
the training data and 30% the test data.

##Raw data:

In order to perform the analysis 8 files are loaded.    

### X_train.txt, X_test.txt files and features.txt
Features contain the name of the variables stored in the other two files.

The data sets ('X' files) include variables both in time (t) and frecuency (f) spaces, vector variables are splitted in three coordinates values XYZ.

Following values are measured.

tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag   

From these primitive variables the following calculations are performed.

mean: Mean value  
std: Standard deviation  
mad: Median absolute deviation   
max: Largest value in array  
min: Smallest value in array  
sma: Signal magnitude area  
energy: Energy measure. Sum of the squares divided by the number of values.   
iqr:Interquartile range   
entropy: Signal entropy   
arCoeff: Autorregresion coefficients with Burg order equal to 4  
correlation: correlation coefficient between two signals  
maxInds: index of the frequency component with largest magnitude  
meanFreq: Weighted average of the frequency components to obtain a mean frequency  
skewness: skewness of the frequency domain signal   
kurtosis: kurtosis of the frequency domain signal   
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.   
angle: Angle between to vectors.  

This leads a 561 variables data set, that is recorded for both test and train sets.

### subject_train.txt and subject_test.txt 
These two files contains the number of the subject that performed each observation.

### y_train.txt, y_test.txt and activity_labels.txt
The "y"" files contain a value that correspond to the activity performed in each observation, activity_labels contain the codificacation of these values. 

##Processed data:
First test and train set are merged, including features names, subject and activity.The result is a text file containing a subset of variables means and standard deviation of the primitive variables. It includes 81 variables.

The set contain the following variables.

subjectnumber: a integer indicating subject that perform each observation.

activityperformed: a factor with six levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Time variables, vectors are normalized and bound within [-1,1]: tbodyaccelerationmeanx, tbodyaccelerationmeany, tbodyaccelerationmeanz, tbodyaccelerationstandarddeviationx, tbodyaccelerationstandarddeviationy, tbodyaccelerationstandarddeviationz, tgravityaccelerationmeanx, tgravityaccelerationmeany, tgravityaccelerationmeanz, tgravityaccelerationstandarddeviationx, tgravityaccelerationstandarddeviationy, tgravityaccelerationstandarddeviationz, tbodyaccelerationjerkmeanx, tbodyaccelerationjerkmeany, tbodyaccelerationjerkmeanz, tbodyaccelerationjerkstandarddeviationx, tbodyaccelerationjerkstandarddeviationy, tbodyaccelerationjerkstandarddeviationz, tbodygyroscopemeanx, tbodygyroscopemeany, tbodygyroscopemeanz, tbodygyroscopestandarddeviationx, tbodygyroscopestandarddeviationy, tbodygyroscopestandarddeviationz, tbodygyroscopejerkmeanx, tbodygyroscopejerkmeany, tbodygyroscopejerkmeanz, tbodygyroscopejerkstandarddeviationx, tbodygyroscopejerkstandarddeviationy, tbodygyroscopejerkstandarddeviationz, tbodyaccelerationmagnitudemean, tbodyaccelerationmagnitudestandarddeviation, tgravityaccelerationmagnitudemean, tgravityaccelerationmagnitudestandarddeviation, tbodyaccelerationjerkmagnitudemean, tbodyaccelerationjerkmagnitudestandarddeviation, tbodygyroscopemagnitudemean, tbodygyroscopemagnitudestandarddeviation, tbodygyroscopejerkmagnitudemean, tbodygyroscopejerkmagnitudestandarddeviation 

Frecuency variables in Hz: fbodyaccelerationmeanx, fbodyaccelerationmeany, fbodyaccelerationmeanz, fbodyaccelerationstandarddeviationx, fbodyaccelerationstandarddeviationy, fbodyaccelerationstandarddeviationz, fbodyaccelerationmeanfrequencyx, fbodyaccelerationmeanfrequencyy, fbodyaccelerationmeanfrequencyz, fbodyaccelerationjerkmeanx, fbodyaccelerationjerkmeany, fbodyaccelerationjerkmeanz, fbodyaccelerationjerkstandarddeviationx, fbodyaccelerationjerkstandarddeviationy, fbodyaccelerationjerkstandarddeviationz, fbodyaccelerationjerkmeanfrequencyx, fbodyaccelerationjerkmeanfrequencyy, fbodyaccelerationjerkmeanfrequencyz, fbodygyroscopemeanx, fbodygyroscopemeany, fbodygyroscopemeanz, fbodygyroscopestandarddeviationx, fbodygyroscopestandarddeviationy, fbodygyroscopestandarddeviationz, fbodygyroscopemeanfrequencyx, fbodygyroscopemeanfrequencyy, fbodygyroscopemeanfrequencyz, fbodyaccelerationmagnitudemean, fbodyaccelerationmagnitudestandarddeviation, fbodyaccelerationmagnitudemeanfrequency, fbodybodyaccelerationjerkmagnitudemean, fbodybodyaccelerationjerkmagnitudestandarddeviation, fbodybodyaccelerationjerkmagnitudemeanfrequency, fbodybodygyroscopemagnitudemean, fbodybodygyroscopemagnitudestandarddeviation, fbodybodygyroscopemagnitudemeanfrequency, fbodybodygyroscopejerkmagnitudemean, fbodybodygyroscopejerkmagnitudestandarddeviation, fbodybodygyroscopejerkmagnitudemeanfrequency


