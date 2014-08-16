# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Programming Assignment 1
# Part 1

## This function returns the pollutant alone removing all the na values
dd <- function(name) {
  data <- read.csv(name)
  data <- data[complete.cases(data),]
  nrow(data)
}


complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  files <- list.files(directory)
  a <- sapply(paste("./",directory,"/",files[id],sep=""),dd)
  names(a) <- NULL
  data.frame(id,nobs=a)
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'iad' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}