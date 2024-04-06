# Load in libraries
library("ggplot2")
library("lattice")

# Import Data set and view

# Create a Histogram with 7 bars

ggplot(power_boats, aes(x=power_boats)) + 
  geom_histogram(binwidth = 30, bins = 7) + 
  ggtitle("Histogram of Registered Power Boats in Florida") + 
  ylab("Count")

# Observation:
# Didn't quite get the number of years to show correctly on here. 
# But it seems that the number of registered power boats in 
# Florida has seen a significant increase over the latter years

# Part 2: Create a Bar Graph 
# Import 'cars' data set and view

barchart(cars$Cars, main="Comparison of Car Models", ylab = "Car Models", xlab = "Quantity of Cars", col="blue")

# Observation:
# Jaguar seems to be the most popular car and Datsun is the least popular model

# Part 3: Create a Stacked bar  
# Import 'car_location' data set and view

ggplot(data=car_location) +
  geom_bar(mapping = aes(x = Car, fill=Location), position = "dodge") + 
  ggtitle("Car Models by Location") +
  xlab("Car Models") +
  ylab("Location")  

# Observation:
# Jaguar seems to be the most popular car with what seems to be a high rate of 
# purchases in the Southwest with Datsun being the least popular model across all 3 regions

# Part 4: Create a Scatter Plot
# Import 'crocodiles' data set and view

ggplot(crocodiles, aes(x=HeadLength, y=BodyLength)) +
  geom_point() +
  ggtitle("Head Length vs Body Length of Estuarine Crocodiles") +
  xlab("Head Length") +
  ylab("Body Length")
# Scatterplot shows a right upward trend, meaning that as the head length of 
# the crocodile increases, the body length also tends to increase. 
# This indicates a positive correlation between the two variables.

# Part 5: Create a line chart
str(HeartAttacks1)
# Noticed the date is spread out in different columns so need to combine in one
# column. 

# Load libraries
library(tidyr)
library(dplyr)

HeartAttacks2 <- unite(HeartAttacks1, Date, Month, Day, Year,sep=" " )

# Kept getting errors for the 'Heart Attacks column so I renamed it without
# really investigating further. 
names(HeartAttacks2)[names(HeartAttacks2) == "Heart Attacks"] <- "HA"

str(HeartAttacks2)

ggplot(HeartAttacks2, aes(as.Date(Date, "%B-%d-%Y", HA)) +
  geom_line() + 
  xlab("Number of Heart Attacks") + 
  ylab("Dates") + 
  ggtitle("Heart Attacks Treated at a Hospital Chain")

# Note: I struggled with this one and made so many errors I was muddling myself up. 
# was concerned about missing the deadlines today so I will have to submit and learn it after
       
