gacd_cp<-function(){
        # Step1. Merges the training and the test sets to create one data set. (final1)
        test_subj<-read.table("./UCI HAR Dataset/test/subject_test.txt", sep=" ") 
        test_feat<-read.table("./UCI HAR Dataset/test/y_test.txt", sep=" ")
        test_561<-read.table("./UCI HAR Dataset/test/X_test.txt", sep="")
        train_subj<-read.table("./UCI HAR Dataset/train/subject_train.txt", sep=" ")
        train_feat<-read.table("./UCI HAR Dataset/train/y_train.txt", sep=" ")
        train_561<-read.table("./UCI HAR Dataset/train/X_train.txt", sep="")
        features<-read.table("./UCI HAR Dataset/features.txt", sep=" ")
        
        train_whole<-cbind(train_subj, train_feat, train_561)
        test_whole<-cbind(test_subj, test_feat, test_561)
        final1<-rbind(train_whole, test_whole)
        names(final1)<-c("subject", "activity", as.character(features$V2))
        
        # Step2. Extracts only the measurements on the mean and standard 
        # deviation for each measurement. 
        
        finalmean<-final1[,grep("mean\\(\\)", colnames(final1))] 
        finalstd<-final1[,grep("std\\(\\)", colnames(final1))]
        final2<-cbind(final1$subject, final1$activity, finalmean, finalstd)
        
        # Step 4. Appropriately labels the data set with descriptive variable names. 
        
        names(final2)[1:2] <-c("subject", "activity")
        names(final2) <- gsub("\\(\\)", "", names(final2)) # remove "()"
        names(final2) <- gsub("mean", "Mean", names(final2)) # capitalize M
        names(final2) <- gsub("std", "Std", names(final2)) # capitalize S
        names(final2) <- gsub("-", "", names(final2)) # remove "-" in column names 
        
        # Step3. Uses descriptive activity names to name the activities
        # in the data set
        
        activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
        activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
        substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8)) # capitalize u of Uptsairs
        substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8)) # capitalize d of Downstairs
        substr(activity[, 2], 1, 1) <- toupper(substr(activity[, 2], 1, 1)) # capitalize 1st letter
        
        actvlookup<-final2$activity
        for (i in 1:length(actvlookup)) {
                actvlookup[i]<-activity[final2$activity[i],2]
        }
        final2$activity<-actvlookup
        #table(actvlookup)       
        
        
        # Step 5. Creates a second, independent tidy data set with the average of each 
        # variable for each activity and each subject. 
        
        # create a matrix with number of rows the product of the subjects and the activities
        # and number of columns the columns of the final2 dataset
        # Names the parameters
        subjcount <- length(table(final2$subject))
        acticount <- dim(activity)[1]
        colscount <- dim(final2)[2]
        
        tidyData <- matrix(NA, nrow=subjcount*acticount, ncol=colscount) 
        tidyData <- as.data.frame(tidyData)
        colnames(tidyData) <- colnames(final2)
        iteration<-1
        for(i in 1:subjcount) {
                for(j in 1:acticount) {
                        tidyData[iteration, 1] <- i
                        tidyData[iteration, 2] <- activity[j, 2]
                        selectsubj <- i == final2$subject
                        selectact <- activity[j, 2] == final2$activity
                        tidyData[iteration, 3:dim(final2)[2]] <- colMeans(final2[selectsubj&selectact, 3:dim(final2)[2]])
                        iteration<-iteration+1
                }
        }
        
        
        write.table(tidyData, file="./UCI HAR Dataset/tidyData.txt", row.name=FALSE)
}