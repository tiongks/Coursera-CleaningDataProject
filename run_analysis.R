library(dplyr)

data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataset_dir <- "UCI HAR Dataset"

# download dataset if it has not been downloaded yet
if (!file.exists("dataset.zip")) {
  download.file(url = data_url, destfile = "dataset.zip")
}

# unzip the dataset
if (!dir.exists(dataset_dir)) {
  print("unzipping dataset")
  unzip("dataset.zip")
}

# go into the dataset directory for convenience' sake
cat("processing files in", dataset_dir)
setwd(dataset_dir)

# get the activity labels and features
activity_labels <- read.table("activity_labels.txt")
feature_list <- as.character(read.table("features.txt")[,2])

# get the training data and labels, assign the column names
training_data <- read.table("./train/X_train.txt")
colnames(training_data) <- feature_list

training_subject <- read.table(file = "./train/subject_train.txt", 
                               header = FALSE, col.names = c("subject"))

training_labels <- read.table("./train/y_train.txt")
training_label_activity <- merge(training_labels, activity_labels)
colnames(training_label_activity) <- c("label", "activity")

# get the test data and labels, assign the column names
test_data <- read.table("./test/X_test.txt")
colnames(test_data) <- feature_list

test_subject <- read.table(file = "./test/subject_test.txt", 
                           header = FALSE, col.names = c("subject"))

test_labels <- read.table("./test/y_test.txt")
test_label_activity <- merge(test_labels, activity_labels)
colnames(test_label_activity) <- c("label", "activity")

# we only need the man and std deviation columns
mean_std_features <- feature_list[grep("[Mm]ean|[Ss]td",feature_list)]
training_data <- training_data[,as.character(mean_std_features)]
test_data <- test_data[,as.character(mean_std_features)]

# add the subject and labels
training_data <- cbind(training_subject, training_label_activity, training_data)
test_data <- cbind(test_subject, test_label_activity, test_data)

# combine training and test data
merged_data <- rbind(training_data, test_data)
averaged_data <- merged_data %>% group_by(activity, subject) %>% summarise_all(funs(mean))

setwd("..")

write.table(merged_data, file = "tidy_data.txt", col.names = TRUE, row.names = FALSE)