{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid2\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid3\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li2160\lin2160 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid4\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li2880\lin2880 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww21320\viewh9520\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs34 \cf0 Project Name: run_analysis.R\

\fs24 Coursera Getting and Cleaning Data programming project\
\
\

\fs34 Description:\

\fs38 Data Set Information:
\fs34 \
INPUTS:\

\fs24 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. \
\
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.\
\
\
Attribute Information:\
\
For each record in the dataset it is provided: \
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. \
- Triaxial Angular velocity from the gyroscope. \
- A 561-feature vector with time and frequency domain variables. \
- Its activity label. \
- An identifier of the subject who carried out the experiment.\
\

\fs34 OUTPUTS:
\fs30 \

\fs24 A tidy dataset with related merged data is processed for each train and test data sets:\
	\
\pard\tx1660\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2160\fi-2160\pardirnatural\partightenfactor0
\ls1\ilvl2\cf0 {\listtext	\uc0\u8259 	}Merged into one file with all the measure date, subject_id(person identifier), and activity_name\
{\listtext	\uc0\u8259 	}added column names/variables read in from input file\
\pard\tx2380\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2880\fi-2880\pardirnatural\partightenfactor0
\ls1\ilvl3\cf0 {\listtext	\uc0\u8259 	}Cleaned names by getting rid of \'93()\'94, replacing \'93-\'93 with \'93.\'94, Converted all alpha characters to lower case, replaced \'93,\'94 with \'93.\'94\
\pard\tx1660\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2160\fi-2160\pardirnatural\partightenfactor0
\ls1\ilvl2\cf0 {\listtext	\uc0\u8259 	}created new data frame with just variable with mean and std in their names. Identifying mean and standard deviation data for later processing.\
{\listtext	\uc0\u8259 	}Replaced activity id with activity name in the data frame\
{\listtext	\uc0\u8259 	}Created tbl_df data types from the data frames and applied group_by for:\
\pard\tx2380\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2880\fi-2880\pardirnatural\partightenfactor0
\ls1\ilvl3\cf0 {\listtext	\uc0\u8259 	}subject_id and activity_name\
\pard\tx1660\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2160\fi-2160\pardirnatural\partightenfactor0
\ls1\ilvl2\cf0 {\listtext	\uc0\u8259 	}The output results in two files written:\
\pard\tx2380\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li2880\fi-2880\pardirnatural\partightenfactor0
\ls1\ilvl3\cf0 {\listtext	\uc0\u8259 	}tidy_test.txt - mean summary for each column grouped by subject_id and activity_name\
{\listtext	\uc0\u8259 	}tidy_train.txt - mean summary for each column grouped by subject_id and activity_name\
\ls1\ilvl3
\fs30 {\listtext	\uc0\u8259 	}\
{\listtext	\uc0\u8259 	}\
{\listtext	\uc0\u8259 	}	}# Couresera-Getting-and-Cleansing-Data
