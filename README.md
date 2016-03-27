## README

This repository contains all the files needed for the course project on getting and cleaning up data course of the Data Science Specialization on Coursera. 

### Simulation

The steps that were followed for this simulation are listed below

* downloaded the zip.file using the if statement.

* loaded the txt.files that we need in R, using the fread command

* created a vector which contains the columns names from the features.txt file, including subject and activity.

* concatanated (cbind) the subject, activity and x_test (and x_train) matrices in a new dataset, replacing the integer values of activity with the actual name activities, as we see from the activity_labels.txt file. 

* created the complete tidy data set by concatanating the x_test and x_train matrices. 

* extracted only the the measurements on the mean and standard deviation for each measurement, using a regular 
expression and then subsetting the complete tidy dataset. 

* grouped by activity and subject in a second tidy dataset, using the ddply command of the plyr package. 
