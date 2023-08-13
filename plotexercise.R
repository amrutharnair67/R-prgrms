library(ggplot2)
library(tidyverse)
data<-data.frame(diamonds)
data

#1.Create a histogram of carat with a border color and fill color
ggplot(data,aes(x=carat))+geom_histogram(col='orange',fill='violet')

#2.Set the bin width of the histogram to 0.01
ggplot(data,aes(x=carat))+geom_histogram(col='orange',fill='violet',bin=0.01)

#3Make a scatterplot: carat vs price, set the color to clarity
ggplot(data,aes(x = carat,y = price))+geom_point(aes(color=factor(clarity)))
ggplot(data,aes(x = carat,y = price,color = clarity))+geom_point()

#4Make a scatterplot: carat vs price, set the color to clarity. Also add trendline to the plot
ggplot(data,aes(x = carat,y = price,color = clarity))+geom_line()

#5 ● Make a scatterplot: carat vs price,
# Facet it by clarity
ggplot(data,aes(x = carat,y = price))+geom_point()+facet_wrap(~clarity)
# Add a theme layer for the plot(graph title, background color etc)
ggplot(data,aes(x = carat,y = price))+geom_point()+facet_wrap(~clarity)+theme(panel.background =element_rect(fill = 'lightblue'))+ggtitle("Scatter")


View(mpg)
mpg<-mpg
data1
#Illustration of qplot function for histogram, scatter plot,boxplot,dotplot and violin plot
#using mpg data set.
# Histogram
qplot(mpg$displ, data = mpg, geom = "histogram")

# Scatter plot
qplot(mpg$displ, mpg$hwy, data = mpg, geom = "point")

# Boxplot
qplot(mpg$class, mpg$hwy, data = mpg, geom = "boxplot")

# Dotplot
qplot(mpg$class, mpg$hwy, data = mpg, geom = "dotplot")

# Violin plot
qplot(mpg$class, mpg$hwy, data = mpg, geom = "violin")

#Convert the attributes gear, am, cyl of mtcars data set to categorical.
mtcars<-data.frame(mtcars)
mtcars

#Convert gear to categorical
mtcars$gear <- as.factor(mtcars$gear)

# Convert am to categorical.
mtcars$am <- as.factor(mtcars$am)

# Convert cyl to categorical
mtcars$cyl <- as.factor(mtcars$cyl)

# Print the head of the mtcars dataset
head(mtcars)

