###########3create a vector
x=c(11.5,2,12,7,3,5.2,18,6,57,35)
means=mean(x)
means
#####find mean trim works with sorted list
result=mean(x,trim=0.2)        #sort in ascending order trim 0 to 0.5 and bydefault trim=0
#if trim =0.1 means 1st and last wll be excluded 0.2 means first 2 and ;last two excluded
#na.rm=true means remove na

result=mean(x,na.rm = TRUE) 

#if rm.na not used then give na as a result coz trim work on sorted list so machine will not 
#know the place of na so finally gives na

result
###############

result=median(x) #trim is not used with meadian but na.rm is valid
result

#create mode function as mode function is not there in environment
x=c(3,3,2,3,1,2,3,4,1,5,5,3,2,3)
d=unique(x)
d
tabulate(match(x,d))   # tabulate gives occurence or frequency
z=match(x,d)  # match return indexs matching the d values index and assinging to x
tabulate(z)
which.max(tabulate(z))# which.max give max value from the frequency values index
d[which.max(tabulate(z))] # will give the value whoch is occuring most of the time

#if there is any na value in x then it will consider na give frequency of it, it will not affect
#and if wants to ignore then the na from x then

mode=function(x,na.rm=TRUE){
  if(na.rm){
    x=x[!is.na(x)]
  }
  ux=unique(x)
  return(ux[which.max(tabulate(match(x,ux)))])
}

#mode(x,TRUE) if return is used then no need to use this statement

#
modes=function(x){
  ux=unique(x)
  tab=tabulate(match(x,ux))
  ux[tab==max(tab)]
  
}


#------------------------------------------------------
fmode=function(x){
  unique_value=unique(x)
  unique_value[which.max(tabulate(match(x,unique_value)))]
}

fmode(x)
#----------------------------------

cos(0.5)
exp(1)
log2(1) # 2=base
log(8,2)  #2=base
log(64,4)  #4=base
2^10
8==15
as.Date("2006-05-06")   # creaated this value as date in place of (as) if(is) the error
as.Date("2006-05-06")+6 add 6 to date


#-----------------------------------------------------------------------------------------------------------------















