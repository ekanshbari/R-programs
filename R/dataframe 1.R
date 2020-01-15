#data frames allowing us to store data in tabular form
vec1 = c(1,2,3,4,5)
vec2 = c("MAX","John","Joe","John","Max")
vec3 = c(25,30,36,40,28)
vec4= c("HR","MBA","CSE","IT","ECE")
df= data.frame(vec1,vec2,vec3,vec4)
df

#FETCH
df[3,2]
#Levels are to give us a factor of class 
df[3,1]
df[1:5,2]
df[,2:3]
#df1=read.table("C:/Users/PAWAN/Desktop/INT 233/Datasets/20254699_SuperStoreUS_2015.xlsx")
df2=read.csv("C:/Users/PAWAN/Desktop/INT 232/TREE COVER.csv",header=TRUE)
df2$Tree_Cover
svalue = data.frame(df,vec2=="Joe"|vec3<31)
svalue
View(svalue)
View(df2)
df2=data.frame(df2)
attach(df2)
States

mtcars
help(mtcars)
summary(mtcars)
mtcars$mpg
attach(mtcars)
mpg
wt
detach(mtcars)




vec1=c(1,2,3)
vec2=c("MAX","John","Joe")
vec3=c(25,30,36)
df=data.frame(vec1,vec2,vec3)
df
df[2,2]
df[2,]#2nd row all column
df[,3]# all row 3rd row
df[1:3,3]#upto 3rd row with 3rd column
