library(data.table)
library(dplyr)

## loading data
activity_labels <- fread('activity_labels.txt')
features <- fread('features.txt')
names(features) <- c('id','name')

# loading test data
subjects_test <- fread('test/subject_test.txt')
x_test <- fread('test/X_test.txt')
y_test <- fread('test/y_test.txt')

# loading train data
subjects_train <- fread('train/subject_train.txt')
x_train <- fread('train/X_train.txt')
y_train <- fread('train/y_train.txt')

## identifying learning sets, added column Set
subjects_train <- mutate(subjects_train, Set = "TRAINING")
subjects_test <- mutate(subjects_test, Set = "TEST")

## naming everything # task 3 and 4
names(x_train) <- features$name
names(x_test) <- features$name
names(y_train) <- 'Activity'
names(y_test) <- 'Activity'
names(subjects_train) <- c("Subject",'Learning.Set')
names(subjects_test) <- c("Subject",'Learning.Set')
names(activity_labels) <- c('Activity.ID', 'Activity.Name')

## getting train, test data together - separate data sets
train1 <- cbind(cbind(subjects_train, y_train), x_train)
test1 <- cbind(cbind(subjects_test, y_test), x_test)

## train and test data in data set in whole # task 1
bigDataSet <- rbind(train1, test1)

## extracting only means and standard deviations columns # task 2
means_std_columns <- grep("-(mean|std)\\(\\)", names(bigDataSet))
dataSet <- select(bigDataSet, c(1,2,3,means_std_columns))

## labeling activities in dataSet
dataSet <- mutate(dataSet, Activity = as.factor(Activity))
levels(dataSet$Activity) <- activity_labels$Activity.Name

## creating tidy dataset, excluding learning set # task 5
tidyData <- summarise_each(group_by(dataSet, Activity, Subject), funs(mean), vars = -2)

## cleaning afterwards, comment the line below to prevent cleaning
rm(activity_labels, bigDataSet, features, means_std_columns, subjects_test, subjects_train, test1, train1, x_test, x_train, y_test, y_train)

## writting data to file
# write.table(tidyData, 'tidyData.txt', row.names = FALSE)
# write.table(dataSet, 'dataSet.txt', row.names = FALSE)
