library(dplyr)
#1
Data<-airquality
head(Data)

#a.
Data %>% filter(Month>5 & Temp>70)

#b.
Data<-mutate(Data,TempInc=(Temp-32)*5/9)
Data


#c.
Data %>% group_by(Month) %>% summarise(mean(Temp))

#d.
arrange(Data,desc(Month))
arrange(Data,Month)

#e
Data %>% group_by(Month) %>% filter(Month!=5) %>% summarise(mean(Temp))


#2

Data1<-iris
Data1
#a
apply(Data1[0:4],2,mean)

#b
apply(Data1[0:4],2,function(x) tapply(x,Data1$Species,mean))

#c 
x<-apply(Data1[,c('Sepal.Width','Petal.Width')], 2,max)
is.vector(x)

#d
apply(Data1[5],2,toupper)

#e
d<-lapply(Data1[0:4], mean)
# all apply fun return in vector another form of list,vector,matrix

#3
#a.
Data3 <- read_excel("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-3/BYOD PRAC 3/BYOD PRAC 3/SET_B_ODD/ACME_DATA.xlsx")
library(sqldf)
#b.
head(Data3)
#c.
sqldf("select `Gross sales` from Data3 where Months='November'")
#d.
sqldf("select `Target sales` , Months from Data3")

#e.
write.csv(Data3,file = "/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-3/BYOD PRAC 3/BYOD PRAC 3/SET_B_ODD/Nikhil.txt")
