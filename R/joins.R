#joins

#dplyr package installation
install.packages("dplyr")
library("dplyr")


#left,right,inner,semi,anti,full

lt=data.frame(Name=c("Mohit","Rohit","Joe"),Month=c("jan","feb","march"),Height=c(121.5,152.4,170),Weight=c(25,45,50))

rt=data.frame(Name=c("Sam","Joe","Mohit","Rohit","Emma"),Dept=c("cse","it","hr","it","ds"))


data_left_join<-left_join(lt,rt,by="Name")
data_left_join
#warning as fuctions not match as rt and lt have different size
data_right_join<-right_join(lt,rt,by="Name")

data_full_join<-full_join(lt,rt,by="Name")

data_inner_join<-inner_join(lt,rt,by="Name")

help("semi_join")#only give col of left table gives all row of leftwhere there is matching with right

data_semi_join<-semi_join(lt,rt,by="Name")

#anti= return all rows from lt where there is no match in rt keeping just colums of x


