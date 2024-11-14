download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI_HAR_Dataset.zip")
 unzip("UCI_HAR_Dataset.zip")


library(dplyr)

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

X_data <- rbind(X_train, X_test)
Y_data <- rbind(Y_train, Y_test)
subject_data <- rbind(subject_train, subject_test)

mean_std_features <- grep("-(mean|std)\\(\\)", features$V2)

X_data <- X_data[, mean_std_features]
names(X_data) <- features$V2[mean_std_features]

Y_data$V1 <- factor(Y_data$V1, levels = activity_labels$V1, labels = activity_labels$V2)
names(Y_data) <- "Activity"

names(subject_data) <- "Subject"
cleaned_data <- cbind(subject_data, Y_data, X_data)

tidy_data <- cleaned_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(list(mean = ~ mean(.)))

write.table(tidy_data, "tidy_data.txt", row.name = FALSE)

head(tidy_data)
