library(tidyr)
library(dplyr)

# Import the dataset and view

# Transpose the data and see if it will be better/easier to view

energy1 <- t(energy)

# The data is flipped into longitudinal view

# Changing from a data frame into a matrix 

class(energy1)

# Change matrix into dataframe

energy2 <- as.data.frame(energy1)

# Verify dataframe
class(energy2)

#Result is data.frame

# Rename columns using gsub function

names(energy2) <- gsub("V", "Year", names(energy2))

# Columns now labelled with 'Year'