#Week- 2 
# Programming Assignment

corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  corre <- vector()
  files <- list.files(paste(c("./",directory),collapse=""))
  for(i in files){
    path <- paste(c("./",directory,"/",i),collapse="")
    data <- read.csv(path)
    data <- data[complete.cases(data),]
    if(nrow(data) >= threshold)
       corre<-c(corre,cor(x=data[,"sulfate"],y=data[,"nitrate"],use="everything"))
  }
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  corre
  ## Return a numeric vector of correlations
}
