#Q1

library(sqldf)
air<- airquality
air
head(air,6)
#a
sqldf("select * from air where Temp>70 and Month>5")

#b
sqldf("select Ozone,Wind from air where Month>5 and Month<8")

#c
summarise(air,mean(Temp))

#d
d <- arrange(air,desc(Month))
d
a <- arrange(air,Month)
a

#e
sqldf("select avg(Temp) as Mean from air where Month>5")

#Q2

#a
kid<-read.csv(file.choose())
kid
is.data.frame((kid))
kid <- as.matrix(kid)

#b
apply(kid,2,max)
?apply

#c
apply(kid,2,)

















#Q3
library(dplyr)
co2<- CO2
co2
#b
min(co2$conc)
max(co2$conc)
min(co2$uptake)
max(co2$uptake)

#a
?min
min()