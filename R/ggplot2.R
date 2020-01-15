View(iris)
table(iris$Species)

#####Scatter Plot#######
plot(iris$Sepal.Length~iris$Petal.Length,xlab="Petal",ylab = "Sepal",
     main="Comparison",col="blue",pch=16)

####histogra####
hist(iris$Sepal.Length,col="red")


####boxplot####
boxplot(iris$Sepal.Length~iris$Species,col="burlywood")

###GGPLOT2######
library(ggplot2)
ggplot(data=iris,aes(y=Petal.Length,x=Sepal.Length, col=Species, 
                     shape=Species))+geom_point()

dat1=read.csv(file.choose(),header = TRUE)
View(house)
