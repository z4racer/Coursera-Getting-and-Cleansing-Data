{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid1\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid101\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid201\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid3}
{\list\listtemplateid4\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid301\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid4}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}{\listoverride\listid4\listoverridecount0\ls4}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Program: run_analysis.R\
\
Required libraries:\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls1\ilvl0\cf0 {\listtext	\uc0\u8259 	}stringr\
{\listtext	\uc0\u8259 	}dplyr\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
Variable uses:\
Input\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls2\ilvl0\cf0 {\listtext	\uc0\u8259 	}
\b xtrain
\b0  - data frame reading in source X_train data. Collected training data from machine\
{\listtext	\uc0\u8259 	}
\b ytrain
\b0  - data frame reading in exercise type recored. This is an index from 1-6\
{\listtext	\uc0\u8259 	}
\b subtrain
\b0  -  data frame reading in identifying subject id who performed collected in in xtrain.\
{\listtext	\uc0\u8259 	}\
{\listtext	\uc0\u8259 	}
\b xtest
\b0  - data frame reading in source X_test data. Collected training data from machine\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls2\ilvl0\cf0 {\listtext	\uc0\u8259 	}
\b ytest
\b0  - data frame reading in exercise type recored. This is an index from 1-6\
{\listtext	\uc0\u8259 	}
\b subtest
\b0  -  data frame reading in identifying subject id who performed collected in in xtest.\
{\listtext	\uc0\u8259 	}.\
{\listtext	\uc0\u8259 	}
\b feature
\b0  - data frame reading list of all features collected in the xtrain and xtest data from machine\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
Created/manipulated\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls3\ilvl0\cf0 {\listtext	\uc0\u8259 	}
\b col_names
\b0  - capturing feature name as a vector to tidy up feature titles\
{\listtext	\uc0\u8259 	}
\b train_allmean
\b0  - Data frame from xtrain with all features that included the word mean as the variable name\
{\listtext	\uc0\u8259 	}
\b train_allstd
\b0  - Data frame from xtrain with all features that included the word std as the variable name. std represents standard deviation\
{\listtext	\uc0\u8259 	}\
{\listtext	\uc0\u8259 	}
\b test_allmean
\b0  - Data frame from xtest with all features that included the word mean as the variable name\
{\listtext	\uc0\u8259 	}
\b test_allstd
\b0  - Data frame from xtest with all features that included the word std as the variable name. std represents standard deviation\
{\listtext	\uc0\u8259 	}
\b newtest
\b0  - Data frame with test_allmean and test_allstd merged together. Also adds subject_id and activity_name\
{\listtext	\uc0\u8259 	}
\b train_df
\b0  - Converted newtrain from a data frame to a tbl_df and grouped by subject_id and activity_name\
{\listtext	\uc0\u8259 	}
\b test_df
\b0  - Converted newtest  from a data frame to a tbl_df and grouped by subject_id and activity_name\
{\listtext	\uc0\u8259 	}\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 Output files\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls4\ilvl0\cf0 {\listtext	\uc0\u8259 	}
\b tidy_test.txt
\b0  - A tidy data set with summary of averages for each feature grouped by subject_id and activity_name\
{\listtext	\uc0\u8259 	}
\b tidy_train.txt
\b0  - A tidy data set with summary of averages for each feature grouped by subject_id and activity_name}