
### Set working directory and to read the files
setwd("C:/Users/sentidoskreativos/Desktop/UCI HAR Dataset")
activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")
setwd("./train")
x_train<-read.table("x_train.txt")
y_train<-read.table("y_train.txt")
subject_train<-read.table("subject_train.txt")
setwd("../")
setwd("./test")
x_test<-read.table("x_test.txt")
y_test<-read.table("y_test.txt")
subject_test<-read.table("subject_test.txt")


#### Change the names of the variables in the datasets and bind of x_test and x_train

library(dplyr)
y_train<- rename(y_train, activity_id = V1)
subject_train<- rename(subject_train, subject = V1)
subject_test<- rename(subject_test, subject = V1)
names_of_variables<-features$V2
names(x_train)<-names_of_variables
activities_train<-as.factor(y_train$activity_id)
levels(activities_train)<- list("WALKING"="1", "WALKING_UPSTAIRS"="2", 
                          "WALKING_DOWNSTAIRS"="3", "SITTING"="4","STANDING"="5",
                          "LAYING"="6")                          
train_grouped<-cbind("activities"=activities_train,"subject"=subject_train,x_train)
names(x_test)<-names_of_variables
activities_test<-as.factor(y_test$V1)
levels(activities_test)<- list("WALKING"="1", "WALKING_UPSTAIRS"="2", 
                                "WALKING_DOWNSTAIRS"="3", "SITTING"="4","STANDING"="5",
                                "LAYING"="6")
test_grouped<-cbind("activities"=activities_test, "subject"=subject_test,x_test)
database<-bind_rows(test_grouped,train_grouped)

### Extract of the mean and standard deviation variables of the features
names_database<-names(database)
location_mean_std<-grep("(mean()|std)[^Freq]",names_databes)
database_extract<-select(database,all_of(c(1,2,location_mean_std)))

### label of the data set with descriptive variable names

names(database_extract)<-tolower(names(database_extract))
names(database_extract)<-gsub(pattern = "()",replacement = "",names(database_extract),fixed = T)
write.table(database_extract,"dataset_1.txt",row.name=FALSE)

### Compute of the mean of each variable for each subject and each activity
database_extract<-group_by(database_extract, activities, subject)
summarize_database<-summarise_all(database_extract,funs(mean))

