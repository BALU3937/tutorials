getmode<-function(v){
  uniq<-unique(v)
  uniq[which.max(tabulate(match(v,uniq)))]
}
library(ggplot2)
head(cars)
median(cars$speed)
mean(cars$speed)
getmode(cars$speed)
quantile(cars$speed)
v<-sd(cars$speed)
v**2
plot(cars$speed,cars$dist,xlab="speed",ylab="dist",main="speed-distance")
scatter.smooth(cars$speed,cars$dist,main="speed-distance")
boxplot(cars$speed,data=cars,xlab="speed",main="cars boxplot")
hist(cars$speed,xlab="speed",ylab="frequency",breaks=15,main="Histogram speed")
barplot(cars$speed,ylab="speed",main="Barplot",xlab="carno.")
cars
