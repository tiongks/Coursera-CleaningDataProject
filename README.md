
# Getting and Cleaning Data - Coursera Project

## Objective

The set of scripts in the project merges test and training data from accelerometers collected from Samsung Galaxy S smartphones.

A full description of the data set can seen in [UCI's Machine Learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Project Files

*run_analysis.R* 
The R script downloads and extracts data from the [archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

After the test and training data are merged, the mean and standard deviation values are summarized and stored in a file called "tidy_data.txt".

*tidy_data.txt*
The resulting summarized data is stored in this file.

*CodeBook.md*
This code book contains the description of the data in "tidy_data.txt", it also explains the transformations that were performed on the data.
