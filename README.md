# data-cleaning
this  project is about  a  dataset that come from Human Activity Recognition Using Smartphones for tidying and  summarizing this. 

In this project was used the following files for building the dataset:
features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
X_train.txt: Training dataset with all the variables of the vector feature.
y_train.txt: Training labels of the activities .
X_test.txt': Test dataset with all the variables of the vector feature.
y_test.txt': Test labels of the activities.
subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

This files were readed with the function read.table in the working directory provided in the script, named "UCI HAR Dataset"

The names of the dataset X_train and X_test were changed by the names provided in the vetor features. Furthermore, the levels of the factor were changed by their names provided by the vector activity_labels. 

It was used the function cbind for merging the dataset X_train with the vectors subject_train and y_train for obtaining an unique database, named "database". Likewise, It was maked with the dataset X_test and the vectors y_test and subject_test.

