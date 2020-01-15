#dataframe
vec1=c(1,2,3)
vec2=c("MAX","john","joe")
vec3<-c(25,30,36)

df=data.frame(vec1,vec2,vec3)
l1=list(vec2,vec2)
str(l1)
df[2,2]
df[2,]
df[,]
df[,2]
df[,3]
df[1:3,3]
#update

df[2,2]="SAm"
df=data.frame(vec1,vec2,vec3,stringsAsFactors=F)#stringsAsFactors=T by default for UPDATION for numeric its ok but forstring we have t change it to F
df1=data.frame(vec1,vec2,vec3)
# update alter by edit() user define in particular instance

mydf=data.frame(df1)
mydf=edit(df1)
print(mydf)
mydf[2,2] # will give john and sam too we have updated by the previous will also remain as stringsAsFactors=T so to avoid this we do F


#to add new row and col we use rbind and cbind
df
df=cbind(df,"marks"=c(70,50,55))
df
df=rbind(df,c(4,"mac",24,80)) #if we dont pass the the last parameter then loop will be there and in plae of 80 4 will be there
df
class(marks)
attach(df)
class(marks)

df=rbind(df,c("zak",24,25))
df
detach(df)
# stringsasfactors=f used with r and c bind


newdf=data.frame("Name"=c("A"),Age=c(10),Marks=c(70))
newdf


newdf1=data.frame(Name,Age,Marks)
attach(newdf)
Name
Age
Marks

detach(newdf)
print(newdf1)

readcsv=read.csv("C:/Users/HP/Desktop/TREE COVER.csv")
readcsv
View(readcsv)

str(readcsv)#give structure of the frame
attach(readcsv)
id
States

detach(readcsv)

readcsv=read.csv(file.choose(),sep = ",",header = T)   #instead of providing location we can browse  by this
View(readcsv)
#header if T means not in record else F then it will count as a data

print(df)
#deleting value

df[-5,-2]
df
#we have to update to delete itherwise it will  be giving the previous value we save it by using variables











































