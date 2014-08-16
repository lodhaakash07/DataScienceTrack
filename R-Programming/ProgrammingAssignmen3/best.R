# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Programming Assignment 3
# Part 1


best <- function(state, outcome) {
  ## Read outcome data
  ## Analysing the data we see na values are = "Not Available"
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
  
  ## Return hospital name in that state with lowest 30-day death
  
  ## Lets first take only that state and the particular outcome
  
  data <- data[(data$State==state),c("name",outcome)]
  data <- data[order(data[outcome],data$name),]
  data[[1]][[1]]
  ## now return the minimum value
  ## rate
}