## run_analysis() function calls 5 functions to produce the desired tidy data output.
## Project has 5 steps in it. Functionality of each step is split into a function so it is easy to follow.
## run_analysis, the top level function that we call from R Console. This functions calls each of the 5 functions one after the other.
## Functions are named step_01(), step_02(), step_03(), step_04(), step_04() 

## All data needed for this project is placed under folder called "data" in current working directory.

##Main function to get a tidy dataset for analysis
run_analysis <- function()
{
	## Define all global variables that will hold the data set and the related stuff.
	mean_std_col_names <- NULL;
	
	## Load all the libraries additional libraries needed
	library(dplyr)
	library(plyr)
	
	##Merges the training and the test sets to create one data set.
	full_data.tbl <- step_01()
	
	##Extracts only the measurements on the mean and standard deviation for each measurement. 
	required_data.tbl <- step_02(full_data.tbl)
	## Remove full data. We do not need it anymore.
	rm(full_data.tbl);

	##Uses descriptive activity names to name the activities in the data set. Acitvity labels are in activity_labels.txt
	required_data_with_activity_names.tbl <- step_03(required_data.tbl)
	rm(required_data.tbl);
	
	##Appropriately labels the data set with descriptive variable names. 
	data_with_labels.tbl <- step_04(required_data_with_activity_names.tbl)
	rm(required_data_with_activity_names.tbl)
	##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	tidy_data.tbl <- step_05(data_with_labels.tbl)
	
}

## Merges the training and the test sets to create one data set.
step_01 <- function()
{	
	print("Starting Step_01")
	## Load Training data
	print ("Reading Training data ...")
	training_data <- read.table("data/train/X_train.txt", header=FALSE)
	cat("Training data dimensions are: "); print(dim(training_data));
	
	## Load Test data
	print ("Reading Test data ...")
	test_data <- read.table("data/test/X_test.txt", header=FALSE)
	cat("Test data dimensions are: "); print(dim(test_data));
	
	## Merge data into a data frame by doing an rbind
	full_data <- rbind(training_data, test_data)
	print ("Combined Training and Test data into one data set.")
	
	## Convert data frame into a data table using dplyr::tbl_df function.
	full_data.tbl <- tbl_df(full_data)
	cat("Combined data dimensions are: "); print(dim(full_data.tbl));
	
	## Remove the unwanted data frame 
	rm(full_data)
	print("Ending Step_01")
	
	## REturn the full data set created.
	full_data.tbl
}

## Extracts only the measurements on the mean and standard deviation for each measurement. 
step_02 <- function(full_data.tbl)
{
	print("Starting Step_02")
	## data measurements features are available in features.txt file. There are 561 measurements. 
	## features.txt file has two columns. Measurement row number and the name for that measurement.
	## Read that data into a data frame.
	features <- read.table("data/features.txt", header=FALSE)
	
	## Convert that data frame into a data table so that we can work more easily with data. Remove unnecessary variables.
	features.tbl <- tbl_df(features); rm(features)
	
	## Out of 561 measurements, we only need mean and standard deviation measurements. So find out which ones they are.
	## Get their names and their column numbers. and save them in a vector. 
	## One thing we need to be careful here is that some names of the measurements that we need have a comma in them.
	## You can remove them using a standard editor or remove them programatically. I chose to remove them by hand because there were only 5 of them.
	features.tbl <- filter(features.tbl, grepl('mean|Mean|std|Std', features.tbl[,2]))
	
	
	## Store column numbers in a vector.
	mean_std_col_nums <- as.vector(features.tbl[,1])
	
	## Store column names in a global vector. Rename them to be cleaner names. We will use this vector in step 4 later.
	##
	mean_std_col_names <<- as.vector(features.tbl[,2])
	mean_std_col_names <<- gsub("-", ".", mean_std_col_names)
	mean_std_col_names <<- sub("[()]", "", mean_std_col_names)
	mean_std_col_names <<- gsub("[)]", "", mean_std_col_names)
	## From the full data set that we have, now take only the column numbers that we are interested in an store it in required_data.tbl
	required_data.tbl <- select(full_data.tbl, mean_std_col_nums)
	print("Only required measurements are selected from full data set. Other measurements ignored.")
	cat("Required data dimensions are: "); print(dim(required_data.tbl));
	print("Ending Step_02")
	required_data.tbl
}

