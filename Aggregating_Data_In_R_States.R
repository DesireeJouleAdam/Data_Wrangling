# Import packages

library(tidyr)
library(dplyr)

# Import dataset and view

# Current data set has multiple states listed not grouped

states2 <- aggregate(Cases~State, states, sum)

# As always, to be safe, you want to save a new data set in case 
# something weird happens or you want to go back to the original, 
# so you’ll type in the new data set name before the arrow, then use the 
# function aggregate(). The variable that goes before the ~ (pronounced tilde) 
# is the variable that you want to perform the operation on, and the variable 
# that comes after is what you want to group the first variable by. 
# Then you specify the name of the old data set, and the operation you want to use.

# Operations for Aggregate

states3 <- aggregate(Cases~State, states, mean)
states4 <- aggregate(Cases~State, states, median)
states5 <- aggregate(Cases~State, states, min)
states6 <- aggregate(Cases~State, states, max)