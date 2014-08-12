gacd_cp<-function(){
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
        names(final1)<-c("subject", "feature", as.character(features$V2))
        finalmean<-final1[,grep("mean", colnames(final1))] 
        finalstd<-final1[,grep("std", colnames(final1))]
        final2<-cbind(final1$subject, final1$feature, finalmean, finalstd)
        tidyData<-cbind(final1$subject, final1$feature, finalmean)
	names(tidyData)[1:2]<-c("subject", "feature")
        write.table(tidyData, file="./UCI HAR Dataset/tidyData.txt", row.name=FALSE)
}