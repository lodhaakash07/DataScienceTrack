# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Programming Assignment 1
# Part 1


## This function returns the pollutant alone removing all the na values
dd <- function(name,pollutant) {
  data <- read.csv(name)
  nas <- is.na(data[[pollutant]])
  data <- data[!nas,pollutant]
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  files <- list.files(directory)
  # We see that in spec data files are names as 001.csv 002.csv
  # In id its going to be like 1,2,3 etc. So taking care of that
  
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  # GEt all the pollutant data from all the id
  a <- sapply(paste("./",directory,"/",files[id],sep=""),dd,pollutant)
  names(a) <- NULL
  
   data <- vector()
   for( i in a) {
     data <- c(data,i)
   }
   mean(data)
 # mean(poll,na.rm=T)
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}
