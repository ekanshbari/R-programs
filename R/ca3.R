library(dplyr)
library(sqldf)
#1
names(mtcars)
View(mtcars)
mlg_below_15=sqldf("select mpg from mtcars where mpg<15")
mlg_below_15

#--------------------------------------

mtcars=add_rownames(mtcars,"name")

hp_above_105=rownames(sqldf("select * from mtcars where cyl==4 && hp>105"))
hp_above_105

#-----------------------------------------------

z=sqldf("select disp from mtcars")
mean(z,na.rm = T)
meandisplacement=mean(mtcars$disp,na.rm = T)
#--------------------------------------------------------------------

#2
help("CO2")
View(CO2)
CO2 %>% 
  summarise(min(conc,na.rm = TRUE),max(conc,na.rm = TRUE),min(uptake,na.rm = TRUE),max(uptake,na.rm = TRUE))
#-----------------------------------------------------------------------------------------------------

CO2 %>% group_by(Type) %>%
  summarise(min(conc,na.rm = TRUE),max(conc,na.rm = TRUE),min(uptake,na.rm = TRUE),max(uptake,na.rm = TRUE))
#----------------------------------------------------------------------
a=filter(CO2,)


#------------------------------------------
mutate(CO2,per_conc=conc/100 )
#---------------------------------------------------------------------------------------------------------
CO2 %>% select(Plant,Treatment) %>% contains(conc>100)



