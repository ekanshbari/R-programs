x <- c(1, 5, 4, 9, 0,-25)
typeof(x)
y=c(1,2,3,4)
typeof(y)

z<- c("first"=3, "second"=0, "third"=9)
names(z)
z["first"]


#inbuilt datset
data()

#for showing dataset iris here V is capital of view
View(iris)

#for cols
ncol(iris)

#for rows
nrow(iris)


#mtcars dataset
View(mtcars)

#attributes in iris
?iris

?mtcars
str(mtcars)

#fetch value
#data of sertosa class or set then we will... use subset() or dplyr package
ret=subset(iris,iris$Species=="setosa") # paar1 dataset namae, dataset's variable
ret 
View(ret)


###################

ret=subset(iris,iris$Species=="setosa" & iris$Sepal.Length<4)
ret

ret=subset(iris,iris$Species=="setosa" & iris$Sepal.Length>4)
ret

ret=subset(iris,iris$Species=="setosa" & iris$Sepal.Length>4.9)
ret

#paths of libraries where r is install
.libPaths()
# libraries loaded in r environmenet
library()

#which library is currently loaded
search()


#after this xlsx will be there in yhe
library(xlsx)
search()
library(rJava)


Sys.setenv(Java_Home='C:\\Program Files') # here path of java environment otherwise give error 
library(rJava)
library(xlsx)
search()


#########################################################

var_a=c(10,2,50,25,8,9)
var_a
sort(var_a)  #ascending order by default

#decreasing order
sort(var_a,decreasing = TRUE)

#substring to fetch the in between string
substring("Extract",2,4) #from 2 to 4
substring("Extract",5,7) 

#to write extract's
var_c="Extract's"
var_c

# var_c='Extract's'
# var_c

var_c='Extract"s'
var_c

#repeat by dafault it will print once
rep(1:4)
rep(1:4,2) #two times by passing 2
rep(1:4,each=2) #each two times
rep(1:4,each=2,times=3) # each two times with overall 3 times
rep(1:4,each=2,times=3,length=10)   #with len will also work


x=factor(LETTERS[1:4]);names(x)=letters[1:4]   #two satement seperated by ;    and levels are the capital letteres
x

rep_len(x,10) #x can  be of any type
rep.int(x,2)
rep(x,2) #this will give names and values printed twice while in .int names will not be there
rep(x,each=2)


f=list(id=1:10,name="april")
rep(f,3)
f$id
id


#generate factor levels
n=gl(3,4,labels=c("t","s","d")) #3 levels with 4 times repetation
n

#readline
a=readline()
50
a

a=readline("enter no.")
150
a

readinfo=read.csv(file.choose(),sep=',')
View(readinfo)
new_data=subset(readinfo,Proteins==5) #for no of rows use hesd function
new_data


#to write a data in csv
write.csv(new_data,"output.csv")
getwd
getwd()






















































