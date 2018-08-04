# Final Project for Getting and Cleaning Data Analysis
This repo is created for the final project for course - Getting and Cleaning Data Analysis, JHU - on Coursera.
Four R scripts, two tidy data sets and one CodeBook are included. Here comes the introduction for R scripts.

## run_analysis.R
Everything begins here. In this script, I managed all the requirements.
Firstly, testing sets and training sets are loaded and cleaned into variables *test* and *train* respectively by *source* "openTest.R" and "openTrain.R". After then, they are merged easily by R command rbind into variable *dataMerged*. (How testing and training sets are cleaned will be introduced later.)

Secondly, *dataMerged* is grouped by *subject* and *activities*, based on which the second data set is created easily by function *dply::summarize_all*.

## commonData.R
In this script, features.txt is loaded as *x_names*, cleaned by *gsub*, proper for name the variables of final data set. In order to extract measurements of the means and the standard deviations, variable *mean_std* is created be *grepl* all elements including "Mean" or "Std", and this *mean_std* is a vector of boolean values.
This script also includes a variable *activity_labels* from activity_labels.txt. It is a vector containing activities names. What's more, a function *label_to_activity* is created to help match "*y*" with activities names.

## openTest.R (openTrain.R is the same)
With data in commonData.R, opening and cleaning datas from test(train) sets becomes easy. 
We first *source* common datas. Then open x_test.txt (2947 \times 86), y_test (2947 \times 1)
