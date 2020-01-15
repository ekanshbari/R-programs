#CA4
#Q1
deo<-read.csv("DEO COMPANY.csv")

#1
plot(x=deo$Month,y=deo$Sales)
#0r
plot(x=deo[,"Month"],y=deo[,"Sales"])

#2
#find rations between month and sales,spend

#3
#ind sales by putting value of spend in ratio
#Q2
library(xlsx)
easy<-read.xlsx("easyday.xlsx",sheetIndex = 1)

#1
easy[easy$TIME<"1899-12-30 09:00:00 GMT",]

#2
a<-table(easy$PRODUCTS)
a<-as.data.frame(a)
a[max(a$Freq),]

#3
library(dplyr)
easy<-group_by(easy,by=CUSTOMERPHONE)
summarise(easy,max=)
