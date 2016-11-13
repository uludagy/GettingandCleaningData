runAnalysis <- function(){
      
      ##Reading Features and ActivityLabels vector
      features <- read.csv("features.txt", sep = "", header = FALSE)[2]
      activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)
      
      ##Reading Sets
      testSet <- read.csv("test/X_test.txt", sep = "", header = FALSE)
      trainSet <- read.csv("train/X_train.txt", sep = "", header = FALSE)
      mergedSet <- rbind(testSet,trainSet)        
      
      ##Reading Movement
      testMoves <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
      trainMoves <- read.csv("train/Y_train.txt", sep = "", header = FALSE)
      mergedMoves <- rbind(testMoves, trainMoves)
      
      ##Reading PersonID
      testPerson <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
      trainPerson <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
      mergedPerson <- rbind(testPerson, trainPerson)
      
      ##Extracting columns which includes measurements
      names(mergedSet) <- features[ ,1]
      mergedSet <- mergedSet[ grepl("std|mean", names(mergedSet), ignore.case = TRUE) ] 
      
      #Descriptive ActivityName analysis
      mergedMoves <- merge(mergedMoves, activities, by.x = "V1", by.y = "V1")[2]
      mergedSet <- cbind(mergedPerson, mergedMoves, mergedSet)
      names(mergedSet)[1:2] <- c("PersonID", "Activities")
      
      
      ##Tidying mergedSet
      group_by(mergedSet, PersonID, Activities) %>%
            summarise_each(funs(mean))
      
}