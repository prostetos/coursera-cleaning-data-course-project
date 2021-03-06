library(data.table)
library(plyr)

# downloading the data of the project

if(!dir.exists("UCI HAR Dataset")){
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl,destfile="getdata.zip")
    unzip("getdata.zip")
    file.remove("getdata.zip")
}

# loading the data into R

X_test <- fread("UCI HAR Dataset\\test\\X_test.txt")
subject_test <- fread("UCI HAR Dataset\\test\\subject_test.txt")
y_test <- fread("UCI HAR Dataset\\test\\y_test.txt")

X_train <- fread("UCI HAR Dataset\\train\\X_train.txt")
subject_train <- fread("UCI HAR Dataset\\train\\subject_train.txt")
y_train <- fread("UCI HAR Dataset\\train\\y_train.txt")

activities <- fread("UCI HAR Dataset\\activity_labels.txt")
features <- fread("UCI HAR Dataset\\features.txt")

# creation of complete tidy data set

names_data <- c("subject", "activity", features[[2]])

X_test <- cbind(subject_test, y_test, X_test)  
X_test[[2]] <- mapvalues(X_test[[2]], activities[[1]], activities[[2]])
colnames(X_test) <- names_data

X_train <- cbind(subject_train, y_train, X_train)
X_train[[2]] <- mapvalues(X_train[[2]], activities[[1]], activities[[2]])
colnames(X_train) <- names_data

final_data <- rbind(X_train, X_test)

# Extracts only the measurements on the mean and standard deviation for each measurement/variable

extract_mean_std <- grepl("mean|std",names_data)
extract_meanFreq <- grepl("meanFreq",names_data)
extract <- extract_mean_std & !extract_meanFreq

used_data <- subset(final_data, select =  extract)
names_data <- c("subject", "activity", names(used_data))
used_data <- cbind(final_data[[1]], final_data[[2]], used_data)
colnames(used_data) <- names_data

names(used_data) <- gsub('^t',"Time.",names(used_data))
names(used_data) <- gsub('^f',"Frequency.",names(used_data))
names(used_data) <- gsub('Mag',"Magnitude.",names(used_data))
names(used_data) <- gsub('.std',".standard_deviation",names(used_data))
names(used_data) <- gsub("BodyBody", "Body", names(used_data))
names(used_data) <- gsub(".ody", "Body.", names(used_data))
names(used_data) <- gsub('Gyro',"Gyroscope.",names(used_data))
names(used_data) <- gsub('Acc',"Accelerometer.",names(used_data))
names(used_data) <- gsub('Gravity',"Gravity.",names(used_data))
names(used_data) <- gsub('Jerk',"Jerk.",names(used_data))

# data set with the average of each variable by activity and subject

grouped_data <- ddply(used_data,c('activity','subject'),numcolwise(mean))
write.table(grouped_data, file = "grouped_data.txt", row.names = FALSE)  
