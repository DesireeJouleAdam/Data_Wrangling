library(tidyr)
library(dplyr)

# If you wanted to examine how tea prices have changed over time, 
# you wouldn’t be able to do it in the dataset’s native format, which is long.
# So you need to use the function t(). This falls under the tidyr

tea1 <- t(tea)

# Voila! Data has been flipped and ready for longitudinal statistical analysis.

# no names on the columns. This is because when you use t(), 
# it changes your data from a data frame into a matrix. You can determine this 
# by using the class() function on tea1:

class(tea1)

# The result is "matrix"

# It can easily be turned into a data frame using the function as.data.frame():

tea2 <- as.data.frame(tea1)

# And the class() function will help you verify that things went as planned:

class(tea2)

# With the result of: "data.frame"

# If you wanted to rename them, you could use the gsub() function within the 
# names() function to do so. This behaves in a similar manner to the 
# lambda x function in Python.

names(tea2) <- gsub("V", "Year", names(tea2))