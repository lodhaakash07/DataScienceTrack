# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Programming Assignment 3
# Part 2


rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv",colClasses="character",na.strings="Not Available")
  ## We only need column 2,7,11,17,23
  data <- data[complete.cases(data),c(2,7,11,17,23)]
  ## Colnames are long.. Lates change that
  colnames(data) <- c("name","State","heartattack","heartfailure","pneumonia")
  ## I dont like spaces in aything,lets merge space in outcome
  outcome <- sub(" ","",outcome)
  ## Check that state and outcome are valid
  if(state %in% data$State == F) {
    stop("invalid state")
  }
  if(outcome %in% names(data)==F) {
    stop("invalid outcome")
  }
  
  ## Return hospital name in that state with the given rank
  ## Lets first take only that state and the particular outcome
  
  data <- data[(data$State==state),c("name",outcome)]
  data[outcome] <- as.numeric(data[[outcome]])
  data <- data[order(data[outcome],data$name),]
  
  
  ## 30-day death rate
  
  a<- if(num == "best") {
    data[1,"name"]
  } else if(num == "worst") {
    data[nrow(data),"name"]
  } else if( nrow(data) < num ) {
    "NA"
  } else {
    data[num,"name"]
  }
      
  a
}