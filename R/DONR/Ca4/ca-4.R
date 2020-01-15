library("ggplot2")
#change your directory
setwd("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/SakshiCa4")
getwd()
deo <- read.csv("DEO COMPANY.csv")


View(deo)
# Trend Line
library(ggplot2)
ggplot(deo, aes(Month, Sales)) + geom_point() + geom_smooth(method = "lm")
# Creating Model
train_data <- deo[deo$Month < 12,]
test_data <- deo[deo$Month > 1,]
test_count <- test_data$Sales
model=lm(Sales ~ Spend, train_data[2:3],)
# Showing accruacy of the model
p = predict(model, test_data)
plot(p - test_count)
# Predicting Sales
predict(model, newdata = data.frame(Spend=5100))



#Task1
ggplot(data=Deo,aes(x=Month,y=Sales))
ggplot(data=Deo,aes(x=Month,y=Sales))+geom_point()
ggplot(data=Deo,aes(x=Month,y=Sales,color=Sales))+geom_point()
ggplot(data=Deo,aes(x=Month,y=Sales,size=Sales))+geom_point()

#Task2
ggplot(data=Deo,aes(x=Month,y=Sales))
ggplot(data=Deo,aes(x=Month,y=Sales))+geom_point()
ggplot(data=Deo,aes(x=Month,y=Sales,color=Sales))+geom_point()
ggplot(data=Deo,aes(x=Month,y=Sales,size=Sales))+geom_point()


p<- ggplot(data=Deo,aes(x=Month,y=Sales))


q<- p + geom_jitter(aes(size=Spend,color=Spend)) + geom_boxplot(alpha=0.7, outlier.colour = NA)

#nondata ink
q <- q+ 
  xlab("Monnth")+
  ylab("Sales") + 
  ggtitle("Sales Respect to Month")
q

q<- q+
  theme(
    axis.title.x = element_text(color="blue",size=30),
    axis.title.y = element_text(color="blue",size=30),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    
    plot.title = element_text(size=40),
    
    legend.title = element_text(size=20),
    legend.text = element_text(size = 20),
    
    text = element_text(family = "Comic Sans MS")
  )



library(readxl)
x<-read_excel("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/SakshiCa4/a.xls")
x
install.packages("readxl")
easy<-read.xlsx("easyday.xlsx",sheetIndex = 1)

#1
easy[easy$TIME<"PRODUCTS"]

#2
a<-table(easy$PRODUCTS)
a<-as.data.frame(a)
a[max(a$Freq),]

#3
library(dplyr)
easy<-group_by(easy,by=CUSTOMERPHONE)
summarise(easy,max=)
