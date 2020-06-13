It was used the function cbind for merging the dataset X_train with the vectors subject_train and y_train for obtaining an unique database, named "train_grouped". Likewise, It was maked with the dataset X_test and the vectors y_test and subject_test for obtaining an unique database, named "test_grouped".

The datasets "train_grouped" and "test_grouped" were merged with the function bind_row (package "dplyr"),  for obtaining an unique database, named "database".

the variables with the pattern "mean" and "std" were selected with the function grep and select (package "dplyr") and saved in the dataframe named "database_extract"

The names of the dataframe "database_extract" were changed with the functiom tolower for converting the letters in lower case. Furthermore, the pattern "()" was removed of the names of the dataframe "database_extract" with the function gsub.
The above dataframe was grouped by subject and activities with the function group_by(package "dplyr").Then, this dataframe was
summarized with the mean of all variables  for each activity and each subject. This was computed with the function summarise_all(package "dplyr") and saved in the dataframe "summarize_database".

The end database has the following variables with their respective levels:

activities:Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
subject: group of 30 volunteers.
domain: time (t) and frequency(f) domain.
variable: variables used on the feature vector
- body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 
- Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
- magnitude of the three-dimensional signals  calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
summary: Mean value (mean) and standard deviation (std) that were estimated from these signals.
axial: 3-axial linear acceleration and 3-axial angular velocity: x, y and z.
mean(value): average of each variable for each activity and each subject.



