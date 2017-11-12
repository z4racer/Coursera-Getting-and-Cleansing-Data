Program: run_analysis.R

Required libraries:
	⁃	stringr
	⁃	dplyr

Variable uses:
Input
	⁃	xtrain - data frame reading in source X_train data. Collected training data from machine
	⁃	ytrain - data frame reading in exercise type recored. This is an index from 1-6
	⁃	subtrain -  data frame reading in identifying subject id who performed collected in in xtrain.
	⁃	
	⁃	xtest - data frame reading in source X_test data. Collected training data from machine
	⁃	ytest - data frame reading in exercise type recored. This is an index from 1-6
	⁃	subtest -  data frame reading in identifying subject id who performed collected in in xtest.
	⁃	.
	⁃	feature - data frame reading list of all features collected in the xtrain and xtest data from machine

Created/manipulated
	⁃	col_names - capturing feature name as a vector to tidy up feature titles
	⁃	train_allmean - Data frame from xtrain with all features that included the word mean as the variable name
	⁃	train_allstd - Data frame from xtrain with all features that included the word std as the variable name. std represents standard deviation
	⁃	
	⁃	test_allmean - Data frame from xtest with all features that included the word mean as the variable name
	⁃	test_allstd - Data frame from xtest with all features that included the word std as the variable name. std represents standard deviation
	⁃	newtest - Data frame with test_allmean and test_allstd merged together. Also adds subject_id and activity_name
	⁃	train_df - Converted newtrain from a data frame to a tbl_df and grouped by subject_id and activity_name
	⁃	test_df - Converted newtest  from a data frame to a tbl_df and grouped by subject_id and activity_name
	⁃	
Output files
	⁃	tidy_test.txt - A tidy data set with summary of averages for each feature grouped by subject_id and activity_name
	⁃	tidy_train.txt - A tidy data set with summary of averages for each feature grouped by subject_id and activity_name
