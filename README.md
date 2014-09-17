####Run Analysis

Project is to take the raw data set given in zip file, clean, manipulate and in the end deliver the average of each variable which is a mean or a standard deviation measurements. 

Top level function to call from R is run_analysis(). This function calls 5 functions one after the other to produce the desired tidy data output. Course Project has 5 steps in it. Functionality of each of these steps is split into a function so it is easy to follow.

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

######step_01 (Merges the training and the test sets to create one data set)
* *Read training data: Dimension = 7352 x 561*
* *Read test data: Dimension = 2947 x 561*
* *Row bound combined data: Dimension = 10299 x 561*

######Step_02 (Extracts only the measurements on the mean and standard deviation for each measurement)
From the full data set created in step_01, we take only the required measurements. Variable names that have a mean or std in them. A total of 86 columns are there that has mean or std in names.
After taking those 86 columns, change their names (Remove unwanted "-" and "()" so that names look more clean. These changed variable names will be used in step_04 to assigen those names to column in our data set.
* *Required combined data: Dimension = 10299 x 86*

######Step_03 (Uses descriptive activity names to name the activities in the data set)
* *Read training activity number data: Dimensiton = 7352 x 1*
* *Read test activity number data: Dimensiton = 2947 x 1*
* *Row bound combined activity number data: Dimensiton = 10299 x 1*
Read activity names from file and replace these activity numbers with activity names. Then column bind these activity names dataset with the required columns data set that we produced in step_02 above. 
* *Required columns data set with descriptive activity names: Dimension = 10299 x 87*

######Step_04 (Appropriately labels the data set with descriptive variable names)
Take data created in step_03() above. Also take the changed variable names that we created in step_02() above. Give those variable names to the dataset. 
* *Data set with variable names: Dimension = 10299 x 87* There is no change in dimension at this point. We just changed variable names.

######Step_05 (From the data set in step 4, creates an independent tidy data set with average of each variable for each activity and each subject)
* *Read training subnect number data: Dimensiton = 7352 x 1*
* *Read test subject number data: Dimensiton = 2947 x 1* 
* *Row bound combined subject number data: Dimensiton = 10299 x 1*
Column bind this subject number data set with our data set created in step_04 above.
* *New data set created: Dimension = 12099 x 88*
Now group this data set by subject and activity name and take averages of all the other 86 columns. 
* *Final tidy data set: Dimension = 180 x 88*

