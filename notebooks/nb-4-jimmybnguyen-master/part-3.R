# Part 3
# Read the poisson-description.pdf overview, then
# Implement the Poisson regression described in this tutorial:
# https://stats.idre.ucla.edu/r/dae/poisson-regression/
# Make sure to include comments describing what your code does, 
# and how you can interpret the results

require(ggplot2)
require(sandwich)
require(msm)

# Number of awards earned by students at one high school
# Predictors of # of awards include type of program and their score on their final math exam


# Display summary statistics by program type 


# Performs a Poisson model analysis on the data and stores it in a m1 object 


# Calculates the 95% CI using the parameter estimates and their robust standard errors from m1

# The coefficent for math is 0.07, which means the expected log count for one-unit increase in math is 0.07
# The expected log count for prog = "Academic" increases by 1.1 


# Performs a goodness of fit test for the overall model with the residual deviance

## test model differences with chi square test


# Uses Delta method to compute standard error for the cinident rate ratios 

# Since the estimate for progAcademic is 2.96, this means that the incident rate for 
# the academic group is 2.96 times the incident rate for the reference group (General)
# Similarily, the incident rate for the Vocational group is 1.45 times the incidente rate for the
# reference group. The percent change in the incident rate of num_awards is a 7% increase in every 
# unit increase in math


# Use predict function to look at expected marginal means 


# The predicted # of events for lvl 1 of prog is about .21, for lvl 2 its higher at .62, at lvl 3 
# it's about .31. So students in the academic program (prog = 2) are more likely to get awards


# Graphs the predicted # of events. This graph will clearly show that the most awards are predicted
# for those in the academic program (prog = 2), especially for students with high math scores 

