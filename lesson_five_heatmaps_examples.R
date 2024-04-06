# Summary 
# Heat maps use color and location to help the user quickly identify 'hot spots' and 'cold spots.'
# Heat maps are often created on actual geographical maps.
# Tree maps are used to organize huge piles of data for easy visual categorization.
# Mosaic plots are great visual tools to plot two categorical variables on a single graph.


library(ggplot2)
library(lattice)
library(tidyr)
library(dplyr)

# In order to create heat maps in R, you can use the function heatmap() 
# from base R. You can use this stock data. In order to use the heatmap 
# function, you must have your data formatted as a matrix, 
# and all of your data must be numeric. Start by removing the 
# date column from this data:

stockdata1 <- stockdata[,2:11]

# Then use the function as.matrix() to reformat the data as a matrix, 
# rather than as a data frame:

stockdata2 <- as.matrix(stockdata1)

# And lastly, run the heatmap() function:

heatmap(stockdata2)

library("treemap")
library("scales")
# Downloaded: The downloaded binary packages are in C:\Users\desja\AppData\Local\Temp\RtmpQFar9F\downloaded_packages
treemap(datascience_posts, index=c("category"), vSize="views", type="index")

# Mosaic Plot

library(vcd)

# In order to make use of the function mosaic(), you will need to have your data 
# formatted as a table. In order to do that, you will first use the attach() function, 
# and then will use the table() function, like this:

attach(defects)
defects2 <- table(Region, Defect)
defects2

# Proceed to plotting

mosaic(defects2, shade=TRUE, legend=TRUE)

# In the mosaic() function, you'll list your data table as the first argument, 
# then use the argument shade=TRUE to indicate that you want different colors, 
# and legend=TRUE to indicate that you'd like to see a key of the colors.


# Here is the resultant plot: