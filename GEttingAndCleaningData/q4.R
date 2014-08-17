# Akash Lodha
# Data Science Specialisation - Coursera
# Course 3 - Getting and cleading data

# Quiz 4

# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
#   
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
file <- download.file(url,destfile="quiz4Q1.csv",method="curl")
data <- read.csv("quiz4Q1.csv")
a<-strsplit(names(data),"wgtp")
a[123]
# 
# and load the data into R. The code book, describing the variable names is here:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# Apply strsplit() to split all the names of the data frame on the characters "wgtp". What is the value of the 123 element of the resulting list?
# "wgtp" "15"
# "" "15"
# "w" "15" -ANS
# "15"


# Question 2
# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#   
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
file <- download.file(url,destfile="quiz4Q2.csv",method="curl")
data <- read.csv("quiz4Q2.csv",skip=4,nrow=190)
data1 <- data[,"X.4"]
data1 <- gsub(",","",data1)
mean(as.numeric(data1),na.rm=T)
# Remove the commas from the GDP numbers in millions of dollars and average them. What is the average?
# 
# Original data sources: http://data.worldbank.org/data-catalog/GDP-ranking-table
    # 377652.4 -ANS
    # 387854.4
    # 381615.4
    # 379596.5


# Question 3
countryNames<- as.character(data[,"X.3"])
# In the data set from Question 2 what is a regular expression that would allow you to count the number of countries whose name begins with "United"? Assume that the variable with the country names in it is named countryNames. How many countries begin with United?
#      grep("^United",countryNames), 3 -ANS
#      grep("^United",countryNames), 4
#      grep("*United",countryNames), 5
#     grep("United$",countryNames), 3


# Question 4
# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
data1 <- read.csv("quiz3Q3.1.csv",skip=4,nrows=190)
# Load the educational data from this data set:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv
data2 <- read.csv("quiz3Q3.2.csv")
# Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, how many end in June?
data <- merge(data1,data2,by.x="X",by.y="CountryCode")
table(grepl("end: June",data$Special.Notes))

# Original data sources:
#   http://data.worldbank.org/data-catalog/GDP-ranking-table
# http://data.worldbank.org/data-catalog/ed-stats
    # 7
    # 31
    # 16
    # 13 -ANS



# Question 5
# You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times the data was sampled.
# 
library(quantmod)
library(lubridate)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
a <- sampleTimes[grep("2012",sampleTimes)]
length(a)
j <-0
for( i in a) {
  if(wday(ymd(as.Date(i)))==2) j<-j+1
}
j
# 
# How many values were collected in 2012? How many values were collected on Mondays in 2012?
    # 252, 47
    # 252, 50
    # 250, 51
    # 250, 47 -ANS
