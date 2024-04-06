library(tidyr)
library(dplyr)

# Two data sets have the varianle name perfomance_id in common
# which acts as a unique key for the data. To combine them:

# call the merge() function, then list in the parentheses as arguments 
# the two datasets you want to merge together, then add an additional 
# argument of by= to create a vector of the variable or variables that 
# you want to merge by. This should be a variable that is unique and 
# occurs in both datasets.

IceSkating1 <- merge(performances, judgesAspectsUnique, by=c("performance_id"))

str(IceSkating1)

# Merge as an Outer Join
# Note that a merge doesn't include any data for non-matching performance_id
# data! To solve, add all=TRUE as an argument to a merge statement;

IceSkating2 <- merge(performances, judgesAspectsUnique, by=c("performance_id"), all=TRUE)
# Making sire to get cases from both datasets

# Merge with Different ID Column Names

IceSkating2 <- merge(performances, judgesAspectsUnique, by.x=c("performance_id"), by.y=c("id_performance"))