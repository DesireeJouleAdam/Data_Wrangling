library(tidyr)
library(dplyr)

# Appending: The second way to join datasets is to append them. 
# The function is rbind() in R, which will just add cases (rows) to your dataset. 

muscles3 <- rbind(muscles1, muscles2)

str(muscles3)
