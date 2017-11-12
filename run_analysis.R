library(stringr)
library(dplyr)
rm(list=ls())
setwd("/Users/thomaswillis/Desktop/Data Science Coursera/UCI HAR Dataset")
## Read in the 6 input files
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
ytest<-read.table("./test/y_test.txt")
xtest<-read.table("./test/X_test.txt")
subtest<-read.table("./test/subject_test.txt")
subtrain<-read.table("./train/subject_train.txt")

## Read in features file to capture column labels
feature<-read.table("./features.txt")

## Add new columns labels into feature. This is for the merged columns to be done later
col_names<-as.vector(feature[,2])
col_names<-c(col_names,"activity_name","subject_id")

##Replace "()" in column names with blank (removes "()")
col_names<-gsub("\\(\\)","",col_names)

##Replace "-" with "."
col_names<-gsub("-",".",col_names)

##Convert all letters to lowercase
col_name<-tolower(col_names)

##Replace "-" with "."
col_names<-gsub("\\,",".",col_names)

## Merge the Test data tests into one dataset
xtest<-cbind(xtest,ytest)
xtest<-cbind(xtest,subtest)

## Merge the Train data tests into one dataset
xtrain<-cbind(xtrain,ytrain)
xtrain<-cbind(xtrain,subtrain)

##Add column names
names(xtest)<-col_names
names(xtrain)<-col_names

## Create new data frames with all mean values 
train_allmean<-xtrain[,grep("mean",col_names)]
test_allmean<-xtest[,grep("mean",col_names)]

## Create new data frames with all standard devation values
train_allstd<-xtrain[,grep("std",col_names)]
test_allstd<-xtest[,grep("std",col_names)]

##Combine Mean and std data frames together
newtrain<-cbind(train_allmean,train_allstd)
newtrain<-cbind(newtrain,activity_name=xtrain$activity_name)
newtrain<-cbind(newtrain,subject_id=xtrain$subject_id)

newtest<-cbind(test_allmean,test_allstd)
newtest<-cbind(newtest,activity_name=xtest$activity_name)
newtest<-cbind(newtest,subject_id=xtest$subject_id)

## Replace activity_id with activity labels read in from file activity_labels.txt
alabel<-read.table("./activity_labels.txt")
num_rows<-nrow(alabel)
for(i in 1:num_rows) {
        newtrain$activity_name<-sub(i,alabel[i,2],newtrain$activity_name)
        newtest$activity_name<-sub(i,alabel[i,2],newtest$activity_name)
}
##Create tbl_df class and group by subject_id and activity_name
train_df<-tbl_df(newtrain)%>%group_by(subject_id,activity_name)  
test_df<-tbl_df(newtest)%>%group_by(subject_id,activity_name)

##Create tidy data with average of each column grouped by subject_id and activity_name
final_test<-summarize_each(test_df,funs(mean(.,na.rm=TRUE)))
final_train<-summarize_each(train_df,funs(mean(.,na.rm=TRUE)))
final_file<-rbind(final_test,final_train)
write.table(final_file,"./tidy_data.txt",row.name=FALSE)