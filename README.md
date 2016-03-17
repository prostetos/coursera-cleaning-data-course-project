First, we donwload the zip.file using the if statement. 

Then, we load the txt.files that we need in R, using the fread command

We create a vector which contains the columns names from the features.txt file, including subject and activity.

Then, we concatanate (cbind) the subject, activity and x_test (and x_train) in a new dataset, replacing the integer values
of activity with the actual activities, as we see from the activity_labels.txt file. 

We create the complete tidy data set by concatanate the x_test and x_train matrices. 

Afterwards, we extract only the the measurements on the mean and standard deviation for each measurement, using a regular 
expression and then subsetting the complete tidy data set. 

Finally, we group by activity and subject in a second tidy data set, using the group_by command of the dplyr package. 

