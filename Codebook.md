# CodeBook for Human Activity Recognition Dataset Analysis

This codebook provides descriptions of the variables, the data transformations, and additional details regarding the analysis performed on the UCI Human Activity Recognition dataset using Samsung Galaxy S accelerometer data.

## Dataset Description

The dataset contains data from 30 subjects performing 6 different activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) recorded using a smartphone's accelerometer. The goal of the analysis is to clean and process this data into a tidy format that can be used for further analysis.

### Variables

1. **Subject**: The subject number (1 to 30).
2. **Activity**: The type of activity being performed (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying).
3. **tBodyAcc-mean()-X**: Mean of the body acceleration signal in the X direction.
4. **tBodyAcc-mean()-Y**: Mean of the body acceleration signal in the Y direction.
5. **tBodyAcc-mean()-Z**: Mean of the body acceleration signal in the Z direction.
6. **tBodyAcc-std()-X**: Standard deviation of the body acceleration signal in the X direction.
7. **tBodyAcc-std()-Y**: Standard deviation of the body acceleration signal in the Y direction.
8. **tBodyAcc-std()-Z**: Standard deviation of the body acceleration signal in the Z direction.
9. **Other features**: The dataset contains 561 total features which represent various measurements of the accelerometer and gyroscope signals from the phone, including mean and standard deviation values for various directions (X, Y, Z).

### Data Transformation

- **Merging of Data**: The training and test datasets were combined using `rbind()` to create a single dataset for each of the subject, activity, and feature data.
- **Extraction of Relevant Measurements**: Only the columns related to mean and standard deviation measurements were kept, based on the feature names containing "mean()" or "std()".
- **Descriptive Activity Names**: Activity labels were replaced with descriptive names (e.g., 1 → Walking, 2 → Walking Upstairs).
- **Labeling Variables**: The feature names were cleaned up to remove special characters like parentheses and hyphens and to make them more readable.
- **Creating the Tidy Data Set**: A second, independent tidy data set was created by calculating the average of each variable for each subject and each activity.

### Summary of Transformation Steps

1. **Merge Training and Test Data**: The training and test sets were merged to create one complete dataset.
2. **Extract Mean and Standard Deviation**: Only the measurements related to the mean and standard deviation were kept.
3. **Apply Descriptive Activity Names**: The activity labels were replaced with descriptive activity names.
4. **Appropriately Label Variables**: Feature names were cleaned and made more descriptive.
5. **Create a Tidy Data Set**: A second tidy dataset was created by calculating the mean of each variable for each subject and each activity.

### Data Output

The output of this analysis is a tidy dataset, `tidy_data.txt`, containing the average of each variable for each activity and each subject.
