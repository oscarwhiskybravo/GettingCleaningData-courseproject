# Getting & Cleaning Data - Course Project
## Files 
This repo contains the files and dataset that were needed for the Getting & Cleaning Data Course Project.

Files/dirs included:
* dataset/          (contains the dataset files)
* run_analysis.R    (contains the script used for analysis)
* CodeBook.md       (contains the codebook for the output dataset of run_analysis.R)
* README.md         (this is where you are currently looking at :-)

**Note: see CodeBook.md for explaination of the analysis and variables**

*Note: See the comments in the run_analysis.R file for explaination of the script*

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

**Thorough explaination is given in the comments of the script 'run_analysis.R'**

### Description of output variables
The output is a summary that is grouped by activity and subject (6*30 rows), giving means for all selected signal variables. The subject (volunteer participant) is given by variable 1, the activity label and ID are given by variables 2 and 3. Variables 4-69 are the selected signal variables which represent the mean values of the signal variables from a subset of the original dataset. The subset that was used from the original dataset only contains the measurements on the mean and standard deviation.

*See the features_info.txt file (in dataset/features_info.txt) for more info on these variables*
