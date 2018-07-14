library(ggplot2)
head(cars)
#median
median(cars$speed)
#mean
mean(cars$dist)
#Quantile
quantile(cars$speed)
#Standard Deviation
sd(cars$speed)
#scatter plot
plot(x=cars$dist, y=cars$speed, 
     xlab="Distance", ylab="Speed",  main="Distance-Speed")
#Box_Plot
boxplot(dist~speed,data=cars,xlab="Speed",ylab="Distance", main="Cars Boxplot")
#Histogram
hist(cars$speed,xlab="Speed", ylab="Frequency", breaks=15,main="Histogram of Speed")
#Bar Plot
barplot(cars$speed,ylab="Speed",main="Bar Plot")