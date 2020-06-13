It was used the function cbind for merging the dataset X_train with the vectors subject_train and y_train for obtaining an unique database, named "train_grouped". Likewise, It was maked with the dataset X_test and the vectors y_test and subject_test for obtaining an unique database, named "test_grouped".

The datasets "train_grouped" and "test_grouped" were merged with the function bind_row (package "dplyr"),  for obtaining an unique database, named "database".

the variables with the pattern "mean" and "std" were selected with the function grep and select (package "dplyr") and saved in the dataframe named "database_extract"

The names of the dataframe "database_extract" were changed with the functiom tolower for converting the letters in lower case. Furthermore, the pattern "()" was removed of the names of the dataframe "database_extract" with the function gsub.
The above dataframe was grouped by subject and activities with the function group_by(package "dplyr").Then, this dataframe was
summarized with the mean of all variables  for each activity and each subject. This was computed with the function summarise_all(package "dplyr") and saved in the dataframe "summarize_database".

The end database has the following variables with their respective units:



