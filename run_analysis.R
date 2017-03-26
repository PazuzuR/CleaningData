library(dplyr)

# 1. read common data
# 	1.1. read features (eq. variables names)
features <- read.table("UCI HAR Dataset/features.txt")
#	1.2. read activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# 2. read test data (data, then activity labels, then subjects)
test <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# 3. read train data (data, then activity labels, then subjects)
train <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# 4. row bind test and train data
data <- rbind(test, train)
data_labels <- rbind(test_labels, train_labels)
subject_data <- rbind(subject_test, subject_train)

# 5. tide data
# 	5.1. name variables
names(data) <- features$V2
#	5.2. name activities
data_labels <- left_join(data_labels, activity_labels, by="V1")
#	5.3. get only mean and std columns
tidy_data <- data[grep("mean|std", names(data))]
#	5.4. make variables names tidy
names(tidy_data) <- gsub("[[:punct:]]","",gsub("-s","-S",gsub("-m","-M",names(tidy_data))))
#	5.5. combine variables and labels
tidy_data <- bind_cols(as.data.frame(as.factor(subject_data$V1)), as.data.frame(as.factor(data_labels$V2)), tidy_data)
#	5.6. rename labels columns with descriptive names
names(tidy_data)[1:2] <- c("subject", "activity")
#	5.7. make summary
tidy_data_summary <- tidy_data %>% group_by(subject, activity) %>% summarize_each(funs(mean))

# 6. uncomment next line to write file
#write.table(tidy_data_summary,"tidy_data.txt",row.name=FALSE)