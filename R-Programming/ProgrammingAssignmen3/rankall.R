#Programming Assignment 3
# ranking hospital

rank <- function(data,num)
{
  a <- order(data[[3]],data[[1]])
  data <- data[a,]
  result <- data[nrow(data),1]
  if(class(num) == "numerical" && num > nrow(data)) {
    result <- "NA"
  } else if(num == "best") {
    result <- data[1,1]
  } else if(num == "worst") {
    result <- data[nrow(data),1]
  } else {
    result <- data[num,1]
  }
  result 
}

rankall <- function(outcome, num = "best") {
  data <- read.csv("outcome-of-care-measures.csv",colClasses="character",na.strings = "Not Available")
  data <- data[,c(2,7,11,17,23)]
  colnames <- c("names","states","heart attack","heart failure","pneumonia")
  names(data) <- colnames
  
 if(outcome %in% colnames==F) {
    stop("invalid outcome")
  }
  
  if(outcome == "heart attack") {
    data <- data[,c(1,2,3)]
  } else if(outcome == "heart failure") {
    data <- data[,c(1,2,4)]
  } else {
    data <- data[,c(1,2,5)]
  }
 
 colnames <- c("names","states","prob")
 data <- data[complete.cases(data),]
 names(data) <- colnames
 data$prob <- as.numeric(data$prob)
 result <- lapply(split(data,data$states),rank,num)
 s <- names(result)
  h<-sapply(result,as.character)
 data.frame(hospital=h,state=s)
 # head(hospital)
}

