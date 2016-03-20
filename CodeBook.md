# Code Book for output of run_analysis.R

## Explaination
### Dataset
This dataset contains a summary of the UCI Machine Learning "Human Activity Recognition Using Smartphones Data Set" (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) 
### Analysis
For the analysis that was done, the following steps were conducted:
1. The training and test datasets are merged to one single dataset
2. Only the measurements on the mean and standard deviation for each measurement are selected
3. Activities are labeled (so the set contains an activity identifier and a label)
4. Variable names are labeled
5. A summary with means of each variable for each activity and each subject is made

*Thorough explaination is given in the comments of the script 'run_analysis.R'*

### Output
The output is a summary that is grouped by activity and subject (6*30 rows), giving means for all selected signal variables. The subject (volunteer participant) is given by variable 1, the activity label and ID are given by variables 2 and 3. Variables 4-69 are the selected signal variables which represent the mean values of the signal variables from a subset of the original dataset. The subset that was used from the original dataset only contains the measurements on the mean and standard deviation.

*See the features_info.txt file (in dataset/features_info.txt) for more info on these variables*

## Variables
1. "subjectID" - identifier for the research volunteer (integer 1-30)
2. "activityLabel" - label for the activity (character, e.g. WALKING)
3. "activityID"  - identifier for the activity (integer, e.g. 1)
4. "tBodyAcc-mean-X" - mean value of signal for activity by subject (numeric)
5. "tBodyAcc-mean-Y" - mean value of signal for activity by subject (numeric)
6. "tBodyAcc-mean-Z" - mean value of signal for activity by subject (numeric)
7. "tGravityAcc-mean-X" - mean value of signal for activity by subject (numeric)
8. "tGravityAcc-mean-Y" - mean value of signal for activity by subject (numeric)
9. "tGravityAcc-mean-Z" - mean value of signal for activity by subject (numeric)
10. "tBodyAccJerk-mean-X" - mean value of signal for activity by subject (numeric)
11. "tBodyAccJerk-mean-Y" - mean value of signal for activity by subject (numeric)
12. "tBodyAccJerk-mean-Z" - mean value of signal for activity by subject (numeric)
13. "tBodyGyro-mean-X" - mean value of signal for activity by subject (numeric)
14. "tBodyGyro-mean-Y" - mean value of signal for activity by subject (numeric)
15. "tBodyGyro-mean-Z" - mean value of signal for activity by subject (numeric)
16. "tBodyGyroJerk-mean-X" - mean value of signal for activity by subject (numeric)
17. "tBodyGyroJerk-mean-Y" - mean value of signal for activity by subject (numeric)
18. "tBodyGyroJerk-mean-Z" - mean value of signal for activity by subject (numeric)
19. "tBodyAccMag-mean" - mean value of signal for activity by subject (numeric)
20. "tGravityAccMag-mean" - mean value of signal for activity by subject (numeric)
21. "tBodyAccJerkMag-mean" - mean value of signal for activity by subject (numeric)
22. "tBodyGyroMag-mean" - mean value of signal for activity by subject (numeric)
23. "tBodyGyroJerkMag-mean" - mean value of signal for activity by subject (numeric)
24. "fBodyAcc-mean-X" - mean value of signal for activity by subject (numeric)
25. "fBodyAcc-mean-Y" - mean value of signal for activity by subject (numeric)
26. "fBodyAcc-mean-Z" - mean value of signal for activity by subject (numeric)
27. "fBodyAccJerk-mean-X" - mean value of signal for activity by subject (numeric)
28. "fBodyAccJerk-mean-Y" - mean value of signal for activity by subject (numeric)
29. "fBodyAccJerk-mean-Z" - mean value of signal for activity by subject (numeric)
30. "fBodyGyro-mean-X" - mean value of signal for activity by subject (numeric)
31. "fBodyGyro-mean-Y" - mean value of signal for activity by subject (numeric)
32. "fBodyGyro-mean-Z" - mean value of signal for activity by subject (numeric)
33. "fBodyAccMag-mean" - mean value of signal for activity by subject (numeric)
34. "fBodyBodyAccJerkMag-mean" - mean value of signal for activity by subject (numeric)
35. "fBodyBodyGyroMag-mean" - mean value of signal for activity by subject (numeric)
36. "fBodyBodyGyroJerkMag-mean" - mean value of signal for activity by subject (numeric)
37. "tBodyAcc-std-X" - mean value of signal for activity by subject (numeric)
38. "tBodyAcc-std-Y" - mean value of signal for activity by subject (numeric)
39. "tBodyAcc-std-Z" - mean value of signal for activity by subject (numeric)
40. "tGravityAcc-std-X" - mean value of signal for activity by subject (numeric)
41. "tGravityAcc-std-Y" - mean value of signal for activity by subject (numeric)
42. "tGravityAcc-std-Z" - mean value of signal for activity by subject (numeric)
43. "tBodyAccJerk-std-X" - mean value of signal for activity by subject (numeric)
44. "tBodyAccJerk-std-Y" - mean value of signal for activity by subject (numeric)
45. "tBodyAccJerk-std-Z" - mean value of signal for activity by subject (numeric)
46. "tBodyGyro-std-X" - mean value of signal for activity by subject (numeric)
47. "tBodyGyro-std-Y" - mean value of signal for activity by subject (numeric)
48. "tBodyGyro-std-Z" - mean value of signal for activity by subject (numeric)
49. "tBodyGyroJerk-std-X" - mean value of signal for activity by subject (numeric)
50. "tBodyGyroJerk-std-Y" - mean value of signal for activity by subject (numeric)
51. "tBodyGyroJerk-std-Z" - mean value of signal for activity by subject (numeric)
52. "tBodyAccMag-std" - mean value of signal for activity by subject (numeric)
53. "tGravityAccMag-std" - mean value of signal for activity by subject (numeric)
54. "tBodyAccJerkMag-std" - mean value of signal for activity by subject (numeric)
55. "tBodyGyroMag-std" - mean value of signal for activity by subject (numeric)
56. "tBodyGyroJerkMag-std" - mean value of signal for activity by subject (numeric)
57. "fBodyAcc-std-X" - mean value of signal for activity by subject (numeric)
58. "fBodyAcc-std-Y" - mean value of signal for activity by subject (numeric)
59. "fBodyAcc-std-Z" - mean value of signal for activity by subject (numeric)
60. "fBodyAccJerk-std-X" - mean value of signal for activity by subject (numeric)
61. "fBodyAccJerk-std-Y" - mean value of signal for activity by subject (numeric)
62. "fBodyAccJerk-std-Z" - mean value of signal for activity by subject (numeric)
63. "fBodyGyro-std-X" - mean value of signal for activity by subject (numeric)
64. "fBodyGyro-std-Y" - mean value of signal for activity by subject (numeric)
65. "fBodyGyro-std-Z" - mean value of signal for activity by subject (numeric)
66. "fBodyAccMag-std" - mean value of signal for activity by subject (numeric)
67. "fBodyBodyAccJerkMag-std" - mean value of signal for activity by subject (numeric)
68. "fBodyBodyGyroMag-std" - mean value of signal for activity by subject (numeric)
69. "fBodyBodyGyroJerkMag-std" - mean value of signal for activity by subject (numeric)