Code Book  of course project - getting and cleaning data
========================================================

**Data description**

Aim of the data processing was a tidy data set (group_mean_subject_activity_tidy.csv)
that contains the average of each variable for each activity and each subject. 
If you run run_analysis.R the new data set will be written to your local hard drive. 
See README.MD for instructions on running the script, context and origin of the data
To obtain the data go to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To run the analysis (run_analysis.R) you will need the following input data from there:

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.


**The repository includes the following files:**

README.md

CodeBook.md (this file)

run_analysis.R (to compute the new tidy data set)

**output**

group_mean_subject_activity_tidy.csv

**output variables**

The data set was merged (train and test) and summarized from 563 different variables to 68 variables:

 [1] "subject_id"                 "activity_class"             "tbodyacc_mean__x"          
 [4] "tbodyacc_mean__y"           "tbodyacc_mean__z"           "tbodyacc_std__x"           
 [7] "tbodyacc_std__y"            "tbodyacc_std__z"            "tgravityacc_mean__x"       
[10] "tgravityacc_mean__y"        "tgravityacc_mean__z"        "tgravityacc_std__x"        
[13] "tgravityacc_std__y"         "tgravityacc_std__z"         "tbodyaccjerk_mean__x"      
[16] "tbodyaccjerk_mean__y"       "tbodyaccjerk_mean__z"       "tbodyaccjerk_std__x"       
[19] "tbodyaccjerk_std__y"        "tbodyaccjerk_std__z"        "tbodygyro_mean__x"         
[22] "tbodygyro_mean__y"          "tbodygyro_mean__z"          "tbodygyro_std__x"          
[25] "tbodygyro_std__y"           "tbodygyro_std__z"           "tbodygyrojerk_mean__x"     
[28] "tbodygyrojerk_mean__y"      "tbodygyrojerk_mean__z"      "tbodygyrojerk_std__x"      
[31] "tbodygyrojerk_std__y"       "tbodygyrojerk_std__z"       "tbodyaccmag_mean_"         
[34] "tbodyaccmag_std_"           "tgravityaccmag_mean_"       "tgravityaccmag_std_"       
[37] "tbodyaccjerkmag_mean_"      "tbodyaccjerkmag_std_"       "tbodygyromag_mean_"        
[40] "tbodygyromag_std_"          "tbodygyrojerkmag_mean_"     "tbodygyrojerkmag_std_"     
[43] "fbodyacc_mean__x"           "fbodyacc_mean__y"           "fbodyacc_mean__z"          
[46] "fbodyacc_std__x"            "fbodyacc_std__y"            "fbodyacc_std__z"           
[49] "fbodyaccjerk_mean__x"       "fbodyaccjerk_mean__y"       "fbodyaccjerk_mean__z"      
[52] "fbodyaccjerk_std__x"        "fbodyaccjerk_std__y"        "fbodyaccjerk_std__z"       
[55] "fbodygyro_mean__x"          "fbodygyro_mean__y"          "fbodygyro_mean__z"         
[58] "fbodygyro_std__x"           "fbodygyro_std__y"           "fbodygyro_std__z"          
[61] "fbodyaccmag_mean_"          "fbodyaccmag_std_"           "fbodybodyaccjerkmag_mean_" 
[64] "fbodybodyaccjerkmag_std_"   "fbodybodygyromag_mean_"     "fbodybodygyromag_std_"     
[67] "fbodybodygyrojerkmag_mean_" "fbodybodygyrojerkmag_std_" 

subject_id represets 30 participant of the study and their activities (activity_class): 

The variables represent average values of the original data set variables for all means and standard derivations of the measurements. Variable names where changed by replacing "()", "-","," by "_"and capital letters were changed to lower case.
