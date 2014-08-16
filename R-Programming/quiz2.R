# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Quiz -2


# Question 1
# Suppose I define the following function in R

cube <- function(x, n) {
  x^3
}
# 
# What is the result of running

cube(3)

# in R after defining this function?
#     A warning is given with no value returned.
#     The number 27 is returned - ANS
#     An error is returned because 'n' is not specified in the call to 'cube'
#     The users is prompted to specify the value of 'n'.


# Question 2
# The following code will produce a warning in R.

x <- 1:10
if(x > 5) {
  x <- 0
}

# Why?
# There are no elements in 'x' that are greater than 5
#   'x' is a vector of length 10 and 'if' can only test a single logical statement.
#   The syntax of this R expression is incorrect. -ANS
#   You cannot set 'x' to be 0 because 'x' is a vector and 0 is a scalar.
#   The expression uses curly braces.


# Question 3
# Consider the following function

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
# 
# If I then run in R

z <- 10
f(3)

# What value is returned?
    # 10 -ANS
    # 4
    # 7
    # 16


# Question 4
# Consider the following expression:
  
  x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y

# What is the value of 'y' after evaluating this expression?
#   3
#   NA
#   10 -ANS
#   5


# Question 5
# Consider the following R function

h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}

# Which symbol in the above function is a free variable?
#   f -ANS
#   z
#   d
#   L
#   g


# Question 6
# What is an environment in R?
  # a list whose elements are all functions
  # a special type of function
  # an R package that only contains data
  # a collection of symbol/value pairs -ANS


# Question 7
# The R language uses what type of scoping rule for resolving free variables?
  # global scoping
  # dynamic scoping
  # compilation scoping
  # lexical scoping -ANS


# Question 8
# How are free variables in R functions resolved?
  # The values of free variables are searched for in the environment in which the function was defined -ANS
  # The values of free variables are searched for in the environment in which the function was called
  # The values of free variables are searched for in the global environment
  # The values of free variables are searched for in the working directory


# Question 9
# What is one of the consequences of the scoping rules used in R?
  # All objects can be stored on the disk
  # R objects cannot be larger than 100 MB
  # All objects must be stored in memory -ANS
  # Functions cannot be nested

# Question 10
# In R, what is the parent frame?
  # It is the package search list
  # It is always the global environment
  # It is the environment in which a function was called -ANS
  # It is the environment in which a function was defined
