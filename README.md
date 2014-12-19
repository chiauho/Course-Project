*run_analysis.R*
*Program submitted for course project*
*Submitted by: Chiau Ho ONG*

The run_analysis.R program does the following:

Steps 1 to 8 gets us the data set required for step 4 of the assignment

1. Reads in the test and train data sets ("X_test.txt" and "X_train.txt")
2. Combines the two data sets into one (total_data)
3. Reads in the descriptions of each column (variables) from file "features.txt". This file contains the description of each column of the test and train data sets.
4. Give meaningful description to each column of total_data by naming each column of total_data with variables read from the "features.txt". The number of columns and number of variables matches up nicely
5. Now extract the columns that records the mean and std measurements only. Ignore all other columns. The data frame total_data now contains only columns with mean and std measurements.
6. Now reads in subject id and activities files ("subject_test.txt", "y_test.txt", "subject_train.txt" & "y_train.txt"). Merge Subject_test & Subject_train into one. Merge y_test & y_train into one. 
7. Now append subject and y (activities) as columns 1 and 2 to total_data. The new sets is c_total_data. Give meaningful column names to Subject & activities
8. Finally give meaningful activity names to the data in y. c_total_data is the required data set in step 4 of the assignment.

Now for step 5 - create a tidy data set with average of each variable for each activity and each subject:

1. Use the plyr package. ddply function is handy. This function takes in a data frame and returns a data frame.
2. Apply it to c_total_data data frame. Tells is to group by the 2 columns: Subject_ID and Activities. 
3. Finally write the resultant data frame to a txt file "tidy_data.txt"
