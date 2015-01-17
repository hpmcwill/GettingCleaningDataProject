Getting and Cleaning Data - Course Project
==========================================

Course project submission for the "Getting and Cleaning Data" course from 
Coursera (see https://www.coursera.org/course/getdata).

The Assignment
--------------

From the assignment text:

----

One of the most exciting areas in all of data science right now is wearable 
computing - see for example this article . Companies like Fitbit, Nike, and 
Jawbone Up are racing to develop the most advanced algorithms to attract 
new users. The data linked to from the course website represent data 
collected from the accelerometers from the Samsung Galaxy S smartphone. A 
full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 
measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set 
with the average of each variable for each activity and each subject.

----

Downloading / Cloning the Repository
------------------------------------

A git (http://git-scm.com/) repository containing the documentation and 
analysis script can be found on GitHub:

https://github.com/hpmcwill/GettingCleaningDataProject

Assuming that the git command-line tools are installed and are on the PATH 
cloning the repository can be down with the command:

> git clone https://github.com/hpmcwill/GettingCleaningDataProject.git

MS Windows users may want to look at user interfaces to git, such as 
TortoiseGit (http://tortoisegit.org/).

Alternativly the project can be downloaded as a ZIP archive:

https://github.com/hpmcwill/GettingCleaningDataProject/archive/master.zip

And unpacked in the normal way (e.g. open and copy content in Windows 
Explorer, or unzip archive.zip).

Usage
-----

Assuming that R (http://www.r-project.org/) has been installed and is on the 
PATH the analysis can be run by:

1. UNIX and Linux systems
  
  To run the script directly:
  
  > Rscript run_analysis.R
  
  or if you prefer using the R console:
  
  > R
  > source('path/to/run_analysis.R')
  
  Where "path/to/run_analysis.R" is replaced by the path to the script 
  (e.g. '~/GettingCleaningDataProject/run_analysis.R').
  
2. MS Windows
  
  Start R using the application in the "Start Menu".
  
  Use 'getwd()' to ensure you are in the desired working directory.
  
  In the R console type:
  
  > source('path/to/run_analysis.R')
  
  Where "path/to/run_analysis.R" is replaced by the path to the script 
  (e.g. '~/GettingCleaningDataProject/run_analysis.R').

This will download the raw data (if required) and perform the processing 
specifed the "The Assignment" section above. Finally generating the output 
data file 'tidy_data.txt' which has the format described in the 
[code book](codebook.md).

References
----------

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of Ambient 
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
