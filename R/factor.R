#factor

gender=c("m","f","m","f","m")
g=as.factor(gender)
class(g)
class(gender)
str(gender)      #structure for particular value return integer value
str(g)
#interensic order is not same
g1=as.factor(gender)
class(g1)
g<g1   #not interensic order so gives NA

gender=c("m","f","m","f","m",ordered=TRUE)
h=factor(gender,ordered=TRUE)
gender2=factor(c("m","f","f","f","f"),ordered = TRUE)
gender3=factor(c("m","f","m","f","m"),ordered = TRUE)
str(h)
g1=as.factor(h)
str(g1)
class(g1)
g<g1   #comparision only with ordreed factor 
gender<gender2
gender
gender2
gender3
str(gender2)
str(gender3)
gender2<gender3
#factors are created for categorical variables one tha thas two or more categories where ther is no interensic order to the category 
#factors are interger return type or integer vectors
#chande the level of factors
gender4=as.factor(gender)
gender4
gender_new=factor(gender,labels="female","male")   #NA caueses of factor inside factor
gender_new
gender_new=factor(gender,levels="female","male")
gender_new

help("factor")
bp=c("a","b","ab","o")
bp
bp=c("a","b","ab","o",NA)
bp
levels(bp)
blood=factor(bp)
nlevels(blood)  # no.of levels or str(blood)
str(blood)

blood=factor(blood,levels = c("BT_A","BT_B","BT_AB","BT_O",ordered = TRUE)) #to change the levels
blood
str(blood)
blood=factor(blood,levels = c("BT_A","BT_B","BT_AB","BT_O"),labels= c("BT_A","BT_B","BT_AB","BT_O"),ordered = TRUE) #to change the levels
blood

levels(blood)=c("BT_A","BT_B","BT_AB","BT_O")
blood
blood1=factor( c("BT_A","BT_B","BT_AB","BT_O"),labels= c("BT_A","BT_B","BT_AB","BT_O")) #to change the levels
blood1
#labels means remaing and exclude NA while levels include


blood=factor(c("a","b","ab","o"))
str(blood)

bl=factor(c("a","b","ab","o",NA),exclude=NULL)
bl=factor(c("a","b","ab","o",NA))
str(bl)
is.na(bl)
anyNA(bl)
Inf   #infinite
NaN    #nt a no.
b=1/0
b
0/0






#to import excel
#load 
install.packages("xlsx")
library(xlsx)

a=read.xlsx(file.choose(),1)   #here 1 is index i.e sheet no. 1
View(a)
b=read.xlsx("")#here give path of excel file and forward slashand in last , 2 for sheet 2,n_max=1000
View(b)
str(b)
#cluster of categories 
str(b)
View(b)#namx is added as the column

help("readxl")




blood1=factor(c("a","ab","b","o","a","ab"),levels = c("bta","btab")) #not match so na 
blood1

blood1=factor(c("a","ab","b","o","a","ab"),levels = c("bta","btab","a","o"))  #some value matches
blood1


blood1=factor(c("a","ab","b","o","a","ab"),levels = c("bta","btab","a","o"),labels = c("bta","btab","btb","o")) #not ordered so randomly assigning
blood1





























