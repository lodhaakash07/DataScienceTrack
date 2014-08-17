# Akash Lodha
# Data Science Specialisation - Coursera
# Course 3 - Getting and cleading data

# Quiz 2








# Question 2
# The sqldf package allows for execution of SQL commands on R data frames. We will use the sqldf package to practice the queries we might send with the dbSendQuery command in RMySQL. Download the American Community Survey data and load it into an R object called
# 
# acs
# 
# 
# 
library(RMySQL)

# 
#   Which of the following commands will select only the data for the probability weights pwgtp1 with ages less than 50?
#     sqldf("select pwgtp1 from acs")
#     sqldf("select * from acs where AGEP < 50")
#     sqldf("select pwgtp1 from acs where AGEP < 50")
#     sqldf("select * from acs where AGEP < 50 and pwgtp1")



# uestion 4
# How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page:
#   
url <- "http://biostat.jhsph.edu/~jleek/contact.html"
file <- download.file(url,method="curl",destfile="quiz2Q4.html")
data <- readLines("quiz2Q4.html")
sapply(data[c(10,20,30,100)],nchar)
# 
# (Hint: the nchar() function in R may be helpful)
#     45 31 7 31
#     43 99 8 6
#     45 92 7 2
#     45 31 7 25 -ANS
#     45 31 2 25
#     45 0 2 2
#     43 99 7 25




  


# Question 5
# Read this data set into R and report the sum of the numbers in the fourth column.
# 
file <-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for",destfile="quiz2Q5.for",method="curl")
  data <- readLines("quiz2Q5.for",)
  data <- gsub("     ",",",data)
  data <- gsub("-"," ",data)
  data <- gsub(" ",",",data)
  writeLines(data,"quiz2Q5r.csv")
  data <- read.csv("q5r.csv",skip = 4)
  data <- data[,c(-1,-2)]
  names(data) <- NULL
  for( i in 1:ncol(data)) {
    print(sum(data[[i]]))
  }

# data <- data[,c(4)]
# a <- vector()
# for( i in data) {
#    if(grepl("-",i) == T) {
#      i <- sub("-"," ",i)
# #     i <- strsplit(i," ")
# #     a <- c(a, as.numeric(i[[1]][1]))
#      i <- strsplit(i," ")
#      a <- c(a, as.numeric(i[[1]][1]) - as.numeric(i[[1]][2])) 
# #    # i <- sub(" ","-",i)
#    } else {
#      i <- strsplit(i," ")
#      a <- c(a, as.numeric(i[[1]][1]))# as.numeric(i[[1]][2])) 
#    }     
# }
# 
# sum(a)

# 
# Original source of the data: http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for
# 
# (Hint this is a fixed width file format)
#     36.5
#     222243.1
#     28893.3
#     101.83
#     35824.9
#     32426.7 -ANS
