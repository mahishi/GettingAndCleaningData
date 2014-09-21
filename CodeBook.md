####Code book for Tidy Data

###### Tidy Data is the output of the Project. It has mean of 86 measurements for 30 subjects with 6 different activities. So we have a total of 88 columns (Including Subject and Activity Name) and we have a total of 180 records (30 times 6). These 86 measurements can be a mean of means or mean of standard deviations.

Tidy Data Column Name | Tidy Data Column Definition
----------------------|----------------------------

	subject	 |	Number of the subject on whom we have the measurement
	activity_name	 |	Activity Name on which we have the measurement
	tBodyAcc.mean.X	 |	Time Domain Body Acceleration Mean On X Axiz
	tBodyAcc.mean.Y	 |	Time Domain Body Acceleration Mean On Y Axiz
	tBodyAcc.mean.Z	 |	Time Domain Body Acceleration Mean On Z Axiz
	tBodyAcc.std.X	 |	Time Domain Body Acceleration Standard Deviation.X
	tBodyAcc.std.Y	 |	Time Domain Body Acceleration Standard Deviation.Y
	tBodyAcc.std.Z	 |	Time Domain Body Acceleration Standard Deviation.Z
	tGravityAcc.mean.X	 |	Time Domain Gravity Acceleration Mean On X Axiz
	tGravityAcc.mean.Y	 |	Time Domain Gravity Acceleration Mean On Y Axiz
	tGravityAcc.mean.Z	 |	Time Domain Gravity Acceleration Mean On Z Axiz
	tGravityAcc.std.X	 |	Time Domain Gravity Acceleration Standard Deviation On X Axiz
	tGravityAcc.std.Y	 |	Time Domain Gravity Acceleration Standard Deviation On Y Axiz
	tGravityAcc.std.Z	 |	Time Domain Gravity Acceleration Standard Deviation On Z Axiz
	tBodyAccJerk.mean.X	 |	Time Domain Body Linear Acceleration Mean On X Axiz
	tBodyAccJerk.mean.Y	 |	Time Domain Body Linear Acceleration Mean On Y Axiz
	tBodyAccJerk.mean.Z	 |	Time Domain Body Linear Acceleration Mean On Z Axiz
	tBodyAccJerk.std.X	 |	Time Domain Body Linear Acceleration Standard Deviation On X Axiz
	tBodyAccJerk.std.Y	 |	Time Domain Body Linear Acceleration Standard Deviation On Y Axiz
	tBodyAccJerk.std.Z	 |	Time Domain Body Linear Acceleration Standard Deviation On Z Axiz
	tBodyGyro.mean.X	 |	Time Domain Body Gyroscope Mean On X Axiz
	tBodyGyro.mean.Y	 |	Time Domain Body Gyroscope Mean On Y Axiz
	tBodyGyro.mean.Z	 |	Time Domain Body Gyroscope Mean On Z Axiz
	tBodyGyro.std.X	 |	Time Domain Body Gyroscope Standard Deviation On X Axiz
	tBodyGyro.std.Y	 |	Time Domain Body Gyroscope Standard Deviation On Y Axiz
	tBodyGyro.std.Z	 |	Time Domain Body Gyroscope Standard Deviation On Z Axiz
	tBodyGyroJerk.mean.X	 |	Time Domain Body Angular Velocity Mean On X Axiz
	tBodyGyroJerk.mean.Y	 |	Time Domain Body Angular Velocity Mean On Y Axiz
	tBodyGyroJerk.mean.Z	 |	Time Domain Body Angular Velocity Mean On Z Axiz
	tBodyGyroJerk.std.X	 |	Time Domain Body Angular Velocity Standard Deviation On X Axiz
	tBodyGyroJerk.std.Y	 |	Time Domain Body Angular Velocity Standard Deviation On Y Axiz
	tBodyGyroJerk.std.Z	 |	Time Domain Body Angular Velocity Standard Deviation On Z Axiz
	tBodyAccMag.mean	 |	Time Domain Body Acceleration Magnitude Mean
	tBodyAccMag.std	 |	Time Domain Body Acceleration Magnitude Standard Deviation
	tGravityAccMag.mean	 |	Time Domain Gravity Acceleration Magnitude Mean
	tGravityAccMag.std	 |	Time Domain Gravity Acceleration Magnitude Standard Deviation
	tBodyAccJerkMag.mean	 |	Time Domain Body Linear Acceleration Magnitude Mean
	tBodyAccJerkMag.std	 |	Time Domain Body Linear Acceleration Magnitude Standard Deviation
	tBodyGyroMag.mean	 |	Time Domain Body Gyroscope Magnitude Mean
	tBodyGyroMag.std	 |	Time Domain Body Gyroscope Magnitude Standard Deviation
	tBodyGyroJerkMag.mean	 |	Time Domain Body Angular VelocityMagnitude Mean
	tBodyGyroJerkMag.std	 |	Time Domain Body Angular VelocityMagnitude Standard Deviation
	fBodyAcc.mean.X	 |	Fast Fourier Transform Body Acceleration Mean On X Axiz
	fBodyAcc.mean.Y	 |	Fast Fourier Transform Body Acceleration Mean On Y Axiz
	fBodyAcc.mean.Z	 |	Fast Fourier Transform Body Acceleration Mean On Z Axiz
	fBodyAcc.std.X	 |	Fast Fourier Transform Body Acceleration Standard Deviation On X Axiz
	fBodyAcc.std.Y	 |	Fast Fourier Transform Body Acceleration Standard Deviation On Y Axiz
	fBodyAcc.std.Z	 |	Fast Fourier Transform Body Acceleration Standard Deviation On Z Axiz
	fBodyAcc.meanFreq.X	 |	Fast Fourier Transform Body Acceleration Mean Frequency On X Axiz
	fBodyAcc.meanFreq.Y	 |	Fast Fourier Transform Body Acceleration Mean Frequency On Y Axiz
	fBodyAcc.meanFreq.Z	 |	Fast Fourier Transform Body Acceleration Mean Frequency On Z Axiz
	fBodyAccJerk.mean.X	 |	Fast Fourier Transform Body Linear Acceleration Mean On X Axiz
	fBodyAccJerk.mean.Y	 |	Fast Fourier Transform Body Linear Acceleration Mean On Y Axiz
	fBodyAccJerk.mean.Z	 |	Fast Fourier Transform Body Linear Acceleration Mean On Z Axiz
	fBodyAccJerk.std.X	 |	Fast Fourier Transform Body Linear Acceleration Standard Deviation On X Axiz
	fBodyAccJerk.std.Y	 |	Fast Fourier Transform Body Linear Acceleration Standard Deviation On Y Axiz
	fBodyAccJerk.std.Z	 |	Fast Fourier Transform Body Linear Acceleration Standard Deviation On Z Axiz
	fBodyAccJerk.meanFreq.X	 |	Fast Fourier Transform Body Linear Acceleration Mean Frequency On X Axiz
	fBodyAccJerk.meanFreq.Y	 |	Fast Fourier Transform Body Linear Acceleration Mean Frequency On Y Axiz
	fBodyAccJerk.meanFreq.Z	 |	Fast Fourier Transform Body Linear Acceleration Mean Frequency On Z Axiz
	fBodyGyro.mean.X	 |	Fast Fourier Transform Body Gyroscope Mean On X Axiz
	fBodyGyro.mean.Y	 |	Fast Fourier Transform Body Gyroscope Mean On Y Axiz
	fBodyGyro.mean.Z	 |	Fast Fourier Transform Body Gyroscope Mean On Z Axiz
	fBodyGyro.std.X	 |	Fast Fourier Transform Body Gyroscope Standard Deviation On X Axiz
	fBodyGyro.std.Y	 |	Fast Fourier Transform Body Gyroscope Standard Deviation On Y Axiz
	fBodyGyro.std.Z	 |	Fast Fourier Transform Body Gyroscope Standard Deviation On Z Axiz
	fBodyGyro.meanFreq.X	 |	Fast Fourier Transform Body Gyroscope Mean Frequency On X Axiz
	fBodyGyro.meanFreq.Y	 |	Fast Fourier Transform Body Gyroscope Mean Frequency On Y Axiz
	fBodyGyro.meanFreq.Z	 |	Fast Fourier Transform Body Gyroscope Mean Frequency On Z Axiz
	fBodyAccMag.mean	 |	Fast Fourier Transform Body Acceleration Magnitude Mean
	fBodyAccMag.std	 |	Fast Fourier Transform Body Acceleration Magnitude Standard Deviation
	fBodyAccMag.meanFreq	 |	Fast Fourier Transform Body Acceleration Magnitude Mean Frequency
	fBodyBodyAccJerkMag.mean	 |	Fast Fourier Transform Body Linear Acceleration Magnitude Mean
	fBodyBodyAccJerkMag.std	 |	Fast Fourier Transform Body Linear Acceleration Magnitude Standard Deviation
	fBodyBodyAccJerkMag.meanFreq	 |	Fast Fourier Transform Body Linear Acceleration Magnitude Mean Frequency
	fBodyBodyGyroMag.mean	 |	Fast Fourier Transform Body Gyroscope Magnitude Mean
	fBodyBodyGyroMag.std	 |	Fast Fourier Transform Body Gyroscope Magnitude Standard Deviation
	fBodyBodyGyroMag.meanFreq	 |	Fast Fourier Transform Body Gyroscope Magnitude Mean Frequency
	fBodyBodyGyroJerkMag.mean	 |	Fast Fourier Transform Body Angular Velocity Magnitude Mean
	fBodyBodyGyroJerkMag.std	 |	Fast Fourier Transform Body Angular Velocity Magnitude Standard Deviation
	fBodyBodyGyroJerkMag.meanFreq	 |	Fast Fourier Transform Body Angular Velocity Magnitude Mean Frequency
	angletBodyAccMean.gravity	 |	angleTime Domain Body AccelerationMean gravity
	angletBodyAccJerkMean.gravityMean	 |	angleTime Domain Body Linear AccelerationMean Gravity Mean
	angletBodyGyroMean.gravityMean	 |	angleTime Domain Body GyroscopeMean Gravity Mean
	angletBodyGyroJerkMean.gravityMean	 |	angleTime Domain Body Angular VelocityMean Gravity Mean
	angleX.gravityMean	 |	angleX Gravity Mean
	angleY.gravityMean	 |	angleY Gravity Mean
	angleZ.gravityMean	 |	angleZ Gravity Mean
