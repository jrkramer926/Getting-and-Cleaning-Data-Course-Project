#tidydata.txt Codebook
##by Jack Kramer

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
