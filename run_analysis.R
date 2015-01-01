library(dplyr)

# Loading the data sets.
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")        
features<-read.table("./UCI HAR Dataset/features.txt")

X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

all_test<-cbind(subject_test, label=y_test, X_test)
all_train<-cbind(subject_train, label=y_train, X_train)
data<-rbind(all_test, all_train)     # merges the train and test sets to create one data set.

# replace the 2nd column with descriptive names.
data[,2] <- factor(data[,2]) ; levels(data[,2]) <- activity_labels$V2
# or: data$activity[data[,2] == 1] <- "WALKING"; data$activity[data[,2] == 2] <- "WALKING_UPSTAIRS"; etc #

data<-data[,c(1,2,grep("(mean|std)[^meanF]", features$V2)+2)] # extracts only the first 2 column & the column names containing "mean" or "s.d", but not "angle" or "meanFreq".

colnames<-grep("(mean|std)[^meanF]", make.names(features$V2),value=T) # a character vector now with the same names.
colnames<-gsub("\\.","",colnames)
colnames<-sub("^t", "time",colnames)
colnames<-sub("^f", "freq",colnames)
colnames<-sub("BodyBody", "Body",colnames)  
colnames<-sub("mean", "Mean",colnames) ; colnames<-sub("std", "Std",colnames) 

# names the columns of the data set.
colnames(data)[1:2] <- c("subjectId", "activity")  
colnames(data)[3:ncol(data)] <- c(colnames)

data<-arrange(data, subjectId, activity) # orders the data set first based on subjectId, and then activity column. 

grouped_data<-group_by(data, subjectId, activity) # groups this data by the first 2 variables. 
averaged_dataset<-summarise_each(grouped_data, funs(mean), -subjectId, -activity) # summarize the data by calculating the mean for each column, except the first 2.

# Cleaning up temp variables
rm(activity_labels, features, X_test, y_test, subject_test, X_train, y_train, subject_train, all_test, all_train,data, columnsToExtract, colnames, grouped_data)

write.table(averaged_dataset,file="averaged_dataset.txt",row.name=FALSE)