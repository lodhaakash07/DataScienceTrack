# Akash Lodha
# Data Science Specialisation - Coursera
# Course 3 - Getting and cleading data

# Quiz 3

# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
#   
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
file <- download.file(url,destfile="quiz3Q1.csv",method="curl")
data <- read.csv("quiz3Q1.csv")
data <- data[which(data$ACR>=3 & data$AGS >=6 ),]
View(data)
# 
# and load the data into R. The code book, describing the variable names is here:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE. which(agricultureLogical) What are the first 3 values that result?
#   59, 460, 474
#   153 ,236, 388
#   25, 36, 45
#   125, 238,262 -ANS


# 
# Question 2
# Using the jpeg package read in the following picture of your instructor into R
library(jpeg)
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
file <- download.file(url,destfile="quiz3Q2.jpg",method="curl")
data <- readJPEG("quiz3Q2.jpg",native=T)
quantile(data,prob=c(.3,.8),na.rm=T)
# 
# Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? (some Linux systems may produce an answer 638 different for the 30th quantile)
#     -15259150 -10575416 - ANS
#     -14191406 -10904118
#     10904118 -594524
#     -15259150 -594524



# Question 3
# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#   
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
file <- download.file(url,destfile="quiz3Q3.1.csv",method="curl")
data1 <- read.csv("quiz3Q3.1.csv",skip=4,nrows=190)
# 
# Load the educational data from this data set:
#   
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
file <- download.file(url,destfile="quiz3Q3.2.csv",method="curl")
data2 <- read.csv("quiz3Q3.2.csv")

data <- merge(data1,data2,by.x="X",by.y="CountryCode")
nrow(data)
aa <- data1[order(data1$X.1,decreasing=T),]
aa[13,4]

# 
# Match the data based on the country shortcode. How many of the IDs match? Sort the data frame in descending order by GDP rank (so United States is last). What is the 13th country in the resulting data frame?
# 
# Original data so,dataurces:
#   http://data.worldbank.org/data-catalog/GDP-ranking-table
# http://data.worldbank.org/data-catalog/ed-stats
#     234, St. Kitts and Nevis 
#     190, St. Kitts and Nevis
#     234, Spain
#     189, St. Kitts and Nevis-ANS
#     190, Spain
#     189, Spain



# Question 4



data <- data[,c("X.1","Income.Group")]
aa <- data[data$Income.Group== "High income: nonOECD","X.1"]
mean(aa,na.rm=T)
aa <- data[data$Income.Group== "High income: OECD","X.1"]
mean(aa,na.rm=T)
# What is the average GDP ranking for the "High income: OECD" and "High income: nonOECD" group?
#     32.96667, 91.91304 -ANS
#     133.72973, 32.96667
#     30, 37
#     23, 45
#     23, 30
#     23.966667, 30.91304

# Question 5

 
  
# Cut the GDP ranking into 5 separate quantile groups. Make a table versus Income.Group. How many countries are Lower middle income but among the 38 nations with highest GDP?
#     12
#     13
#     18
#     5 -ANS

