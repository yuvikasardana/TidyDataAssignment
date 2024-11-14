# README for Human Activity Recognition Analysis

This project aims to clean and process the UCI Human Activity Recognition dataset collected using a Samsung Galaxy S smartphone. The dataset contains data from 30 subjects performing 6 different activities, and the goal is to produce a tidy data set that can be used for analysis.

## Objective

The objective of this project is to demonstrate how to collect, work with, and clean a dataset to prepare tidy data. The tidy data will contain the average of each variable for each activity and each subject.

## Dataset

The dataset used in this project is the **Human Activity Recognition Using Smartphones Data Set**. It contains accelerometer and gyroscope measurements collected from 30 participants performing six different activities.

### Files in the Dataset:

1. **X_train.txt, X_test.txt**: Features for the training and test sets.
2. **Y_train.txt, Y_test.txt**: Activity labels for the training and test sets.
3. **subject_train.txt, subject_test.txt**: Subject identifiers for the training and test sets.
4. **features.txt**: A list of the features (variables) measured in the dataset.
5. **activity_labels.txt**: A list of the activity labels.

### Output

After running the `run_analysis.R` script, a tidy data set is produced and saved as `tidy_data.txt`. The data contains the average of each variable (mean and standard deviation) for each activity and each subject.

## Steps Performed

1. **Merging the Data**: The training and test sets were merged using `rbind()`.
2. **Extracting Relevant Measurements**: Only the mean and standard deviation features were selected using a regular expression (`grep()`).
3. **Labeling Activities**: The activity labels were replaced with descriptive names from `activity_labels.txt`.
4. **Descriptive Variable Names**: The feature names were cleaned up to make them more readable.
5. **Creating a Tidy Data Set**: The final tidy dataset was created by calculating the average of each variable for each activity and each subject.

## How to Run the Script

1. Download and unzip the dataset into a folder.
2. Run the `run_analysis.R` script.
3. The tidy data will be saved as `tidy_data.txt` in the current working directory.


