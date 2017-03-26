# Getting and Cleaning Data Course Project README
*1. Read.table is used for reading data in steps 1.1-1.3.*
*2. dplyr is used in this project.*

The goal of this project is to prepare tidy data that can be used for later analysis.

The written script does following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The result of this step is text file "tidy_data.txt".

##### Algorithm

###### 1. Get data

1. First of all we need to read common data - features (variables names in fact) and activity labels.
2. The next step is to read test data (data itself, then activities, then subjects).
3. In the same manner we need to read train data.
4. Next, we should row bind test and train data - separately data, activities and subjects.
5. Now we have all needed data and can make it tidy.

###### 2. Make data tidy

1. Set names for variables from features read in step 1.1.
2. Merge activity labels read in step 1.1 with activities.
3. Using grep filter out only mean and std columns.
4. Make variables names tidy.
5. Combine data and labels by columns.
6. Rename subject and activity variables (columns) with descriptive names.
7. Make summary (mean values) in tidy dataset grouped by subject and activity.