library(dplyr)
library(hflights)
#dply increase the performnace wrk faster with data frames
data("hflights")
head(hflights)
str(hflights)

flight=tbl_df(hflights) 
#tbl_df table dataframe used to wrap the data will show all the adjustable to the screen size and better thean heada which will scater the data
flight
print(flight,n=20)
data.frame(head(flight))

#table df will give 10 rows by default while head will show 6 rowa and variable are scatter 
#fliter:keep rows matching the criteria 
# r query fetching code
flight[flight$Month==1 & flight$DayofMonth==1,1]#last 1 tell the no. of col. 

--dplyr
filter(flight,Month==1,DayofMonth==1,ArrTime==1500)
--r
filter(flight,UniqueCarrier=="AA"|UniqueCarrier=="UA")
----dplyr
filter(flight,UniqueCarrier%in% c("AA","UA"))

#select for some specific rows and col
flight[,c("DepTime","ArrTime")] #this will take greater time then the below query as here index is used which takes greater time then direclty implementing
---dplyr
select(flight,DepTime,ArrTime,FlightNum)
select(flight,Year:DayofMonth,contains("Taxi"),contains("Delay"))

#start_with(),ends_with(),matches()
#chaining or pipelining
-----r
s=select(flight,UniqueCarrier,DepDelay)
filter(s,DepDelay>60) # or filter(select(flight,UniqueCarrier,DeDelay),DeDelay>60)

----dplyr
flight %>% select(UniqueCarrier,DepDelay) %>% filter(DepDelay>60)

#create two vectors and calculate euclidian distance
------------r
x1=1:5
x2=2:6
sqrt(sum((x1-x2)^2))

--------dplyr
(x1-x2^2) %>% sum() %>% sqrt()


#arrange : Reorder rows
----------r
flight[order(flight$DepDelay),c("UniqueCarrier","DepDelay")]

----dplyr
flight %>% select(UniqueCarrier,DepDelay) %>% arrange(desc(DepDelay)) #ascending by default

#mutate is used to add col i.e function of existing var
-----r
flight$Speed=flight$Distance/flight$AirTime*60   #creating speed
flight[,c("Distance","AirTime","Speed")]

---------dplyr

flight %>% select(Distance,AirTime) %>% mutate(Speed=Distance/AirTime*60)   #speed datatype dbl databaselength

#store the new variable

flights=flight  %>% mutate(Speed=Distance/AirTime*60)  # just for the one variable as select is not requiredas it create view for limited attribute
View(flights)

#summarise:REDUCE VARIABLE TO VALUES
#group_by create the groups that will be opersted on 
#summarise uses the provided aggregation function to summarise each s not z

library(hflights)
library(stats)
-------r
head(with(flight,tapply(ArrDelay,Dest,mean,na.rm=TRUE))) #with is for which dataset tapply apply on full and group the similar Dest dataset and mean is only for integer not char
head(aggregate(ArrDelay~Dest,flight,mean)) #~ based on which parameter ie linear regression # sameoutput but as a dataframe giving output

flight$ArryDelay

-------dplyr

flight %>% 
  group_by(Dest)%>%   
  summarise(avg_delay=mean(ArrDelay,na.rm = TRUE))    #if group by not used then it will aggregate and give one value
 
#summarise_each
flight %>%
  group_by(UniqueCarrier) %>%
  summarise_each(funs(mean),Cancelled,Diverted)

#mutate_each() ,ndictinct,
#ArrDelay~Dept  arrivaldeay wrpt dept
#ArrDelay~.   arriaval delay wrpt all the attributes
#summarise_each will used for each granularity of same type i.e in below min max for each group
#and if summarise is used then only one min and max as a whole
#for each uniquecarrier min max in arrival and departure delays
# here dot means all
#funs is used for using inbuilt function 

?summarise  #static , write formulae for every na we have to remove na manually by statement na.rm=T
?summarise_each  #dynamic once written it is relicated for all the attribute both will give same ans. it will skip na by its own
flight %>% 
    summarise_each(funs(mean(.,na.rm = T),max(.,na.rm = T)),ArrDelay)

flight %>% 
  summarise(mean(.,na.rm = T),max(.,na.rm = T),ArrDelay)


flight %>% 
  group_by(UniqueCarrier) %>%
  summarise(mean(.,na.rm = T),max(.,na.rm = T),ArrDelay)


flight %>% 
  group_by(UniqueCarrier) %>%
  summarise_each(funs(min(.,na.rm = T),max(.,na.rm = T)),matches("Delay"))


#for each day of month count total no of fligth and sort in order

flight %>%
  group_by(Month,DayofMonth) %>%
  summarise(count=n()) %>% 
  arrange(count)

#n function is used to calulate n( ) or ndisticnt value for count as count cannot be used directly n( ) is a parameter
#of summarise function as we cannpot use count which is not defined directly so we can use n() or n_distinct in summarise
#if there is na value then n_distinct will not give value ie error











# dplyr used for data extraction and transformation in wytip it is easy to read and write when it is 
# used with chaining syntax
# it wrk faster on data frame the basic function of dplyr aregexec 
# select filter summarise mutate and arrange summarise+group by  it can wrk with data stored in database 
# and data table
# dplyr can also use with join like left right inner semi and anti 
# windows finction for ranking of sets and many more it is better than plyr package

head(airquality)
#discription given by head

#filter
#will return all the rows that satisfy a following 