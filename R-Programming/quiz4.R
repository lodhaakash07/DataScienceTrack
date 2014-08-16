# Akash Lodha
# Data Science Specialisation - Coursera
# Course 2 - R Programming

# Quiz -4

# Question 1
# What is produced at the end of this snippet of R code?

set.seed(1)
rpois(5, 2)

#     A vector with the numbers 1, 4, 1, 1, 5
#     It is impossible to tell because the result is random
#     A vector with the numbers 1, 1, 2, 4, 1 -ANS
#     A vector with the numbers 3.3, 2.5, 0.5, 1.1, 1.7
# 
# 
# Question 2
# What R function can be used to generate standard Normal random variables?
    # pnorm
    # rnorm -ANS
    # dnorm
    # qnorm


# Question 3
# When simulating data, why is using the set.seed() function important?
    # It ensures that the random numbers generated are within specified boundaries.
    # It ensures that the sequence of random numbers starts in a specific place and is therefore reproducible. -ANS
    # It can be used to generate non-uniform random numbers.
    # It ensures that the sequence of random numbers is truly random.


# Question 4
# Which function can be used to evaluate the inverse cumulative distribution function for the Poisson distribution?
    # qpois -ANS
    # rpois
    # ppois
    # dpois

# Question 5
# What does the following code do?

set.seed(10)
x <- rbinom(10, 10, 0.5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e

#       Generate uniformly distributed random data
#       Generate random exponentially distributed data
#       Generate data from a Normal linear model -ANS
#       Generate data from a Poisson generalized linear model


# Question 6
# What R function can be used to generate Binomial random variables?
#     rbinom -ANS
#     dbinom
#     qbinom
#     pbinom

# 
# Question 7
# What aspect of the R runtime does the profiler keep track of when an R expression is evaluated?
    # the global environment
    # the function call stack -ANS
    # the working directory
    # the package search list


# Question 8
# Consider the following R code

library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)

# (Assume that y, x1, and x2 are present in the workspace.) Without running the code, what percentage of the run time is spent in the 'lm' function, based on the 'by.total' method of normalization shown in 'summaryRprof()'?
# 23%
# 50%
# 100%  -ANS
# It is not possible to tell


# Question 9
# When using 'system.time()', what is the user time?
    # It is the time spent by the CPU waiting for other tasks to finish
    # It is the "wall-clock" time it takes to evaluate an expression
    # It is the time spent by the CPU evaluating an expression -ANS
    # It is a measure of network latency


# Question 10
# If a computer has more than one available processor and R is able to take advantage of that, then which of the following is true when using 'system.time()'?
      # elapsed time is 0
      # user time is 0
      # user time is always smaller than elapsed time
      # elapsed time may be smaller than user time -ANS
