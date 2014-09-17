####Run Analysis

run_analysis() function calls 5 functions to produce the desired tidy data output.

Course Project has 5 steps in it. Functionality of each of these steps is split into a function so it is easy to follow.

run_analysis(), is the top level function that we call from R Console. This functions calls each of the 5 functions one after the other. Functions are named 
* step_01()
* step_02()
* step_03()
* step_04()
* step_05() 

All data needed for this project is placed under folder called **"data"** in current working directory of R project. This data folder will follow the same path structure as was given to us in zip file.

Data files used for analysis are the following.
* data/activity_labels.txt
* data/features.txt
* data/train/subject_train.txt
* data/train/X_train.txt
* data/train/y_train.txt
* data/test/subject_test.txt
* data/test/X_test.txt
* data/test/y_test.txt

######step_01
*Read training data: Dimension = 7352 x 561*
*Read test data: Dimension = 2947 x 561*
*Row bound combined data: Dimension = 10299 x  561*

######Step_02
From the full data set created in step_01, we take only the required measurements. Variable names that have a mean or std in them. A total of 86 columns are there that has mean or std in names. 
*Required combined data data: Dimension = 10299 x 86*

######Step_03

######Step_04

######Step_05
