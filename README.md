readme of course project - getting and cleaning data
========================================================

This is the readme file in markdown format describing the programming steps of the R-script provided in 
this repro.

**script name:** run_analysis.R

**purpose:** merge, clean and summarize the data set provided by [1]Anguita et al. (2012): 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

**input**:
features.txt
activity_labels.txt

X_test.txt
subject_test.txt
y_test.txt

X_train.txt
subject_train.txt
y_train.txt

description of the variables and data structures see code book of the project and Anguita et al (2012)

**output:**
tidy data set with the average of each variable for each activity and each subject
group_mean_subject_activity_tidy.csv

**dependencies**
library(reshape2)
library(reshape)

change your working directory to your local directory of the input data

**usage**
1. install libraries if necessary 
2. change your working directory to your local directory of the input data

the script can be executed line by line (mayor steps are commented) or all together

**author**
MO