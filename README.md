# Tidy Averaged Subset of Data on "Human Activity Recognition Using Smartphones Data Set"

## Description

This is a tidy subset of data acquired from the UCI ML Dataset on
"Human Activity Recognition Using Smartphones Data Set" (see
citation below).

The data originally submitted to the UCI ML Dataset on "Human
Activity Recognition Using Smartphones Data Set" has 10299 rows of
561 columns, along with other data, split into training and rest
data. The data was acquired from 30 participants going through 6
activities wearing a smartphone, and accelerometer and gyroscopic
information was captured for this dataset.

The data was cleaned in 5 steps as detailed below:
     
1. Step 1: The training and test data were merged, after adding activity (code) and subject ids. 
2. Step 2: From this merged data, only features (columns) relate to computed means and standard deviations were extracted. This resulted in 68 columns of data.
3. Step 3: The activity codes were converted to explicit activity names
4. Step 4: The feature names made slightly more readable.
5. Step 5: The data was grouped by subject id and activity name, and for each subject-id-activity combination, the average was computed for each column. 

The data was then written out as a text file. Since there are 30 subjects and 6 activities for each subject, the resulting file has 180 (= 30 * 6) rows and 68 columns.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for additional information.

## Reference:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

     