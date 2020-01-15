
https://developers.facebook.com/tool/explorer

library(tidyr)
library(dplyr)
head(mtcars)

str(mtcars)
View(mtcars)
mtcars$car<-rownames(mtcars)

mtcars<-mtcars[,c(12,1:11)]
#synatx gather(data,key,value,..., na.rm=F,convert=F)    =>doing pivoting
mtcarsNew<-mtcars%>%gather(attribute,value,mpg:gear)    #atrribute is name of the varibale given # row to col
head(mtcarsNew)


mtcarsSpread<- mtcarsNew %>% spread(atrribute,value)  #col to rowa
head(mtcarsSpread)


# unite

set.seed(1)    #for prediction for seting random value  
date<- as.Date('2016-01-01')+0:14   #convertion to date vector
class(date)
hour<- sample(1:24,15)   #will give range and from where till upto 
hour
min<- sample(1:60,15)
min
second<- sample(1:60,15)
second
event<- sample(letters,15)
event
data<- data.frame(date,min,second,event)
data

#if execute with seed then it will give the firt value that is there 
#in variable correspomding to that value will be returned that it original one but if 
# set seed is not executed then updated value will be returened

dataNew<- data%>% unite(datehour,date,hour,sep=' ') %>%     # datehour is new name for the combined name
  unite(datetime,datehour,min,second,sep=':')

dataNew

dataNew1<- data%>% unite(datehour,date,hour,sep=' ') %>%
  unite(time,datehour,event,sep='$')


data1<- dataNew %>% separate(datetime,c('date','time'),sep=' ')%>%
  separate(time,c('hour','event'),sep = '_')       #separate will not handle $ as a special character 
data1


separate(data,col,into,sep=" [^[:alnum:]]+",remove = T,convert = F,extra = "warn",...)









































