\name{normalizedAveragedData}
\alias{normalizedAveragedData}
\docType{data}
\title{
Tidy Averaged Subset of Data on "Human Activity Recognition Using Smartphones Data Set"
}
\description{
This is a tidy subset of data acquired from the UCI ML Dataset on "Human Activity Recognition Using Smartphones Data Set" (see citation below).

See details for processing steps.
}
\usage{data("normalizedAveragedData")}
\format{
  A data frame with 180 observations on the following 68 variables.
  \describe{
    \item{\code{Activity}}{a character vector}
    \item{\code{Subject}}{a numeric vector}
    \item{\code{timeBodyAccelAvgX}}{a numeric vector}
    \item{\code{timeBodyAccelAvgY}}{a numeric vector}
    \item{\code{timeBodyAccelAvgZ}}{a numeric vector}
    \item{\code{timeGravityAccelAvgX}}{a numeric vector}
    \item{\code{timeGravityAccelAvgY}}{a numeric vector}
    \item{\code{timeGravityAccelAvgZ}}{a numeric vector}
    \item{\code{timeBodyAccelJerkAvgX}}{a numeric vector}
    \item{\code{timeBodyAccelJerkAvgY}}{a numeric vector}
    \item{\code{timeBodyAccelJerkAvgZ}}{a numeric vector}
    \item{\code{timeBodyGyroAvgX}}{a numeric vector}
    \item{\code{timeBodyGyroAvgY}}{a numeric vector}
    \item{\code{timeBodyGyroAvgZ}}{a numeric vector}
    \item{\code{timeBodyGyroJerkAvgX}}{a numeric vector}
    \item{\code{timeBodyGyroJerkAvgY}}{a numeric vector}
    \item{\code{timeBodyGyroJerkAvgZ}}{a numeric vector}
    \item{\code{timeBodyAccelMagAvg}}{a numeric vector}
    \item{\code{timeGravityAccelMagAvg}}{a numeric vector}
    \item{\code{timeBodyAccelJerkMagAvg}}{a numeric vector}
    \item{\code{timeBodyGyroMagAvg}}{a numeric vector}
    \item{\code{timeBodyGyroJerkMagAvg}}{a numeric vector}
    \item{\code{freqBodyAccelAvgX}}{a numeric vector}
    \item{\code{freqBodyAccelAvgY}}{a numeric vector}
    \item{\code{freqBodyAccelAvgZ}}{a numeric vector}
    \item{\code{freqBodyAccelJerkAvgX}}{a numeric vector}
    \item{\code{freqBodyAccelJerkAvgY}}{a numeric vector}
    \item{\code{freqBodyAccelJerkAvgZ}}{a numeric vector}
    \item{\code{freqBodyGyroAvgX}}{a numeric vector}
    \item{\code{freqBodyGyroAvgY}}{a numeric vector}
    \item{\code{freqBodyGyroAvgZ}}{a numeric vector}
    \item{\code{freqBodyAccelMagAvg}}{a numeric vector}
    \item{\code{freqBodyBodyAccelJerkMagAvg}}{a numeric vector}
    \item{\code{freqBodyBodyGyroMagAvg}}{a numeric vector}
    \item{\code{freqBodyBodyGyroJerkMagAvg}}{a numeric vector}
    \item{\code{timeBodyAccelStdDevX}}{a numeric vector}
    \item{\code{timeBodyAccelStdDevY}}{a numeric vector}
    \item{\code{timeBodyAccelStdDevZ}}{a numeric vector}
    \item{\code{timeGravityAccelStdDevX}}{a numeric vector}
    \item{\code{timeGravityAccelStdDevY}}{a numeric vector}
    \item{\code{timeGravityAccelStdDevZ}}{a numeric vector}
    \item{\code{timeBodyAccelJerkStdDevX}}{a numeric vector}
    \item{\code{timeBodyAccelJerkStdDevY}}{a numeric vector}
    \item{\code{timeBodyAccelJerkStdDevZ}}{a numeric vector}
    \item{\code{timeBodyGyroStdDevX}}{a numeric vector}
    \item{\code{timeBodyGyroStdDevY}}{a numeric vector}
    \item{\code{timeBodyGyroStdDevZ}}{a numeric vector}
    \item{\code{timeBodyGyroJerkStdDevX}}{a numeric vector}
    \item{\code{timeBodyGyroJerkStdDevY}}{a numeric vector}
    \item{\code{timeBodyGyroJerkStdDevZ}}{a numeric vector}
    \item{\code{timeBodyAccelMagStdDev}}{a numeric vector}
    \item{\code{timeGravityAccelMagStdDev}}{a numeric vector}
    \item{\code{timeBodyAccelJerkMagStdDev}}{a numeric vector}
    \item{\code{timeBodyGyroMagStdDev}}{a numeric vector}
    \item{\code{timeBodyGyroJerkMagStdDev}}{a numeric vector}
    \item{\code{freqBodyAccelStdDevX}}{a numeric vector}
    \item{\code{freqBodyAccelStdDevY}}{a numeric vector}
    \item{\code{freqBodyAccelStdDevZ}}{a numeric vector}
    \item{\code{freqBodyAccelJerkStdDevX}}{a numeric vector}
    \item{\code{freqBodyAccelJerkStdDevY}}{a numeric vector}
    \item{\code{freqBodyAccelJerkStdDevZ}}{a numeric vector}
    \item{\code{freqBodyGyroStdDevX}}{a numeric vector}
    \item{\code{freqBodyGyroStdDevY}}{a numeric vector}
    \item{\code{freqBodyGyroStdDevZ}}{a numeric vector}
    \item{\code{freqBodyAccelMagStdDev}}{a numeric vector}
    \item{\code{freqBodyBodyAccelJerkMagStdDev}}{a numeric vector}
    \item{\code{freqBodyBodyGyroMagStdDev}}{a numeric vector}
    \item{\code{freqBodyBodyGyroJerkMagStdDev}}{a numeric vector}
  }
}
\details{
The data originally submitted to the UCI ML Dataset on "Human Activity Recognition Using Smartphones Data Set" has 10299 rows of 561 columns, along with other data, split into training and rest data. The data was acquired from 30 participants going through 6 activities wearing a smartphone, and accelerometer and gyroscopic information was captured for this dataset.

In this data set, the training and test data were merged, after adding activity (code) and subject ids. From this merged data, only features (columns) relate to computed means and standard deviations were extracted. This resulted in 68 columns of data. The activity codes were converted to explicit activity names, and the feature names made slightly more readable. The data was grouped by subject id and activity name, and for each subject-id--activity combination, the average was computed for each column. The data was then written out as a text file.

Since there are 30 subjects and 6 activities for each subject, the resulting file has 180 (= 30 * 6) rows and 68 columns.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  for additional information.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Subset of data acquired from the UCI ML Dataset on "Human Activity Recognition Using Smartphones Data Set"

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(normalizedAveragedData)

}
\keyword{datasets}
