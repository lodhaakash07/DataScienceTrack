# Akash Lodha
# "Mon Sep  1 17:47:33 2014"
# Course - Data Analysis And Statistical Inference (Coursera)
# Lab 0 - Introduction to R and RStudio

# Getting the dataset for the lab
source("http://www.openintro.org/stat/data/present.R")  # Dataset stored in dataframe present

# Actual Codebook and questions -https://d396qusza40orc.cloudfront.net/statistics%2FDocuments%2FLabs%2FLab_Unit1_Lab0.pdf
## The present data set refers to the number of male and female births in the United States. The data set
##contains the data for all years from 1940 to 2002. 

# How many variables are included in this data set?
  ncol(present)
    # 63
    # 2
    # 4
    # 2002
    # 3 -ANS


# Question 2
# What command would you use to view just the counts of girls born?
    names(present)
    present$girls
#     present[girls]
#     $girls
#     present$girls -ANS
#     present$boys
#     present


# Question 3
# Is there an apparent trend in the number of girls born over the years? How would you describe it?
with(present,plot(year,girls))
    # There is an inital increase in the number of girls born but this number appears to level around 1960 and not change since then.
    # The number of girls born has decreased over time.
    # There appears to be no trend in the number of girls born from 1940 to 2002.
    # There is initially an increase in the number of girls born, which peaks around 1960. After 1960 there is a decrease in the number of girls born, but the number begins to increase again in the early 1970s. Overall the trend is an increase in the number of girls born in the US since the 1940s.
    # There is initially an increase in the number of girls born. This number peaks around 1960 and then after 1960 the number of girls born decreases.

# Question 4


x <- with(present,present[order(girls+boys),])
View(x)

# In what year did we see the most total number of births in the U.S.? Hint: You can refer to the help files or the R reference card (http://cran.r-project.org/doc/contrib/ Short-refcard.pdf) to find helpful commands.
    # 1957
    # 1961 
    # 1991   -ANS
    # 1960   


# Question 5
with(present,plot(year,boys/(boys+girls)))
# Now, make a plot of the proportion of boys over time, and based on the plot determine if the following statement is true or false: The proportion of boys born in the US has decreased over time.
    # True -ANS
    # False

# Question 6
table(present$boys < present$girls)
# Which of the following is true?
    # Every year there are more girls born than boys.
    # Every year there are more boys born than girls. -T
    # Half of the years there are more boys born, and the other half more girls born.

# Question 7

# Make a plot that displays the boy-to-girl ratio for every year in the data set. What do you see?
with(present,plot(year,boys/girls))
# There appears to be no trend in the boy-to-girl ratio from 1940 to 2002.
# There is initially an increase in boy-to-girl ratio, which peaks around 1960. After 1960 there is a decrease in the boy-to-girl ratio, but the number begins to increase in the mid 1970s.
# There is initially a decrease in the boy-to-girl ratio, and then an increase between 1960 and 1970, followed by a decrease.
# There is an inital decrease in the boy-to-girl ratio born but this number appears to level around 1960 and remain constant since then
# The boy-to-girl ratio has increased over time.


# Question 8
x<- present[order(abs(present$boys - present$girls)),]
x[dim(x)[1],]
# Calculate absolute differences between number of boys and girls born in each year, and determine which year out of the present data had the biggest absolute difference in the number of girls and number of boys born?
    # 1963 -ANS
    # 1946
    # 2002
    # 1940


  

