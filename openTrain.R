#-----------ONE if never, load commonData
if(!exists("activity_labels")){source("commonData.R")}

#-----------TWO load x_train.txt
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                     sep = "")
colnames(x_train) <- x_names
## subset colums with mean and std
x_train <- x_train[,mean_std]

#-----------THREE load y_train.txt
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", 
                     sep = "", 
                     col.names = "activity")
## name labels with activities
y_train <- data.frame(sapply(y_train, label_to_activity, activity_labels), 
                     stringsAsFactors = FALSE)

#-----------FOUR load subject_train.txt
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                           sep = "\t", 
                           col.names = "subject")

#-----------FIVE merge the train sets
train <- cbind(subject_train, y_train, x_train)



