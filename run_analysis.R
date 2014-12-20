# This is a R program for the Getting and Cleaning Data Course Project
# Submitted by: Chiau Ho ONG

# Load the plyr library for later use
library(plyr)

# Assume file is already downloaded and in my local directory

# Now read in the test data files first - X_test.txt
print("fetching test data ....")
test_data <- read.table("X_test.txt")

# Read train data
print("fetching train data ....")
train_data <- read.table("X_train.txt")

# Now combine both train & test data together
print("merging training and test data sets - Step 1 ...")
total_data <- rbind(train_data,test_data)

# Read in features description for each variable
features <- read.table("features.txt")

# Give meaning to each variable
colnames(total_data) <- as.character(features[[2]])

print("extracting and combining mean & std - step 2 ....")
# Get mean data
mean_col <- grep("mean",names(total_data))
mean_data <- total_data[mean_col]

# Get Std data
std_col <- grep("std", names(total_data))
std_data <- total_data[std_col]

# Now recombine std & mean data as one
total_data <- cbind(mean_data, std_data)

# Now read in the subject & activities files
test_subject <- read.table("subject_test.txt")
y_test <- read.table("y_test.txt")
train_subject <- read.table("subject_train.txt")
y_train <- read.table("y_train.txt")

# Combine subject & activities for test & train data
subject <- rbind(train_subject, test_subject)
y <- rbind(y_train, y_test)

c_total_data <- cbind(subject, y, total_data)
colnames(c_total_data)[1] <- "Subject_ID"
colnames(c_total_data)[2] <- "Activities"

# Give y data meaningful names. y data represents the follow activities:
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

activity <- replace(c_total_data[[2]],c_total_data[[2]] == 1,"WALKING")
activity <- replace(activity, activity == 2, "WALKING_UPSTAIRS")
activity <- replace(activity, activity == 3, "WALKING_DOWNSTAIRS")
activity <- replace(activity, activity == 4, "SITTING")
activity <- replace(activity, activity == 5, "STANDING")
activity <- replace(activity, activity == 6, "LAYING")
c_total_data[[2]] <- activity
print("Data for step 4 completed .....")

print("Now generating tidydata set ......")
tidy_data <-ddply(c_total_data,c("Subject_ID","Activities"),function(df) colMeans(df[3:81]))

print("Now writing tidydata set to file tidy_data.txt ......")
write.table(tidy_data,file="tidy_data.txt",row.names=FALSE)
