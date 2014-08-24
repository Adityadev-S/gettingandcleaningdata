Pre-conditions for the script to run -
'UCI HAR Dataset' should be extracted from the zipped file.

Steps performed using the script - run_analysis.R:

1. Read the test data set into y_test, x_test, subject_test
2. Read the train data set into y_train, x_train, subject_train
3. Use rbind to combine -
   * 3a. y_test and y_train into y(data frame)
   * 3b. x_test and x_train into x(data frame)
   * 3c. subject_test and subject_train into subject(data frame)
4. Read the file 'features.txt' to extract the column names for data frame 'x'.
5. Re-name the columns of
   * 5a. 'x' using data extracted in Step 4.
   * 5b. 'subject' to 'Person'.
   * 5c. 'y' to 'Activity'.
6. Merge 'subject','y','x' into a single data frame 'Comp'.
7. Use grep to subset the columns for mean and standard deviation using strings 'mean()','std()'.
8. Read data from 'activity_labels.txt' and re-name the 'Activity' column data using descriptive names.
9. Create descriptive variable names by removing '()' from the column names and replacing '-' with '_'.
10. Find the average for the parameters based on the Person and activity using 'aggregate()' function and save it to a new data frame.
11. Write the new data frame into a txt file with row.names = FALSE