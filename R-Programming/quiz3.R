# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Quiz -3


# Question 1
# Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:
#   
library(datasets)
data(iris)

A description of the dataset can be found by running

?iris

#There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica? (Please only enter the numeric result and nothing else.)
mean(data[(data$Species=="virginica"),"Sepal.Length"],na.rm=T)


# Question 2
colMeans(iris)
# Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
  # colMeans(iris) - 
  # apply(iris, 2, mean)
  # rowMeans(iris[, 1:4])
  # apply(iris[, 1:4], 2, mean) -ANS


# Question 3
# Load the 'mtcars' dataset in R with the following code

library(datasets)
data(mtcars)

# There will be an object names 'mtcars' in your workspace. You can find some information about the dataset by running

?mtcars
tapply(mtcars$mpg, mtcars$cyl, mean)
# 
# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
#     tapply(mtcars$cyl, mtcars$mpg, mean)
#     mean(mtcars$mpg, mtcars$cyl)
#     split(mtcars, mtcars$cyl)
#     tapply(mtcars$mpg, mtcars$cyl, mean) -aNS


# Question 4
# Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
a <-tapply(mtcars$hp,mtcars$cyl,mean)
a[3] - a[1]

# 
# Question 5
# If you run

debug(ls)

# what happens when you next call the 'ls' function?
# Execution of 'ls' will suspend at the beginning of the function and you will be in the browser. -ANS
# The 'ls' function will return an error.
# The 'ls' function will execute as usual.
# You will be prompted to specify at which line of the function you would like to suspend execution and enter the browser.
# 