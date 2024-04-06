# Three Main plotting Packages in R, Lattice, ggplot,built-in

# ggplot(dataFrame, aes(columnName))+
# geom_bar()+ 
# ggtitle("TitleText")+
# xlab("LabelText")+
# ylab("Frequency") (f you only have one variable then Frequency is the y)

# lattice
# barchart(dataFrame$columnName, main="TitleName", ylab="LabelName", xlab="Frequency")
# By default, your x and y are switched in lattice

# line charts in R
# ggplot(dataFrame,aes(as.Date(DateVariable, "dateFormat"), Yvariable))+
# geom_line()+
# xlab("LabelText")+
# ylab("LabelText")+
# ggtitle("TitleText")

# Load in libraries
# library("ggplot2")
# library("lattice")

# Histogram

# ggplot(flowers, aes(x=Days.to.grow)) + geom_histogram() + 
# ggtitle("Histogram of the Number of Days to Grow Flowers") + ylab("Count")

# Bar Chart with ggplot

ggplot(flowers, aes(type.of.flower)) +
  geom_bar() +
  ggtitle("Frequency of Flower Types") +
  xlab("Flower Types") +
  ylab("Frequency")

# Bar chart with lattice

# barchart(flowers$type.of.flower, main="Frequency of Flowers, ylab = "Frequency", xlab="Flower Types)

# Scatter Plots in R

ggplot(flowers, aes(xe=Cost.to.gro, y=Cost.of.force))+
  geom_point() +
  ggtitle("Cost to Grow by Workforce Cost") +
  xlab("Cost to Grow Flowers") +
  ylab("Cost of Workforce")

# Line charts - Make sure your data has a date variable

ggplot(flowerShipment, aes(as.Date(Date, "%m/%d/Y"), Cost)) + 
  geom_line() +
  ggtitle("Cost of Flowers over time") +
  xlab("Date of Flower Shipmetn") +
  ylab("Cost of Flowers")
# Load libraries
library("ggplot2")
library("lattice")

# Import the data
# Bar chars with ggplot
ggplot(HR_data1, aes(salary))+ 
  geom_bar() +
  ggtitle("Frequency of Salary") +
  xlab("Salary Category") +
  ylab("Frequency")

# Bar Charts with Lattice: You can also install and work with a 
# library called lattice for plotting in R. It is quick and easy way to plot. 
# All you really need to do is to specify your variable, using the function barchart():

barchart(HR_data1$salary)

# A word of caution - your variable must be a factor in order to use the 
# barchart() function from lattice. If you use a variable in a different format, 
# even if it represents categorical data, things will come up pretty screwy. 
# Take a look at what happens when you chart Work_accident, which is a 
# categorical variable, but currently structured as numeric:

barchart(HR_data1$Work_accident)

# Adding Labels and a Title
# main= will provide a title,
# ylab= will allow you to label the y-axis,
# xlab= will allow you to label the x-axis
# You can also add in a color=

barchart(HR_data1$salary, main="Frequency of Salary", ylab = "Salary Category", xlab = "Frequency", col="green")

# Stacked Bar Charts in R
# Stacked bar charts are easy to create in R using ggplot. 
# Simply add a mapping= argument to your geom_bar() function that allows you to 
# specify your x= variable and the variable that you will be stacking, 
# which goes in the argument fill=. Here's what that code will look like:

ggplot(data=HR_data1) +
  geom_bar(mapping = aes(x = sales, fill=salary)) + 
  ggtitle("Sales Categories by Salary Level") +
  xlab("Sales Category") +
  ylab("Frequency") 

# Making Bar heights the same:
#  if you are able to set the bar heights the same, 
# interpretation becomes much easier! Simply add another 
# argument to geom_bar() called position= and set it to "fill":

ggplot(data=HR_data1) +
  geom_bar(mapping = aes(x = sales, fill=salary), position = "fill") + 
  ggtitle("Sales Categories by Salary Level") +
  xlab("Sales Category") +
  ylab("Frequency")

# Multiple Categorical Variables

# When you do a stacked bar chart, you are including two categorical variables. 
# However, one is stacked! You can compare side by side, change the position
# argument to "dodge"

ggplot(data=HR_data1) +
  geom_bar(mapping = aes(x = sales, fill=salary), position = "dodge") + 
  ggtitle("Sales Categories by Salary Level") +
  xlab("Sales Category") +
  ylab("Frequency")  

# Line Charts in R

str(earthquakes)

# Things can get a little tricky when you try it with a date 
# (which is, of course, when you'd want a line graph the most)! 
# Here's what happens when you try and create a line graph without 
# specifying that your Date column needs to be a date type in R:
# As you can see, this shows that M is being treated as a factor, not numeric. 
# There is an easy way to fix it - just use the as.numeric() function on the data:

earthquakes$M <- as.numeric(earthquakes$M)

Plotting:

ggplot(earthquakes, aes(as.Date(Date, "%j-%b-%y"), M)) +
  geom_line() + 
  xlab("Date of Earthquake") + 
  ylab("Earthquake Magnitude") + 
  ggtitle("Magnitude of Earthquakes over Time")
  
str(earthquakes)

# Load libraries
library(tidyr)
library(dplyr)

# Going over the above line by line, you will call the function ggplot(), 
# then specify your dataset, earthquakes, and then use the function aes() 
# to include the variables you will be plotting. Before you specify Date, 
# however, you will need to use as.Date() on the Date column. Then specify the 
# format of the date, which will be "%j-%b-%y", and specify your y variable, M. 
# The rest should be much more familiar - you have a call to geom_line(), 
# then are specifying labels and titles.

# It looks much more like a line graph should! However, do you notice anything 
# funny along the x-axis? Maybe that the years are extending well beyond the 
# current year, into 2020 and beyond? No, you are not predicting any earthquakes 
# into the future - this was completely a historical dataset! This highlights one 
# of the important foibles of using a two-digit year with your data - 
# they can be misinterpreted. If you have a choice, always enter and utilize 
# data in a four-digit format for clarity!