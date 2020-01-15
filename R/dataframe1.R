#dataframe
vec1=c(1,2,3,NA)
vec2=c("MAX","john","joe",NA)
vec3<-c(25,30,36,20)
vec4=c("HR","MBA","CSE",NA)
df=data.frame(vec1,vec2,vec3,vec4)

print(df)
#we cannot put null to equalise the row vale it will nit take so we have to put NA for implementing

#fetch
#same as matrix
df[3,2]
#level defines the uniqe value that is in the data set
df[3,1]
df[3,3]

#categorical data = class
#level = character

#to retrieveall rows and some col

df[1:2,2:3]
df[,2:3]     # for all row and for both df[,]

#read of file ie excel path should have forward slash otherwise error
df2=read.csv("C:/Users/HP/Desktop/TREE COVER.csv")
df2
df2$States
df2$Tree_Cover
summary(df2)      #mean median mode and summary is applicable on numeric datatype
getwd() #to get current workin directory
setwd("C:/Users/HP/Documents")  #to change the working directory
history()

df3=read.csv("C:/Users/HP/Desktop/TREE COVER.csv")
df3
getwd(df3)



svalue = data.frame(df,vec2=="joe")
svalue   #search value
svalue = data.frame(df,vec2=="john"|vec3>25)
df3
svalue=data.frame(df3,States=="Goa")#error
#df3 is cfreated as list
svalue=data.frame(df3,df3$States=="Goa")

#we cannot convert lissts to fram so we have to use attach then we can use without df3$
df3=data.frame(df3)
class(df3)
attach(df3)

#if any data set is once attach we can use it with any variable without df3$ 
States
vec1
Tree_Cover

help(mtcars)
summary(mtcars)
mpg
mtcars$mpg
attach(mtcars)
mpg
vs
detach(mtcars)   #deattach the attribute from the R environment
mpg
mtcars$mpg

