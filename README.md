<h1> Getting and Cleaning Data Project </h1>

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. ses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

<h2>Files </h2>
Project contains files:
* CodeBook.md
* run_analysis.R

<h3> CodeBook.md </h3>
CodeBook contains code book for the independent tidy dataset created in step 5.

<h3> run_analysis.R </h3>
1. Steps 1 - 4
    * Read original dataset. Original dataset should be placed in Your Working Directory/UCI HAR Dataset
    * Merge train and test data together and with features names
    * Filter dataset with only mean and std value
    * Replace activity id with activity names
2. Step 5
    * Based on the dataset created in steps 1-4 group dataset by subject and activity
    * Calculate mean for all variables for each subject and activity
    * Save data to txt file

<h3> Column selection </h3>

From the list of the all avaliable features in the origin dataset were selected all columns related to the mean and standart deviations. 
The full list of variables selected from the originl dataset:

* tBodyAcc-mean()-X                    
*tBodyAcc-mean()-Y                
*tBodyAcc-mean()-Z                   
*tGravityAcc-mean()-X                
*tGravityAcc-mean()-Y              
*tGravityAcc-mean()-Z               
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y          
*tBodyAccJerk-mean()-Z       
*tBodyGyro-mean()-X                  
*tBodyGyro-mean()-Y                 
*tBodyGyro-mean()-Z                
*tBodyGyroJerk-mean()-X  
*tBodyGyroJerk-mean()-Y 
*tBodyGyroJerk-mean()-Z 
*tBodyAccMag-mean()     
*tGravityAccMag-mean()  
*tBodyAccJerkMag-mean() 
*tBodyGyroMag-mean()    
*tBodyGyroJerkMag-mean()
*fBodyAcc-mean()-X                  
*fBodyAcc-mean()-Y                  
*fBodyAcc-mean()-Z                   
*fBodyAcc-meanFreq()-X              
*fBodyAcc-meanFreq()-Y              
*fBodyAcc-meanFreq()-Z              
*fBodyAccJerk-mean()-X              
*fBodyAccJerk-mean()-Y              
*fBodyAccJerk-mean()-Z               
*fBodyAccJerk-meanFreq()-X            
*fBodyAccJerk-meanFreq()-Y           
*fBodyAccJerk-meanFreq()-Z           
*fBodyGyro-mean()-X                 
*fBodyGyro-mean()-Y                  
*fBodyGyro-mean()-Z                 
*fBodyGyro-meanFreq()-X              
*fBodyGyro-meanFreq()-Y              
*fBodyGyro-meanFreq()-Z             
*fBodyAccMag-mean()                 
*fBodyAccMag-meanFreq()              
*fBodyBodyAccJerkMag-mean()         
*fBodyBodyAccJerkMag-meanFreq()       
*fBodyBodyGyroMag-mean()             
*fBodyBodyGyroMag-meanFreq()         
*fBodyBodyGyroJerkMag-mean()        
*fBodyBodyGyroJerkMag-meanFreq()     
*angle(tBodyAccMean,gravity)         
*angle(tBodyAccJerkMean),gravityMean) 
*angle(tBodyGyroMean,gravityMean)    
*angle(tBodyGyroJerkMean,gravityMean)
*angle(X,gravityMean)                
*angle(Y,gravityMean)                
*angle(Z,gravityMean)                
*tBodyAcc-std()-X                    
*tBodyAcc-std()-Y                   
*tBodyAcc-std()-Z                    
*tGravityAcc-std()-X                
*tGravityAcc-std()-Y                 
*tGravityAcc-std()-Z                 
*tBodyAccJerk-std()-X                
*tBodyAccJerk-std()-Y                
*tBodyAccJerk-std()-Z                
*tBodyGyro-std()-X                   
*tBodyGyro-std()-Y                   
*tBodyGyro-std()-Z                   
*tBodyGyroJerk-std()-X               
*tBodyGyroJerk-std()-Y               
*tBodyGyroJerk-std()-Z               
*tBodyAccMag-std()                   
*tGravityAccMag-std()                
*tBodyAccJerkMag-std()               
*tBodyGyroMag-std()                        
*tBodyGyroJerkMag-std()              
*fBodyAcc-std()-X                    
*fBodyAcc-std()-Y                    
*fBodyAcc-std()-Z                    
*fBodyAccJerk-std()-X                
*fBodyAccJerk-std()-Y                
*fBodyAccJerk-std()-Z                
*fBodyGyro-std()-X                   
*fBodyGyro-std()-Y                   
*fBodyGyro-std()-Z                   
*fBodyAccMag-std()                   
*fBodyBodyAccJerkMag-std()            
*fBodyBodyGyroMag-std()              
*fBodyBodyGyroJerkMag-std() 
