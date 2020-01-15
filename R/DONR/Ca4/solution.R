#CA4
#Q1
deo<-read.csv("DEO COMPANY.csv")

#1
plot(x=deo$Month,y=deo$Sales)
#0r
plot(x=deo[,"Month"],y=deo[,"Sales"])

#2
#find rations between month and sales,spend


deo <- read.csv("C:/Users/Shubh/Desktop/DEO COMPANY.csv")
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


#3
#ind sales by putting value of spend in ratio

#Q2
library(xlsx)
easy<- read_excel("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/SakshiCa4/EASYDAY SALES.xls")
easy$TIME
#1
a<-easy
a$t <- as.integer(substr(a$TIME,12,13))
a <- a[a$t<9,]
a

#2
easy %>% group_by(PRODUCTS) %>% summarise(n=n()) -> b
sqldf("select PRODUCTS from b where n = (select max(n) from b)")
#3
library(dplyr)
c<-subset(easy,easy$PRODUCTS=='Milk')
sqldf("select distinct(PRODUCTS) from easy where BILLNUMBER in (select BILLNUMBER from c) and PRODUCTS != 'Milk'")
