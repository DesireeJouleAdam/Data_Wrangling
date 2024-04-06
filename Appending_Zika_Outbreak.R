# Import packages

library(tidyr)
library(dplyr)

# Import dataset and view

# COnfirmed the same variables. In this case where I don't need to add any
# variables I will append the datasets

ZikaColomUS <- rbind(ZikaColombia, ZikaUS)

# Confirm the join

str(ZikaColomUS)

# Total number: ZikaColombia rows 1,155 + ZikaUS 54 = 1,209 combined