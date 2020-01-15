install.packages("dplyr")
library(dplyr)
mtcars<-mtcars #to view the comp data

#select: to select column by name from large complete datasets
set
select(mtcars,mpg,disp)

#select: to select column by name from large complete datasets

mtcars$car <- rownames(mtcars)
mtcars <- mtcars[,c(12,1:11)]

select(mtcars,mpg,disp)

select(mtcars,mpg:hp)

#filter: is used for filtering
#simple filter
filter(mtcars,cyl==0)
filter(mtcars,cyl==4)
filter(mtcars,cyl<=6)

#multiple criteria filter
filter(mtcars,cyl<6 & vs==1)
filter(mtcars,cyl<6|vs==1)

a <- arrange(mtcars,desc(disp))

#mutate function: it helps in adding new var to an existing data

mutate(mtcars,my_custom_disp=disp/1.2037) #create new data

summarise(mtcars,mean(disp))

summarise(group_by(mtcars,cyl),mean(disp))

#data-visualization

summarise(group_by(mtcars,cyl),mean=mean(disp),sd=sd(disp))
#mean of disp with cylinders 4,6,8 mean and standard deviation

select(mtcars,mpg,disp)

counts<-table(mtcars$gear)
barplot(counts)

#barchart: for viewing char variable
barplot(counts,horiz=TRUE)

#editing a simple bar chart

counts<- table(mtcars$gear)
barplot(counts,main="Simple Bar Plot",xlab="Improvement",ylab="Frequency",legend=rownames(counts),col=c("red","yellow","blue"))

#creating a Staced Bar chart

counts<-table(mtcars$vs,mtcars$gear)

barplot(counts,main="Simple Bar Plot",xlab="Improvement",ylab="Frequency",legend=rownames(counts),col=c("red","violet"))

#creating the histogram:for displayingg continuous data

mtcars$mpg
hist(mtcars$mpg)

#colored histogram

mtcars$mpg
hist(mtcars$mpg,breaks = 10,col="darkgreen")

#kernel density plots:these displays the dis of continous var much
#effeciently than histogram

density_data <- density(mtcars$mpg)
plot(density_data)

#colored Kernel density plots
density_data <- density(mtcars$mpg)
plot(density_data,main="Kernel Density of miles per gallon")
polygon(density_data,col="magenta",border="red")
