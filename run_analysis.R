# Getting and Cleaning Data - Course Project
#
# From the assignment text:
#
# One of the most exciting areas in all of data science right now is wearable 
# computing - see for example this article . Companies like Fitbit, Nike, and 
# Jawbone Up are racing to develop the most advanced algorithms to attract 
# new users. The data linked to from the course website represent data 
# collected from the accelerometers from the Samsung Galaxy S smartphone. A 
# full description is available at the site where the data was obtained: 
#
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

## downloadAndUnpackData()
#
# Download and unpack the source data.
#
# Note: will not update/overwrite existing copies of the data. Warnings are 
# reported if the source data file and/or the unpacked data directory already 
# exist.
#
# Usage:
#   downloadAndUnpackData()
#
downloadAndUnpackData <- function() {
  file_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  file_name <- 'UCI_HAR_Dataset.zip'
  # Download data archive.
  if(!file.exists(file_name)) {
    message('Downloading data from Internet')
    download.file(file_url, file_name)
  }
  else {
    warning('Local copy of data archive found, not downloading')
  }
  # Unpack data archive. Creates directory.
  if(!file.exists('UCI HAR Dataset')) {
    message('Unpacking downloaded data archive.')
    unzip(file_name)
  }
  else {
    warning('Existing data directory found, not unpacking data archive.')
  }
}

## loadSourceData()
#
# Load the source data for a specified dataset ('test' or 'train'), assembling 
# the component data files into a single data.frame.
#
# Parameters:
# dataDir: the directory contining the data sets. Default: 'UCI HAR Dataset'
# dataset: name of the dataset to load. Default: 'train'
#
# Usage:
#   srcData <- loadSourceData(dataDirectoryName, datasetName)
#
loadSourceData <- function(dataDir='UCI HAR Dataset', dataset='train') {
  # Load subject data series
  data_filename <- file.path(dataDir, dataset, sprintf('subject_%s.txt', dataset))
  subject_data <- read.table(data_filename, col.names=c('Subject'),
                             colClasses='factor')
  # Load activity data series
  data_filename <- file.path(dataDir, dataset, sprintf('y_%s.txt', dataset))
  activity_data <- read.table(data_filename, col.names=c('Activity'), 
                              colClasses='factor')
  # Load vector data labels.
  data_filename <- file.path(dataDir, 'features.txt')
  vec_data_labels <- read.table(data_filename, header=FALSE, 
                                col.names=c('Num', 'Labels'), 
                                stringsAsFactors=FALSE)
  # Load vector data adding column labels.
  data_filename <- file.path(dataDir, dataset, sprintf('X_%s.txt', dataset))
  vec_data <- read.fwf(data_filename, rep(16, 561), header=FALSE, 
                       col.names=vec_data_labels$Labels, colClasses="numeric")
  # Merge data components.
  src_data <- cbind(subject_data, activity_data, vec_data)
}

## mergeTrainingAndTest()
#
# Load the 'test' and 'train' datasets and merge into a single data.frame.
#
# Usage:
#   mergedData <- mergeTrainingAndTest()
#
mergeTrainingAndTest <- function(dataDir='UCI HAR Dataset') {
  # Load training data.
  training_data <- loadSourceData(dataDir, 'train')
  # Load test data.
  test_data <- loadSourceData(dataDir, 'test')
  # Merge training and test data.
  merged_data <- rbind(training_data, test_data)
}

## extractMeanAndSdColumns()
#
# Usage:
#   selectedData <- extractMeanAndSdColumns(srcData)
#
extractMeanAndSdColumns <- function(srcData) {
  # Indentify mean and standard deviation columns.
  selected_cols <- grepl('\\.(mean|std)\\.', colnames(srcData))
  # Also select the 'Subject' and 'Activity' data columns.
  selected_cols[1] <- TRUE
  selected_cols[2] <- TRUE
  # Extract the selected columns.
  selected_data <- srcData[,selected_cols]
}

## labelActivities()
#
# Relabel the levels in the 'Activity' factor to use the readable names from 
# the 'activity_labels.txt' data file.
#
# Usage:
#   withActivityLabels <- labelActivities(data)
#
labelActivities <- function(data, dataDir='UCI HAR Dataset') {
  # Read labels from 'activity_labels.txt'
  data_filename <- file.path(dataDir, 'activity_labels.txt')
  activity_labels <- read.table(data_filename, header=FALSE, 
                                col.names=c('Index', 'Label'), 
                                stringsAsFactors=FALSE)
  # Apply the labels as the factor levels for the 'Activity' column.
  # Since these are parallel, just subsitute the level labels.
  levels(data$Activity) <- activity_labels$Label
  data
}

## expandColumnLabels()
#
# Expand column lables into a readable camelCase form.
#
# Usage:
#   relabeledData <- expandColumnLabels(data)
#
expandColumnLabels <- function(data) {
  # Get the vector of column names.
  column_names <- colnames(data)
  # Expand column names.
  column_names <- gsub('BodyBody', 'Body', column_names)
  column_names <- sub('\\.mean\\.\\.', 'Mean', column_names)
  column_names <- sub('\\.std\\.\\.', 'StandardDeviation', column_names)
  column_names <- sub('BodyAcc', 'BodyAcceleration', column_names)
  column_names <- sub('GravityAcc', 'GravityAcceleration', column_names)
  column_names <- sub('BodyGyro', 'BodyGyroscope', column_names)
  column_names <- sub('Mag', 'Magnitude', column_names)
  column_names <- sub('\\.X$', 'AxisX', column_names)
  column_names <- sub('\\.Y$', 'AxisY', column_names)
  column_names <- sub('\\.Z$', 'AxisZ', column_names)
  column_names <- sub('^t', 'time', column_names)
  column_names <- sub('^f', 'frequency', column_names)
  # Subsitute column names.
  colnames(data) <- column_names
  # Return relabeled data.
  data
}

## runAnalysis()
#
run_analysis <- function() {
  # Step 0: Download and unpack data.
  downloadAndUnpackData()
  # Step 1: Load and merge the 'training' and 'test' sets to create one data set.
  src_data <- mergeTrainingAndTest(dataDir='UCI HAR Dataset')
  # Step 2: Extract measurements on mean and standard deviation.
  selected_data <- extractMeanAndSdColumns(src_data)
  # Step 3: Use descriptive activity names for activities in the data set
  with_activity_labels <- labelActivities(selected_data, dataDir='UCI HAR Dataset')
  # 4. Appropriately labels the data set with descriptive variable names. 
  relabeled_data <- expandColumnLabels(with_activity_labels)
  # 5. From the data set in step 4, creates a second, independent tidy data set 
  # with the average of each variable for each activity and each subject.
  #
}