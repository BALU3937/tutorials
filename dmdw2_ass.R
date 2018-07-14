bankdata<-bankdata<-read.table("C:\\Users\\pbs99\\Desktop\\R_workspace\\bank-full.csv", header=TRUE,sep=";")

#data cleaning
#outlier analysis
iris_set <- read.csv("C:\\Users\\pbs99\\Desktop\\R_workspace\\iris.csv",header = TRUE)
str(iris_set)
boxplot(iris_set$Sepal.Length,xlab=" value", main="Box Plot Magnitude")
stat<-boxplot.stats(iris_set$Sepal.Length)
stat
stat1<-stat$stats[1]
stat5<-stat$stats[5]
modified <- iris_set[ which(!(iris_set$Sepal.Length <stat1 | iris_set$Sepal.Length  > stat5)),]
boxplot(modified$Sepal.Length,xlab=" value", main="Box Plot Magnitude 1")


#missing values
library(DMwR)
iris_set1 <- read.csv("C:\\Users\\pbs99\\Desktop\\R_workspace\\iris_set.csv",header = TRUE)
i
sum(is.na(iris_set1))
sum(is.na(iris_set_ch))

iris_set
#data transfortmation
library(caret)
normalisation <- preProcess(iris_set,method=c("range"))
normalisation
changed_data<- predict(normalisation, iris_set)
changed_data


#data integration

str(iris_set)
iris_set.data = table(iris_set$Sepal.Length, iris_set$Petal.Length) 
print(iris_set.data)
print(chisq.test(iris_set.data))


cov(iris_set$Sepal.Length,iris_set$Petal.Length) 








#data reduction
log.iris_set <- log(iris_set[2:4])
iris2 <- prcomp(log.iris_set,center = TRUE,scale. = TRUE) 

plot(iris2, type = "l")
summary(iris2)

library(devtools)

#install_github("ggbiplot", "vqv")
library(ggbiplot)
graph_p <- ggbiplot(iris2, obs.scale = 1, var.scale = 1,  ellipse = TRUE,circle = TRUE)
graph_p <- graph_p + scale_color_discrete(name = '')
graph_p <- graph_p + theme(legend.direction = 'horizontal', legend.position = 'top')
print(graph_p)

dat = preProcess(iris_set[,2:4],method=c("BoxCox","center","scale","pca"))
dat$rotation


