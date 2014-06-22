# prepare environment
library(reshape2)
library(reshape)
setwd("D:/R_school/coursera/getting_cleaning_data/data/proj/UCI HAR Dataset")

#1. Merges the training and the test sets to create one data set.

#prepare column names for the use in R
features <- read.table("./features.txt")

features <- gsub("-","_",as.character(features$V2))
features <- gsub("()","_",features,fixed=T)
features <- gsub(",","_",features,fixed=T)
features <- gsub("(","_",features,fixed=T)
features <- gsub(")","_",features,fixed=T)
features <- tolower(features)

#read test
subject_test  <- read.table("./test/subject_test.txt")
y_test        <- read.table("./test/y_test.txt")
x_test        <- read.table("./test/X_test.txt")

# assign names for test
colnames(x_test) <-features
colnames(subject_test) <- "subject_id"
colnames(y_test) <- "activity_class"

#concatinate test
test <- cbind(subject_test,y_test,x_test)  

#read train
subject_train  <- read.table("./train/subject_train.txt")
y_train        <- read.table("./train/y_train.txt")
x_train        <- read.table("./train/X_train.txt")

# assign names for train
colnames(x_train) <-features
colnames(subject_train) <- "subject_id"
colnames(y_train) <- "activity_class"

#concatinate train
train <- cbind(subject_train,y_train,x_train)  

#merge
all_data <- rbind(train,test)

#sort via subject_ID
attach(all_data)
all_data <-all_data[order(subject_id),]
detach(all_data)


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 

var_names <- names(all_data)

idx_var1<-grep("_mean",var_names)
idx_var2<-grep("_std",var_names)
idx_var3 <- sort(c(1,2,idx_var1,idx_var2))
std_mean_data = all_data[,idx_var3] 

var_names <- names(std_mean_data)
idx_var4<-grep("meanfreq",var_names, invert=T)
std_mean_data = std_mean_data[,idx_var4]
var_names<-var_names[idx_var4]

#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
activity_labels <-read.table("./activity_labels.txt")
activity_labels <- tolower(activity_labels$V2)
activity_labels <- gsub("_","",activity_labels,fixed=T)


std_mean_data$activity_class <-as.character(std_mean_data$activity_class)

for(i in 1:length(activity_labels)){
    std_mean_data$activity_class <- gsub(i,activity_labels[i],std_mean_data$activity_class,fixed=T)
}

std_mean_data$activity_class <-factor(std_mean_data$activity_class)

#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

data_melt<-melt(std_mean_data,id.vars= var_names[1:2],measure.vars= var_names[3:length(var_names)])
group_mean_subject_activity<- cast(data=data_melt, fun=mean)

write.table(group_mean_subject_activity, file="group_mean_subject_activity_tidy.csv", sep = ",")







