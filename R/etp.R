#Q9

library(dplyr)
#b

View(BOD)
x=subset(BOD,select=Time)
View(x)

#======================

data()
#a


m=c(1,2,25,36,4,NA)
fun=function(m){
  
  z=m[!is.na(m)]
 print(z)
}

fun(m)
#=================================
  
k=list(m)
fun1=function(k){
  if(NA %in% k){
    print("NA Exist")
  }else{
    print("NA not exist")
  }
    
}

fun1(k)














