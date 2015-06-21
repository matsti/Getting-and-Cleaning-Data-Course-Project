---
title: "Codebook Getting and Cleaning Data Course Project"
author: "Mats"
date: "June 21, 2015"
output:
  html_document:
    keep_md: yes
---
 
## Course Project Description
The R course **Getting and Cleaning Data** encompasses a Course Project to " ...demonstrate your ability to collect, work with, and clean a data set", see the [course project webpage](https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3/submissions).
 
##Study design and data processing
 
###Collection of the raw data
The raw data was downloaded from the [University of California, Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 
##Creating the tidy datafile
 
###Guide to create the tidy data file
Description on how to create the tidy data file aggregate.txt
1. download the data from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
2. Unzip the data in your working directory
3. Run the **run_analysis.R** script
 
###Cleaning of the data
The raw data is uploaded, colated and a subset is selected on which average values are calculated and stored in the average.txt file, see the [Readme.md(./Readme.md)
 
##Description of the variables in the average.txt file
The average.txt contains 180 observations of 30 subjects are observed performing 6 activities. Each observation consists of of 68 variables: the subject, the activity and 66 different average measures.

 
Subject, int, number between 1 and 30 specifying which person was measure

Activity: Factor with 6 levels, "SITTING", "STANDING", "LAYING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"

 tBodyAcc.mean.X is a numeric variable, correponding to the variable  tBodyAcc-mean()-X in the rwa data

tBodyAcc.mean.Y is a numeric variable, correponding to the variable  tBodyAcc-mean()-Y in the rwa data

tBodyAcc.mean.Z is a numeric variable, correponding to the variable  tBodyAcc-mean()-Z in the rwa data

tBodyAcc.std.X is a numeric variable, correponding to the variable  tBodyAcc-std()-X in the rwa data
 
 tBodyAcc.std.Y is a numeric variable, correponding to the variable  tBodyAcc-std()-Y in the rwa data

tBodyAcc.std.Z is a numeric variable, correponding to the variable  tBodyAcc-std()-Z in the rwa data

tGravityAcc.mean.X is a numeric variable, correponding to the variable  tGravityAcc-mean()-X in the rwa data

tGravityAcc.mean.Y is a numeric variable, correponding to the variable  tGravityAcc-mean()-Y in the rwa data

tGravityAcc.mean.Z is a numeric variable, correponding to the variable  tGravityAcc-mean()-Z in the rwa data

tGravityAcc.std.X is a numeric variable, correponding to the variable  tGravityAcc-std()-X in the rwa data

tGravityAcc.std.Y is a numeric variable, correponding to the variable  tGravityAcc-std()-Y in the rwa data

tGravityAcc.std.Z is a numeric variable, correponding to the variable  tGravityAcc-std()-Z in the rwa data

tBodyAccJerk.mean.X is a numeric variable, correponding to the variable  tBodyAccJerk-mean()-X in the rwa data

tBodyAccJerk.mean.Y is a numeric variable, correponding to the variable  tBodyAccJerk-mean()-Y in the rwa data

tBodyAccJerk.mean.Z is a numeric variable, correponding to the variable  tBodyAccJerk-mean()-Z in the rwa data

tBodyAccJerk.std.X is a numeric variable, correponding to the variable  tBodyAccJerk-std()-X in the rwa data

tBodyAccJerk.std.Y is a numeric variable, correponding to the variable  tBodyAccJerk-std()-Y in the rwa data

tBodyAccJerk.std.Z is a numeric variable, correponding to the variable  tBodyAccJerk-std()-Z in the rwa data

tBodyGyro.mean.X is a numeric variable, correponding to the variable  tBodyGyro-mean()-X in the rwa data

tBodyGyro.mean.Y is a numeric variable, correponding to the variable  tBodyGyro-mean()-Y in the rwa data

tBodyGyro.mean.Z is a numeric variable, correponding to the variable  tBodyGyro-mean()-Z in the rwa data

tBodyGyro.std.X is a numeric variable, correponding to the variable  tBodyGyro-std()-X in the rwa data         

tBodyGyro.std.Y is a numeric variable, correponding to the variable  tBodyGyro-std()-Y in the rwa data               

tBodyGyro.std.Z is a numeric variable, correponding to the variable  tBodyGyro-std()-Z in the rwa data                  

tBodyGyroJerk.mean.X is a numeric variable, correponding to the variable  tBodyGyroJerk-mean()-X in the rwa data      

tBodyGyroJerk.mean.Y is a numeric variable, correponding to the variable  tBodyGyroJerk-mean()-Y in the rwa data       

tBodyGyroJerk.mean.Z is a numeric variable, correponding to the variable  tBodyGyroJerk-mean()-Z in the rwa data        

tBodyGyroJerk.std.X is a numeric variable, correponding to the variable  tBodyGyroJerk-std()-X in the rwa data         

tBodyGyroJerk.std.Y is a numeric variable, correponding to the variable  tBodyGyroJerk-std()-Y in the rwa data        

tBodyGyroJerk.std.Z is a numeric variable, correponding to the variable  tBodyGyroJerk-std()-Z in the rwa data           

tBodyAccMag.mean is a numeric variable, correponding to the variable  tBodyAccMag-mean() in the rwa data                 

tBodyAccMag.std is a numeric variable, correponding to the variable  tBodyAccMag-std() in the rwa data                   

tGravityAccMag.mean is a numeric variable, correponding to the variable  tGravityAccMag-mean() in the rwa data            

tGravityAccMag.std is a numeric variable, correponding to the variable  tGravityAccMag-std() in the rwa data              

tBodyAccJerkMag.mean is a numeric variable, correponding to the variable  tBodyAccJerkMag-mean() in the rwa data          

tBodyAccJerkMag.std is a numeric variable, correponding to the variable  tBodyAccJerkMag-std() in the rwa data            

tBodyGyroMag.mean is a numeric variable, correponding to the variable  tBodyGyroMag-mean() in the rwa data                

tBodyGyroMag.std is a numeric variable, correponding to the variable  tBodyGyroMag-std() in the rwa data            

tBodyGyroJerkMag.mean is a numeric variable, correponding to the variable  tBodyGyroJerkMag-mean() in the rwa data     

tBodyGyroJerkMag.std is a numeric variable, correponding to the variable  tBodyGyroJerkMag-std() in the rwa data     

fBodyAcc.mean.X is a numeric variable, correponding to the variable  fBodyAcc-mean()-X in the rwa data               

fBodyAcc.mean.Y is a numeric variable, correponding to the variable  fBodyAcc-mean()-Y in the rwa data                    

fBodyAcc.mean.Z is a numeric variable, correponding to the variable  fBodyAcc-mean()-Z in the rwa data                   

fBodyAcc.std.X is a numeric variable, correponding to the variable  fBodyAcc-std()-X in the rwa data                     

fBodyAcc.std.Y is a numeric variable, correponding to the variable  fBodyAcc-std()-Y in the rwa data                      

fBodyAcc.std.Z is a numeric variable, correponding to the variable  fBodyAcc-std()-Z in the rwa data                      

fBodyAccJerk.mean.X is a numeric variable, correponding to the variable  fBodyAccJerk-mean()-X in the rwa data            

fBodyAccJerk.mean.Y is a numeric variable, correponding to the variable  fBodyAccJerk-mean()-Y in the rwa data            

fBodyAccJerk.mean.Z is a numeric variable, correponding to the variable  fBodyAccJerk-mean()-Z in the rwa data            

fBodyAccJerk.std.X is a numeric variable, correponding to the variable  fBodyAccJerk-std()-X in the rwa data              

fBodyAccJerk.std.Y is a numeric variable, correponding to the variable  fBodyAccJerk-std()-Y in the rwa data              

fBodyAccJerk.std.Z is a numeric variable, correponding to the variable  fBodyAccJerk-std()-Z in the rwa data              

fBodyGyro.mean.X is a numeric variable, correponding to the variable  fBodyGyro-mean()-X in the rwa data                  

fBodyGyro.mean.Y is a numeric variable, correponding to the variable  fBodyGyro-mean()-Y in the rwa data                  

fBodyGyro.mean.Z is a numeric variable, correponding to the variable  fBodyGyro-mean()-Z in the rwa data                  

fBodyGyro.std.X is a numeric variable, correponding to the variable  fBodyGyro-std()-X in the rwa data                    

fBodyGyro.std.Y is a numeric variable, correponding to the variable  fBodyGyro-std()-Y in the rwa data                    

fBodyGyro.std.Z is a numeric variable, correponding to the variable  fBodyGyro-std()-Z in the rwa data                    

fBodyAccMag.mean is a numeric variable, correponding to the variable  fBodyAccMag-mean() in the rwa data                  

fBodyAccMag.std is a numeric variable, correponding to the variable  fBodyAccMag-std() in the rwa data                    

fBodyBodyAccJerkMag.mean is a numeric variable, correponding to the variable  fBodyBodyAccJerkMag-mean() in the rwa data  

fBodyBodyAccJerkMag.std is a numeric variable, correponding to the variable  fBodyBodyAccJerkMag-std() in the rwa data    

fBodyBodyGyroMag.mean is a numeric variable, correponding to the variable  fBodyBodyGyroMag-mean() in the rwa data        

fBodyBodyGyroMag.std is a numeric variable, correponding to the variable  fBodyBodyGyroMag-std() in the rwa data        

fBodyBodyGyroJerkMag.mean is a numeric variable, correponding to the variable  fBodyBodyGyroJerkMag-mean() in the rwa data

fBodyBodyGyroJerkMag.std is a numeric variable, correponding to the variable  fBodyBodyGyroJerkMag-std() in the rwa data