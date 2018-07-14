library(ggplot2)
data()
head(pressure)
mean(pressure$temperature)
median(pressure$temperature)
Mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = NA
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}
Mode(pressure$temperature)
table(pressure$temperature)
names(pressure)
quantile(pressure$temperature)
sd(pressure$temperature)
plot(x=pressure$temperature, y=pressure$pressure, xlab="temperature", ylab="vapourpressure",
     main="temperature vs pressure")
boxplot(pressure~temperature,data=pressure,xlab="temperature",ylab="pressure", main="pressure Boxplot")
boxplot(dist~speed,data=cars,xlab="Speed",ylab="Distance", main="Cars Boxplot")
hist(pressure$temperature,xlab="temperature", ylab="Frequency", breaks=5,main="Histogram of pressure")
barplot(pressure$temperature,ylab="temperature",main="Barplot",xlab="obs")
qplot(mpg, wt, data = mtcars)