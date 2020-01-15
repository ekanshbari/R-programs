getwd()
setwd("/home/uday/Desktop/Weather-Data/Weather")
chicago <- read.csv("Chicago-F.csv")
chicago
chicago <- read.csv("Chicago-F.csv",row.names=1)
chicago

houston<- read.csv("Houston-F.csv",row.names=1)
newyork <- read.csv("NewYork-F.csv",row.names = 1)
sanfrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)

is.data.frame(chicago)

#convert data frame to matrix
chicago<- as.matrix(chicago)
houston<- as.matrix(houston)
newyork <- as.matrix(newyork)
sanfrancisco <- as.matrix(sanfrancisco)

weather <- list(chicago=chicago,newyork=newyork,houston=houston,sanfrancisco=sanfrancisco)
weather
weather[3]
weather[[3]]
weather$houston

#Using Apply
apply(chicago,1,mean)

#analyse one city

apply(chicago,1,max)
apply(chicago,1,min)

#for practice columnwise

apply(chicago,2,max)
apply(chicago,2,min)
apply(chicago,2,mean)

apply(chicago,1,mean)
apply(newyork,1,mean)
apply(houston,1,mean)
apply(sanfrancisco,1,mean)

#find the mean of every row using loop

output <- NULL
for(i in 1:5)
{
  output[i]<- mean(chicago[i,])
}

output

apply(chicago,1,mean)

#using lapply
?lapply
chicago
#transpose
t(chicago)
lapply(weather,t)

#another way
#list(t(weather$chicago),t(weather$newyork),t(weather$sanfrancisco),t(weather$houston))

mylist <- lapply(weather,t)
mylist

rbind(chicago,newrow=1:12)
lapply(weather,rbind,newrow=1:12)

#example 3

?rowMeans
rowMeans(chicago) #identical to apply(chicago,1,mean)

lapply(weather,rowMeans)

weather
weather$chicago[1][1]
weather[[1]][1][1]
lapply(weather,"[",1,1)

lapply(weather,"[",1,)

lapply(weather,"[",,3)

#adding our own function

lapply(weather,rowMeans)
lapply(weather,function(x) x[1,])
lapply(weather,function(x) x[5,])
lapply(weather,function(x) x[,12])

lapply(weather,function(z) z[1,]- z[2,])
