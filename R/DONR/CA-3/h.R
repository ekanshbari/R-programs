
install.packages("sqldf")
library(sqldf)
Data<-airquality
Data
head(Data)
library(stringr)
#Q1a
sqldf("select * from airquality where Temp>70 and month>5")
#Q1b
sqldf("select Ozone,Wind from airquality where month=7 and month=6")
#Q1c
sqldf("select avg(Temp) from airquality where month=5")
sqldf("select avg(Temp) from airquality where month=6")
sqldf("select avg(Temp) from airquality where month=7")
sqldf("select avg(Temp) from airquality where month=8")
sqldf("select avg(Temp) from airquality where month=9")

#Q1d
sqldf("select * from airquality order by month asc")
sqldf("select * from airquality order by month desc")
#Q1e
sqldf("select avg(Temp) from airquality where month=6")
sqldf("select avg(Temp) from airquality where month=7")
sqldf("select avg(Temp) from airquality where month=8")
sqldf("select avg(Temp) from airquality where month=9")

#Q2a

setwd("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/CA-3/BYOD PRAC 3/BYOD PRAC 3/SET_A_EVEN")
getwd()

Kid<-read.csv("PopularKids.csv")

head(Kid)
max(Kid$Age)
max(Kid$Grades)
max(Kid$Sports)
max(Kid$Looks)


#mean of age for every school.

sqldf('select School,avg(Age) from kid group by School')

#Apply function, display simplified output to calculate mean age.

mean(Kid$Age)


sqldf('select Race,min(kids.Age) from kid group by kids.Race')

#Q3
library(dplyr)
co2<-CO2
#Q3a
QC3<-filter(co2,Plant=="Qc3")
summarise(QC3,min(conc))
summarise(QC3,max(conc))
summarise(QC3,min(uptake))
summarise(QC3,max(uptake))
#Q3b
summarise(group_by(co2),mean=max(disp))

#Q3c
Mc1<-filter(co2,Plant=="Mc1")
summarise(Mc1,min(conc))
summarise(Mc1,max(conc))
summarise(Mc1,min(uptake))
summarise(Mc1,max(uptake))

Mc2<-filter(co2,Plant=="Mc2")
summarise(Mc2,min(conc))
summarise(Mc2,max(conc))
summarise(Mc2,min(uptake))
summarise(Mc2,max(uptake))

Mc3<-filter(co2,Plant=="Mc3")
summarise(Mc3,min(conc))
summarise(Mc3,max(conc))
summarise(Mc3,min(uptake))
summarise(Mc3,max(uptake))

Mn1<-filter(co2,Plant=="Mn1")
summarise(Mn1,min(conc))
summarise(Mn1,max(conc))
summarise(Mn1,min(uptake))
summarise(Mn1,max(uptake))

Mn2<-filter(co2,Plant=="Mn2")
summarise(Mn2,min(conc))
summarise(Mn2,max(conc))
summarise(Mn2,min(uptake))
summarise(Mn2,max(uptake))

Mn3<-filter(co2,Plant=="Mn3")
summarise(Mn3,min(conc))
summarise(Mn3,max(conc))
summarise(Mn3,min(uptake))
summarise(Mn3,max(uptake))


Qc1<-filter(co2,Plant=="Qc1")
summarise(Qc1,min(conc))
summarise(Qc1,max(conc))
summarise(Qc1,min(uptake))
summarise(Qc1,max(uptake))

Qc2<-filter(co2,Plant=="Qc2")
summarise(Qc2,min(conc))
summarise(Qc2,max(conc))
summarise(Qc2,min(uptake))
summarise(Qc2,max(uptake))

QC3<-filter(co2,Plant=="Qc3")
summarise(QC3,min(conc))
summarise(QC3,max(conc))
summarise(QC3,min(uptake))
summarise(QC3,max(uptake))

Qn1<-filter(co2,Plant=="Qn1")
summarise(Qn1,min(conc))
summarise(Qn1,max(conc))
summarise(Qn1,min(uptake))
summarise(Qn1,max(uptake))

Qn2<-filter(co2,Plant=="Qn2")
summarise(Qn2,min(conc))
summarise(Qn2,max(conc))
summarise(Qn2,min(uptake))
summarise(Qn2,max(uptake))

Qn3<-filter(co2,Plant=="Qn3")
summarise(Qn3,min(conc))
summarise(Qn3,max(conc))
summarise(Qn3,min(uptake))
summarise(Qn3,max(uptake))
#Q3c
QN<-co2 %>% filter(str_detect(Plant, "^Qn"))
#Q3d
d<-filter(co2,conc>=100)
d$Plant
d$Treatment
#Q3e
co2$Per_conc<-co2$conc/1000
co2$Per_conc