## Uses descriptive activity names to name the activities in the data set
step_03 <- function(required_data.tbl)
{
	print("Starting Step_03")
	# Read activity labels from file
	activity_labels.df <- read.table("data/activity_labels.txt", header=FALSE)
	
	## Convert activity labels and remove data frame variable.
	activity_labels.tbl <- tbl_df(activity_labels.df); rm(activity_labels.df);
	
	# Activity labels file has two columns. Activity ID and Activity Name.
	colnames(activity_labels.tbl) <- c('activity_id', 'activity_name')
	
	# Read training activities from file
	training_activity.df <- read.table("data/train/y_train.txt", header=FALSE)
	cat("Training activity data dimensions are: "); print(dim(training_activity.df));
	
	# Read test activities from file
	test_activity.df <- read.table("data/test/y_test.txt", header=FALSE)
	cat("Test activity data dimensions are: "); print(dim(test_activity.df));
	
	# Row Bind training and test activities into one data frame.
	activity.df <- rbind(training_activity.df, test_activity.df); rm (training_activity.df); rm(test_activity.df);
	## Convert data frame into data table.
	activity.tbl <- tbl_df(activity.df)
	# Name the column as activity_id
	colnames(activity.tbl) <- c('activity_id')
	## Mutate that data table ad create a new column called activity_name.
	data_activity.tbl <- mutate(activity.tbl, activity_name = activity_labels.tbl[activity_id,2])
	## Remove activity id. We only need the activity name.
	activity_name.tbl <- select(data_activity.tbl , -activity_id)
	
	# Now column bind this activity Names to required data.
	required_data_with_activity_names.tbl <- cbind(activity_name.tbl, required_data.tbl)
	print("Descriptive activity names given to required data set")
	
	#Return the data table. This table has activity name associated with each observation.
	cat("Required data with activity names dimensions are: "); print(dim(required_data_with_activity_names.tbl));
	print("Ending Step_03")
	required_data_with_activity_names.tbl
}

## Appropriately labels the data set with descriptive variable names. 
step_04 <- function(required_data_with_activity_names.tbl)
{
	print("Starting Step_04")
	# Use column/variable names that we had stored earlier. 
	names <- c('activity_name', mean_std_col_names)
	mean_std_col_names <<- c('activity_name', mean_std_col_names)
	
	## Lable our data with the names.
	data_with_labels.tbl <- required_data_with_activity_names.tbl
	colnames(data_with_labels.tbl) <- names
	print("Descriptive variable names given to required data set")
	
	## Return the data which now has the variable names/Labels.
	cat("Dataset with descriptive variable names dimensions are: "); print(dim(data_with_labels.tbl));
	print("Ending Step_04")
	data_with_labels.tbl
}

## Create the necessary tidy data output
step_05 <- function(data_with_labels.tbl)
{
	print("Starting Step_05")
	training_subject <- read.table("data/train/subject_train.txt", header=FALSE)
	test_subject <- read.table("data/test/subject_test.txt", header=FALSE)
	subject <- rbind(training_subject, test_subject)
	names <- c('subject', mean_std_col_names)
	full_data.tbl <- cbind(subject, data_with_labels.tbl)
	colnames(full_data.tbl) <- names
	full_data.tbl <- arrange(full_data.tbl, subject, activity_name)
	cat("Data with Subject dimensions are: "); print(dim(full_data.tbl ));

	tidy_data.tbl  <- ddply(full_data.tbl, .(subject, activity_name), colwise(mean))
	tidy_data.tbl <- tbl_df(tidy_data.tbl)
	write.table(tidy_data.tbl, file="tidy.data.txt", sep=",", quote=FALSE, row.names = FALSE)
	write.table(tidy_data.tbl, file="tidy.data.csv", sep=",", quote=FALSE, row.names = FALSE)
	print("Tidy Data: Mean of selected columns, grouped by subject and activity name is stored in tidy.data.txt file")
	cat("Tidy data dimensions are: "); print(dim(tidy_data.tbl));
	print("Ending Step_05")
	tidy_data.tbl
}
