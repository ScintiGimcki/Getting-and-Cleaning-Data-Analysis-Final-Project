#----------ONE load features.txt as x_names
x_names <- read.table("./UCI HAR Dataset/features.txt")
x_names <- as.character(x_names$V2)
 ## turn mean() and std() into Mean and Std
x_names <- gsub("mean", "Mean", x_names)
x_names <- gsub("std", "Std", x_names)
x_names <- gsub("\\(\\)", "", x_names)
 ## delet "-" in names
x_names <- gsub("-", "", x_names)
 ## find colums with mean and std
mean_std <- grepl("Mean|Std", x_names)

#-----------THREE load activity_labels.txt
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                              sep = "", 
                              stringsAsFactors = FALSE)
 ## modify into lowercase
activity_labels <- tolower(activity_labels$V2)
activity_labels <- gsub("_", " ", activity_labels)
 ## create a fucntion to name labels
label_to_activity <- function(label, activity){activity[label]}


