#-----------ONE load test sets
if(!exists("test")){source("openTest.R")}

#-----------TWO load train sets
if(!exists("train")){source("openTrain.R")}

#-----------THREE merge the training and the test sets
dataMerged <- rbind(test, train)
 ## output the clean data set
write.csv(dataMerged, file = "dataMerged.csv")

#-----------FOUR creat second data set
 ## factor subject and y variable
dataMerged$subject <- factor(dataMerged$subject)
dataMerged$activity <- factor(dataMerged$activity)
 ## loading dplyr to group dataMerged
library(dplyr)
dataMerged <- dataMerged %>% group_by(subject, activity)
 ## use summarize_all to summarize multiple columns
setBySubAct <- summarize_all(dataMerged, mean)
 ## output the second clean data set
write.csv(setBySubAct, "AvgOfEachVarForEachSubAct.csv")
