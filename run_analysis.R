library(dplyr)

# test_data_x <- read.table("./UCI HAR Dataset/test/X_test.txt", sep=" ", header=FALSE, stringsAsFactors=F, fill = TRUE)
test_data_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_data_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_data_x_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

train_data_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_data_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_data_x_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

features <- read.table( "./UCI HAR Dataset/features.txt")

colnames(test_data_x) <- features$V2
colnames(train_data_x) <- features$V2

test_res <- cbind(test_data_x_subject, test_data_y)
train_res <- cbind(train_data_x_subject, train_data_y)

test_res <- cbind(test_res, test_data_x)
train_res <- cbind(train_res, train_data_x)

res <- rbind(test_res, train_res)
names(res)[1] <- "subject"
names(res)[2] <- "activity_int"

res <- res[ ,!duplicated(colnames(res))]
res <- select(res, subject, activity_int, contains("mean"), contains("std"))


res <- na.omit(res)

res<-mutate(res, activity = ifelse(activity_int == 1, "walking", 
                                   ifelse(activity_int == 2, "walking_upstairs", 
                                          ifelse(activity_int == 3, "walking_downstairs", 
                                                 ifelse(activity_int == 4, "sitting", 
                                                        ifelse(activity_int == 5, "standing", "laying"))))))

res <- select(res, 1, 89, 3:88)


clean_res <- group_by(res, subject, activity)
clean_res <- summarise_each(clean_res, funs(mean))

write.table(clean_res, file = "clean.txt", row.name=FALSE)