# Akash Lodha
# Data Science Specialisation - Coursera
# Course 3 - Getting and cleading data

# Quiz 1


# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
#   
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
file <- download.file(url,destfile="quiz1Q1.csv",method="curl")
data <- read.csv("quiz1Q1.csv")
table(data$VAL >=24)
# 
# and load the data into R. The code book, describing the variable names is here:
#   
#https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# How many properties are worth $1,000,000 or more?
#       25
#       53 -ANS
#       164
#       24



# Question 2
# Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate?
# Each tidy data table contains information about only one type of observation.
# Each variable in a tidy data set has been transformed to be interpretable.
# Tidy data has one variable per column. -ANS
# Tidy data has no missing values.



# Question 3
# Download the Excel spreadsheet on Natural Gas Aquisition Program here:
library(xlsx) 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
file <- download.file(url,destfile="quiz1Q3.xlsx",method="curl")
dat <- read.xlsx("quiz1Q3.xlsx",sheetIndex=1,rowIndex=18:23,colIndex=7:15)
# 
# Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
#   
#   dat 
# 
# What is the value of:
#   
sum(dat$Zip*dat$Ext,na.rm=T) 
# 
# (original data source: http://catalog.data.gov/dataset/natural-gas-acquisition-program)
#     184585
#     33544718
#     0
#     36534720 - ANS



# Question 4
# Read the XML data on Baltimore restaurants from here:
#   
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
file <- download.file(url,method="curl",destfile="quiz1Q4.xml")
data <- xmlTreeParse("quiz1Q4.xml",useInternalNodes=T)
root<-xmlRoot(xmlRoot(data)
              a <- xpathSApply(root,"//zipcode",xmlValue)
              table(a=="21231")
              # 
              # How many restaurants have zipcode 21231?
              # 181
              # 17
              # 127 -ANS
              # 28
              
              