# Import packages
library(tidyr)
library(dplyr)

# Import Data Sets and View

# What is the average age of those who use each web browser type?

airbnb_test_users2 <- aggregate(age~first_browser, airbnb_test_users, median)

# What is the total signup_flow for each device?

airbnb_test_users3 <- aggregate(signup_flow~first_device_type, airbnb_test_users, sum)

# Add 'country' information included in the new data set. 
# Import airbnb_sample_submission and view, looking for common variables which in this
# case is 'id'. Use merge() function and select original data set and the new one.
# In case there is non-matching 'id' data, I've added all=TRUE.

airbnb_test_users4 <- merge(airbnb_test_users, airbnb_sample_submission, by=c("id"), all=TRUE)

# 'country' is now included in the data set 

# Add additional users to the test file from a new data set airbnb_users. 
# Import data set and view looking to ensure column naming and info are the same.
# All columns are the same except the last one where 'country' vs 
# 'country_destination'. I tried a number of interesting things 
# (which all resulted in errors) until I decided to rename the column in one data set as below.

names(airbnb_users)[names(airbnb_users) == "country_destination"] <- "country"

# Once the column name change was confirmed, I used rbind to 'append'

airbnb_test_users6 <- rbind(airbnb_test_users4, airbnb_users)

# Confirming added row, using str(dataFrame): 
# str(airbnb_test_users4) = 62,096
# str(airbnb_users) = 213,451 
# With added rows str(airbnb_test_users6) = 275,547
