library(ggplot2)

Mode<-function(v){
  uniq<-unique(v)
  uniq[which.max(tabulate(match(v,uniq)))]
}




head(beaver1)
head(beaver2)

#median
median(beaver1$temp)
median(beaver2$temp)

#mean
mean(beaver1$time)
mean(beaver2$time)

#Mode
Mode(beaver1$temp)
Mode(beaver2$temp)
#Quantile
quantile(beaver1$temp)
quantile(beaver2$temp)

#QuantilePlot
qplot(sort(beaver1$temp),ylab="Beaver1 Temperature",main="Quantile Plot of Beaver1")
qplot(sort(beaver2$temp),xlab="Beaver2 Temperature",main="Quantile Plot of Beaver2")

#Quantile-Quantile Plot
qqplot(sort(beaver1$temp),sort(beaver2$temp),xlab="Beaver1 Temperature", ylab="Beaver2 Temperature",main="QQ Plot of Beaver1 vs Beaver2")

#Standard Deviation
sd(beaver1$temp)
sd(beaver2$temp)

#scatter plot
plot(x=beaver1$temp, y=beaver1$time, 
     xlab="Temperature", ylab="Time",  main="Temperature-Time:Beaver1")
plot(x=beaver2$temp, y=beaver2$time, 
     xlab="Temperature", ylab="Time",  main="Temperature-Time:Beaver2")


#Box_Plot
boxplot(beaver1$temp,data=beaver1,xlab="Temperature", main="Beaver 1 Temp Boxplot")
boxplot(beaver2$temp,data=beaver2,xlab="Temperature", main="Beaver 2 Temp Boxplot")

#Histogram
hist(beaver1$temp,xlab="Temperature", ylab="Frequency", breaks=20,main="Histogram of Beaver1")
hist(beaver2$temp,xlab="Temperature", ylab="Frequency", breaks=20,main="Histogram of Beaver2")

#Bar Plot
barplot(beaver1$temp,ylab="Temperature",main="Bar Plot of Beaver1")
barplot(beaver2$temp,xlab="Measurements",ylab="Temperature",main="Bar Plot of Beaver2")


print(max(beaver1$temp))
print(max(beaver2$temp))

