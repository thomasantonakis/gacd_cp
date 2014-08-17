Getting and Cleaning Data Course Project CodeBook
=================================================
This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.  
* The site where the data was obtained:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones      
The data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
* The run_analysis.R script performs the following steps to clean the data:   
 1. Read X_test.txt, y_test.txt and subject_test.txt from the "./UCI HAR Dataset/test" folder and store them in *test_561*, *test_feat* and *test_subj* variables respectively.       
 2. Read X_train.txt, y_train.txt and subject_train.txt from the "./UCI HAR Dataset/train" folder and store them in *train_561*, *train_feat* and *train_subj* variables respectively. 
 3. Read features.txt from "./UCI HAR Dataset" folder and store it to features variable.
 4. Bind by columms (one next to the previous) the variables *train_subj*, *train_feat* and *train_561* to create the *train_whole* variable.
 5. Bind by columms (one next to the previous) the variables *test_subj*, *test_feat* and *test_561* to create the *test_whole* variable.
 6. Bind by rows (one under the previous) the variables *train_whole* and *test_whole* to create the *final1* variable. final 1 is a dataframe with 10299 rows and 563 columns. Proper names are given to the columns of this dataframe using also the data from the features variable.
 7. In the second step, we try to subset the final1 data frame to only those variables (columns) that contain the "mean()" or the "std()" strings.
 8. finalmean and finalstd dataframes do the above subsetting according to their name. That is finalmean contains only the columns from final1 that contain the string "mean()" in theri column name, whereas finalstd contains only the columns from final1 that contain the string "std()" in theri column name. Both these dataframes contain 10299 rows and 33 columns each. 
 9. Concatenate by columns (one under the previous) the first two columns from the final1 dataframe, for reference reasons, then the finalmean dataframe and finally the finalstd dataframe. Save this giant dataframe under the name of final2 and  now final2 dataframe contains 10299 rows and 68 columns.
 10. Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively. 
 11. Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called *activity*.
 12. Clean the activity names in the second column of *activity*. We first make all names to lower cases. If the name has an underscore between letters, we remove the underscore and capitalize the letter immediately after the underscore and the fisrt letter.
 13. we change the values of the activity (second) column of the final2 dataframe according to the name corresonding to each activity code usind data from the activity dataframe.
 14. Now the final2 dataframe is a tidy dataframe as proper and descriptive names have been assigned to both column names and activity codings.
 15. Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject. We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the *tidyData* data frame and performing the two for-loops, we get a 180x68 data frame.
 16. Write the *tidyData* out to "data_with_means.txt" file in current working directory. 

 
  
 
 