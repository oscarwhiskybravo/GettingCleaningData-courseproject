rm(list=ls())
library(dplyr)

# Read activity labels (e.g. WALKING) by ID as a dataframe
activity_labels <- read.table('dataset/activity_labels.txt') # activity labels (by ID)
names(activity_labels) <- c("activityID","activityLabel") # label the dataframe itself

# Read signal labels (1-561)
signals_labels <- read.table('dataset/features.txt')
# Clean the signal labels, removing commas and parenthese
sig_labels <- gsub(",","",signals_labels[,2])
sig_labels <- gsub("\\(","",sig_labels)
sig_labels <- gsub("\\)","",sig_labels)

# select mean and std labels (STEP 2):
labels_mean <- grep("-mean",sig_labels) # to include
labels_meanFreq <- grep("meanFreq",sig_labels) # to exclude
labels_std <- grep("-std",sig_labels) # to include

labels_wanted <- setdiff(labels_mean,labels_meanFreq)
labels_wanted <- c(labels_wanted,labels_std)

############################ TEST ############################################
# Read dataframes for the test-set
test_subject <- read.table('dataset/test/subject_test.txt') # subject ID
test_activity_ID <- read.table('dataset/test/y_test.txt') # activity ID
test_signals <- read.table('dataset/test/X_test.txt') # signals
test_signals <- test_signals[,labels_wanted] # select only the wanted signals (STEP 2)

# name and bind columns of subject ID, activity ID and signals to a single dataframe
names(test_subject) <- c("subjectID") # STEP 4
names(test_activity_ID)<- c("activityID") # STEP 4
names(test_signals) <- sig_labels[labels_wanted] # STEP 4
test_total <- cbind(test_subject, test_activity_ID, test_signals)

# merge activity labels into the data frame of the test set (STEP 3)
test_total <- merge(test_total, activity_labels, by.x="activityID", by.y="activityID", all=T)

############################# TRAIN #######################################
# Read dataframes for the train-set
train_subject <- read.table('dataset/train/subject_train.txt') # subject ID
train_activity_ID <- read.table('dataset/train/y_train.txt') # activity ID
train_signals <- read.table('dataset/train/X_train.txt') # signals
train_signals <- train_signals[,labels_wanted]

# name and bind columns of subject ID, activity ID and signals to a single dataframe
names(train_subject) <- c("subjectID") # STEP 4
names(train_activity_ID)<- c("activityID") # STEP 4
names(train_signals) <- sig_labels[labels_wanted] # STEP 4
train_total <- cbind(train_subject, train_activity_ID, train_signals)

# merge activity labels into the data frame of the train set (STEP 3)
train_total <- merge(train_total, activity_labels, by.x="activityID", by.y="activityID", all=T)

####################### TOTAL ##########################################
# Merge the train and test set together (STEP 1)
total <- rbind(test_total, train_total)
# re-arrange the columns of the total set
total <- total[,c(1,2,69,3:68)]


########################### STEP 5 ####################################
data <- group_by(total, subjectID, activityLabel)
summary_signalmeans <- summarize_each(data,funs(mean))
write.table(summary_signalmeans,row.names=FALSE,file="summary_signalmeans.txt")
View(summary_signalmeans)