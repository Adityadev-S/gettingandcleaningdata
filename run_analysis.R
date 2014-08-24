##Reading in the test data set
y_test<-read.table("C:/Users/Admin/UCI HAR Dataset/test/y_test.txt", header = FALSE)
x_test<-read.table("C:/Users/Admin/UCI HAR Dataset/test/x_test.txt", header = FALSE)
subject_test<-read.table("C:/Users/Admin/UCI HAR Dataset/test/subject_test.txt", header = FALSE)

##Reading in the Train data det
y_train<-read.table("C:/Users/Admin/UCI HAR Dataset/train/y_train.txt", header = FALSE)
x_train<-read.table("C:/Users/Admin/UCI HAR Dataset/train/x_train.txt", header = FALSE)
subject_train<-read.table("C:/Users/Admin/UCI HAR Dataset/train/subject_train.txt", header = FALSE)

## Row binding the corresponding train and test data sets
y<-rbind(y_test,y_train)
x<-rbind(x_test,x_train)
subject<-rbind(subject_test,subject_train)

##extracting the names  for the columns of x
feature<-read.table("C:/Users/Admin/UCI HAR Dataset/features.txt")
ftr_list<-as.vector(feature[,2])

##re-naming the columns
names(x)<-c(ftr_list)
names(subject)<-c("Person")
names(y)<-c("Activity")

##Merging the 3 data sets into a single set
Comp<-cbind(subject,y,x)

##Subsetting the data for mean and standard deviation for each measurement
##I have only considered matches for mean() and std() and freqMean
##since these observations rely only on the raw measurement data and other variables such as 
##gravityMean,tBodyAccMean are the means of processed data
step2<-Comp[,c(grep("Person",names(Comp)),grep("Activity",names(Comp)),grep("mean()",names(Comp)),grep("std()",names(Comp)))]

## Descriptive activity names
activity_labels<-read.table("C:/Users/Admin/UCI HAR Dataset/activity_labels.txt")
step2$Activity<-as.character(step2$Activity)
activity_labels[,2]<-as.character(activity_labels[,2])
step2$Activity[step2$Activity %in% "1"] <- activity_labels[1,2]
step2$Activity[step2$Activity %in% "2"] <- activity_labels[2,2]
step2$Activity[step2$Activity %in% "3"] <- activity_labels[3,2]
step2$Activity[step2$Activity %in% "4"] <- activity_labels[4,2]
step2$Activity[step2$Activity %in% "5"] <- activity_labels[5,2]
step2$Activity[step2$Activity %in% "6"] <- activity_labels[6,2]

## Descriptive variable names created by removing () and replacing '-' with '_'
##As per TA's on the forums the underscore is an acceptable naming policy
step4<-names(step2)
step4<-gsub("-","_",step4)
step4<-gsub("[()]","",step4)
names(step2)<-c(step4)

## finding the average and writing to a text file
step5<-aggregate(.~Person+Activity,data=step2,FUN=mean)
write.table(step5,"Averages.txt",row.names=FALSE)
