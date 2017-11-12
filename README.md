Project Name: run_analysis.R
Coursera Getting and Cleaning Data programming project


Description:
Data Set Information:
INPUTS:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

OUTPUTS:
A tidy dataset with related merged data is processed for each train and test data sets:
	
	⁃	Merged into one file with all the measure date, subject_id(person identifier), and activity_name
	⁃	added column names/variables read in from input file
	⁃	Cleaned names by getting rid of “()”, replacing “-“ with “.”, Converted all alpha characters to lower case, replaced “,” with “.”
	⁃	created new data frame with just variable with mean and std in their names. Identifying mean and standard deviation data for later processing.
	⁃	Replaced activity id with activity name in the data frame
	⁃	Created tbl_df data types from the data frames and applied group_by for:
	⁃	subject_id and activity_name
	⁃	The output results in two files written:
	⁃	tidy_test.txt - mean summary for each column grouped by subject_id and activity_name
	⁃	tidy_train.txt - mean summary for each column grouped by subject_id and activity_name
	⁃	
	⁃	
	⁃		
