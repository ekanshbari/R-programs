library(sqldf)
head(airquality)
Data<-airquality
#Question 1
#a.
print(sqldf("select * from Data where Temp>70"))
#b.
print(sqldf("select Ozone,Wind from Data where month in (6,7)"))
#c.
print(sqldf("select month, avg(temp) as MEAN from Data group by month"))
#d.
print(sqldf("select * from Data order by month asc"))
print(sqldf("select * from Data order by month desc"))
#e.
print(sqldf("select month, avg(temp) as MEAN from Data group by month having month not in (5)"))

#Question 2
#a.
Data1 <- read.csv("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-3/BYOD PRAC 3/BYOD PRAC 3/SET_A_EVEN/PopularKids.csv")
#b.
apply(Data1[,c('Age','Grades','Sports','Looks')],2,max)
#c.
#using DPLYR
library(dplyr)
Data1 %>% group_by(School) %>% summarise(mean(age))
#OR
is.data.frame(Data1)
apply(Data1[,c('School')],2,function(x) tapply(x,Data1$School,mean))
#d.
sapply(Data1[,sapply(Data1 , is.numeric)], mean)
#e.
Data1 %>% group_by(Race) %>% summarise(min(Age))
 
                               


#3
Data2<-CO2
Data2 
#a.
Data2 %>% group_by(Plant) %>% 
  summarise(min(conc),max(conc),min(uptake),max(uptake)) %>%
  filter(row_number()==5)
#OR
Data2 %>% group_by(Plant) %>% 
  summarise(min(conc),max(conc),min(uptake),max(uptake)) %>%
  filter(substr(Plant,1,3)=="Qc3")

#b
Data2 %>% group_by(Type) %>% 
  summarise(min(conc),max(conc),min(uptake),max(uptake))

#c
library(stringr)# str_detect is under stringr
QN<-Data2 %>% filter(str_detect(Plant, "^Qn"))
QN
#OR
filter(Data2,substr(Plant,1,2)=="Qn")

#d
Data2 %>% filter(conc>100) %>% select(Plant,Treatment)

#e
Data2 <-mutate(Data2,Per_conc=conc/100)
Data2
