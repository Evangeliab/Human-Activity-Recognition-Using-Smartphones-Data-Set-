library(dplyr)

activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")        
features<-read.table("./UCI HAR Dataset/features.txt")

X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

namesOfCol<-as.character(factor(features$V2))  ##  a series of names of 2nd column of feature data set, tranformed into factors and then characters.
all_test<-cbind(subject_test, y_test, X_test)
all_train<-cbind(subject_train, y_train, X_train)
data<-rbind(all_test, all_train)     ##  merges the train and test sets to create one data set.

colnames(data)[1:563] <- c("subjectId","label", make.names(namesOfCol)) ##  names the columns of the data set.
data$activity[data$label == 1] <- "WALKING"  ##  creates a new column "activity" with values specified from the values of label column.
data$activity[data$label == 2] <- "WALKING_UPSTAIRS"
data$activity[data$label == 3] <- "WALKING_DOWNSTAIRS"
data$activity[data$label == 4] <- "SITTING"
data$activity[data$label == 5] <- "STANDING"
data$activity[data$label == 6] <- "LAYING"

matches<-grep("mean|std", make.names(namesOfCol), ignore.case = T, value=T) ## a character vector containing names "mean" or "s.d".
extracted_data<-data[,c("subjectId","activity",matches)] ## Extracts only the first 2 column & the column names containing "mean" or "s.d".
extracted_data2<-select(extracted_data,-(49:51),-(58:60),-(67:69),-72,-75,-78,-(81:88)) ## removes columns that contains "angle" or "meanFreq".Now, it's with only the measurements on the mean and standard deviation for each measurement.

complete_data<-arrange(extracted_data2, subjectId, activity) ## orders the data set first based on subjectId column, and then activity's. 

grouped_data<-group_by(complete_data, subjectId, activity) ## groups this data 
averaged_data<-summarise_each(grouped_data, funs(mean), -subjectId, -activity) ## summarize the data by calculating the mean for each column, except the first 2.