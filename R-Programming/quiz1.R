# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Quiz 1

quiz_data <- download.file("https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fquiz1_data.zip",destfile="quiz1.zip",method="curl")
# Extract the zip file

data <- read.csv("hw1_data.csv")

# Q1
# R was developed by statisticians working at
#   Microsoft
#   Harvard University
#   StatSci
#   The University of Auckland -ANS

# Q2
# The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
#   The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
#   The freedom to study how the program works, and adapt it to your needs.
#   The freedom to redistribute copies so you can help your neighbor.
#   The freedom to prevent users from using the software for undesirable purposes. -ANS

# Q3
# In R the following are all atomic data types EXCEPT
#   complex
#   numeric
#   integer
#   list - ANS

# Q4
class(x <- 4)
# If I execute the expression x <- 4 in R, what is the class of the object `x' as determined by the `class()' function?
#   real
#   numeric -ANS
#   list
#   vector

#Q5
x <- c(4, "a", TRUE)
class(x)
  # What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
  # integer
  # character -ANS
  # logical
  # numeric

#Q6
x <- c(1,3, 5) 
y <- c(3, 2, 10)
dim(cbind(x,y))
# If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?
# a 2 by 2 matrix
# a matrix with 2 columns and 3 rows -ANS
# a vector of length 3
# a 2 by 3 matrix

# Q7
# A key property of vectors in R is that
#   elements of a vector can only be character or numeric
#   elements of a vector can be of different classes
#   elements of a vector all must be of the same class -ANS
#   a vector cannot have have attributes like dimensions

# Q8
x <- list(2, "a", "b", TRUE)
x[[2]]
# Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[2]] give me?
#   a character vector containing the letter "a". -ANS
#   a list containing character vector with the letter "a".
#   a list containing a character vector with the elements "a" and "b".
#   a character vector with the elements "a" and "b".

#Q9
x <- 1:4 and y <- 2:3
x+y
# Suppose I have a vector x <- 1:4 and y <- 2:3. What is produced by the expression x + y?
#   an integer vector with the values 3, 5, 5, 7. -ANS
#   a numeric vector with the values 1, 2, 5, 7.
#   an integer vector with the values 3, 5, 3, 4.
#   an error.

#Q10
x <- c(17, 14, 4, 5, 13, 12, 10)
# Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
#   x[x < 10] <- 4
#   x[x >= 11] <- 4 -ANS
#   x[x >= 10] <- 4
#   x[x > 10] == 4

#Q11
colnames(data)
# In the dataset provided for this Quiz, what are the column names of the dataset?
#   1, 2, 3, 4, 5, 6
#   Ozone, Solar.R, Wind, Temp, Month, Day  - ANS
#   Ozone, Solar.R, Wind
#   Month, Day, Temp, Wind

#Q12
head(data,n=2)
# Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
#     
#     Ozone Solar.R Wind Temp Month Day
#     1     9      24 10.9   71     9  14
#     2    18     131  8.0   76     9  29
#     
#     Ozone Solar.R Wind Temp Month Day  -ANS
#     1    41     190  7.4   67     5   1
#     2    36     118  8.0   72     5   2
#     
#     Ozone Solar.R Wind Temp Month Day
#     1    18     224 13.8   67     9  17
#     2    NA     258  9.7   81     7  22
#     
#     Ozone Solar.R Wind Temp Month Day
#     1     7      NA  6.9   74     5  11
#     2    35     274 10.3   82     7  17


#Q13
nrow(data)
# How many observations (i.e. rows) are in this data frame?
  # 160
  # 45
  # 153 -ANS
  # 129


# Question 14
tail(data,n=2)
# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
#   
#   Ozone Solar.R Wind Temp Month Day
#   152    11      44  9.7   62     5  20
#   153   108     223  8.0   85     7  25
#   
#   Ozone Solar.R Wind Temp Month Day  -ANS
#   152    18     131  8.0   76     9  29
#   153    20     223 11.5   68     9  30
#   
#   Ozone Solar.R Wind Temp Month Day
#   152    34     307 12.0   66     5  17
#   153    13      27 10.3   76     9  18
#   
#   Ozone Solar.R Wind Temp Month Day
#   152    31     244 10.9   78     8  19
#   153    29     127  9.7   82     6   7

# Question 15
data[47,"Ozone"]
# What is the value of Ozone in the 47th row?
#   34
#   63
#   21 -ANS
#   18


# Question 16
table(is.na(data$Ozone))
# How many missing values are in the Ozone column of this data frame?
#   37 -ANS
#   78
#   9
#   43

# Question 17
mean(data$Ozone,na.rm=T)
# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
#     18.0
#     42.1 -ANS
#     53.2
#     31.5

# Question 18
a<-data[(data$Ozone >31 & data$Temp>90),]
mean(a$Solar.R,na.rm=T)
# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
#   185.9
#   205.0
#   212.8 -Ans
#   334.0


# Question 19
mean(data[(data$Month==6),"Temp"],na.rm=T)
# What is the mean of "Temp" when "Month" is equal to 6?
#   90.2
#   75.3
#   79.1 -ANs
#   85.6


# Question 20
max(data[(data$Month==5),"Ozone"],na.rm=T)
# What was the maximum ozone value in the month of May (i.e. Month = 5)?
#   100
#   18
#   115 -ANS
#   97
# 








