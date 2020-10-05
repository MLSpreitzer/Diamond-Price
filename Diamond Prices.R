#Import Data
mydata <- read.csv(file.choose())

#Install Packages
install.packages("ggplot2")
install.packages("labeling")
install.packages("farver")

#Import package
library(ggplot2)

#Basic Scatter Plot
ggplot(data=mydata, aes(x=carat, y=price, color=clarity)) +
  geom_point()

#Basic Scatter Plot WITH alpha (makes points transparent)
ggplot(data=mydata, aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1)

#Basic Scatter Plot without outliers (carat <2.5)
ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1)

#Basic Scatter plot with 'best fit lines' (geom_smooth)
ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()
