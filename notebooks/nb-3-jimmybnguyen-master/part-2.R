# Part 2: Asses grade differences between men and women in an Informartics course

# Set up
library(dplyr)
library(tidyr)
library(ggplot2)
library(reshape2)

# Load data

# How many students are there of each sex?
# Calculate averages for each assignment for each sex 
# Hint: use `summarize_all`

# Create a scatter plot showing the average female score (x) v.s. male score (y)
# Add a 45 degree line to the graph
# Hint: this requires reshaping

# Is there an observed and significant different by sex?
#   There is not an observed and significant different by sex. Since the p-value is 0.8438, we cannot
#   negate the null hypothesis stating that there is a significant difference in grades between male and female. 

# Now run a t-test on each assignment (feel free to use a loop)

# Gets the assignment column


# Make histograms of a3 togther

# Was assignment 4 harder than assignment 5 (plot the difference)
#   Assignemnt 4 was not harder than assignment 5
