### **run_analysis.R overview**

##What

The R course **Getting and Cleaning Data** encompasses a Course Project to " ...demonstrate your ability to collect, work with, and clean a data set", see the [course project webpage](https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3/submissions).

For this assignemnt I have written a script **run_analysis.R** which uses the provided [smartphone accelerometer and gyroscope processed data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) as an input and produces a tiddy data subset as output.

##How

The **run_analysis.R** script implements the following steps:

1. Uploading the data files: the files are uploaded from a location relative to the working directory where run_analysis.R should be stored and uploaded into memory. Data is uploaded as character.

2. The the size of various datasets is checked to make sure the sets fit together as per [David Hood's diagram](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png) in the thread [How to apply activity labels](https://class.coursera.org/getdata-015/forum/thread?thread_id=112)

3. The measurements of the mean and standard deviation is extracted

4. The data is collated and the used variables discarded

5. The data is named, simplifying column names and naming activities

6. The data is transformed to numeric

7. The columns are rearranged

8. dplyr is used to aggregate the data, the aggregated data is shown

9. The aggregated data is written to disk in the average.txt file

##Support

See the Codebook.md file for a description of the variables