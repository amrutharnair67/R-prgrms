library(ggplot2)

# Load the data from the CSV file
mydata <- read.csv("D:/R prgrms/car.csv")

# Basic histogram
ggplot(data = mydata, aes(x = price)) + geom_histogram()

# Histogram with customized colors and bin size
ggplot(data = mydata, aes(x = price)) +
  geom_histogram(fill = "orange", color = "green", bins = 10)

ggplot(data = mydata, aes(x = price, fill = fuel_type)) +
  geom_histogram(color = "green", bins = 10)

#barplot bivariate categorical conditions
ggplot(data = mydata, aes(x = body_style,y=price, fill = fuel_type)) +
  geom_col()

ggplot(data = mydata, aes(x = body_style,y=price, fill = fuel_type)) +
  geom_bar(stat="identity")
#scatter plot
ggplot(data = mydata, aes(x = price,y=highway_mpg,col=fuel_type,shape=fuel_type)) +
  geom_point()+geom_smooth()

ggplot(data = mydata, aes(x = price, y = highway_mpg, col = fuel_type, shape = fuel_type)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(data = mydata, aes(x =highway_mpg , y = price, col = fuel_type)) +
  geom_line()


#boxplot
ggplot(data = mydata, aes(x =highway_mpg , y = price, col = fuel_type)) +
  geom_boxplot()

#areaplot
ggplot(data = mydata, aes(x =highway_mpg , y = price, col = fuel_type,fill=body_style)) +
  geom_area()
#
ggplot(data = mydata, aes(x = highway_mpg, y = price, col = fuel_type, fill = body_style)) +
  geom_point() +
  facet_wrap(~body_style)

#facet grid
ggplot(data = mydata, aes(x = highway_mpg, y = price, col = fuel_type, fill = body_style)) +
  geom_area() +
  facet_grid(rows = vars(body_style))

#save to png
png(filename="mygraph.png")

