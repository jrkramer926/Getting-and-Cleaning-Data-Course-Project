#run_analysis.R Codebook

##Variables (alphabetical)

`activity` - Displays activity ID and activity Name in reference to `y_data`.

`activity_labels` - Map of activity ID's and description.  Source data from UHI.

`features` - Map of feature ID's with feature names. Used to name columns of `x_data`.

`final-data` - Final data set combined from `final_x`, `final_y`, and `subject_data`.

`final_x` - test and train feature results with column names ID'd by `features`filtered for columns displaying standard deviation or mean.

`final_y` - test and train activities performed with row names ID'd by `activity`.

`subject_data`  - Displays subject ID for whom data is collected. Combined from `subject_test` and `subject_train`.

`subject_test` - Displays subject ID for test data. Source data from UHI.

`subject_train` - Displays subject ID for train data. Source data from UHI.

`tidydata` - Mean feature results across each subject for each activy. Described in further detail below.

`x_data` - `x_test` and `x_train` feature results with column names ID'd by `features`.

`x_test` - test feature results. Source data from UHI.

`x_train` - train feature results. Source data from UHI.

`y_data` - `y_test` and `y_train` activity ID.

`y_test` - test activity ID. Source data from UHI.

`y_train` - train activity ID. Source data from UHI.




#tidydata.txt Codebook


##Description
`tidydata.txt` was generated using the [UHI HAR Dataset] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The data measures motion across 30 subjects wearing a FitBit.

For additional information regarding the dataset, please visit the [UHI webpage] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

`tidydata.txt` displays summary statistics about certain motions across specific subject. There are 6 different self explanatory motions:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

and 30 different subjects. Thus, there are 180 total rows. 

##Columns
`subject` - THe ID number of the text subject. 

`activity` - The type of activity peformed and recorded.

All other columns are types of movements recored. They range from `tBodyAccMeanX` to `fBodyBodyGyroJerkMagMeanFreq`.
