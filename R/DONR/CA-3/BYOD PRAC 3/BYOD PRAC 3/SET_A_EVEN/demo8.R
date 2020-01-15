install.packages("sqldf")
install.packages("stringr")
library(sqldf)
View(iris)
sqldf("select * from iris")
sqldf("select * from iris limit 5")
sqldf("select count(*) from iris")
sqldf("select Species, count(*) from iris group by Species")

sqldf("select * from iris where Petal.Length=1.4")

colnames(iris) <- c("sepallength","sepalwidth","petallength","species")
s1 <- "Hello 'World'"
print(s1)

s2 <- 'Hello "lucifer"'
print(s2)

a <- "Hello"
b <- "Chey"
c <- "Elaunavu"

print(paste(a,b,c))

print(paste(a,b,c, sep ="-"))
print(paste(a,b,c, sep ="",collapse = ""))

d <- print(paste(a,b,c, sep = ""))

result <- format(23.123456789, digits = 9)
print(result)

res <- format(c(6,13.14521), scientific = TRUE)
print(res)

result <- substring("Extract",5,7)
print(result)

res1 <- format(23.47, nsmall = 5)
print(res1)

r <- format(6)
print(r)

rs <- format(13.7,width = 6)
print(rs)

result <- format("Hello",width = 8,justify = "l")
print(result)

result <- format("Hello",width = 8,justify = "c")
print(result)

res<- toupper("Changing to Upper")
res

res <- tolower("CHHANGGE")
res

res <- substring("Extract",5,7)
res

b <- "hello world"
nchar(b)

getwd()

setwd("/home/uday/Desktop")

fin <- read.csv(file.choose(), na.strings = c(""))
#fin <- read.csv("Future-500.csv", na.strings = c(""))
head(fin,20)
tail(fin)
summary(fin)
str(fin)


#changing from non factor to factor
fin$ID <- factor(fin$ID)

fin$Inception <- factor(fin$Inception)

#factor variable Trap
#for character

a<- c("12","13","14","15")
a

b<- as.numeric(a)
b

#for numeric from factor
z<- factor(c("12","13","14","15"))
z
y <-as.numeric(z)
y
#correct way

x<- as.numeric(as.character(z))
x

#fin$Profit <- factor(fin$Profit)
fin
str(fin)

#fin$Profit <- as.numeric(factor(fin$Profit))

#sub and gsub

fin$Expenses <- gsub("Dollars","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses)
head(fin)


fin$Revenue <- gsub("\\$","",fin$Revenue)
fin$Revenue <- gsub(",","",fin$Revenue)
head(fin)

str(fin)


fin$Growth <- gsub("%","",fin$Growth)
head(fin)


fin$Revenue <- as.numeric(fin$Revenue)
fin$Profit <- as.numeric(fin$Profit)
fin$Growth <- as.numeric(fin$Growth)


str(fin)

TRUE ==4

F ==3

TRUE== FALSE
T == T
TRUE ==T

TRUE == NA
F == NA
NA == 2
NA <3
NA <= 5




#DEALING WITH MISSING DATA 
#LOCATING MISSING DATA 

complete.cases(fin)
!complete.cases(fin)
fin[!complete.cases(fin),]


#filerting non missing data 

fin[fin$Revenue== 9746272,]
which(fin$Revenue== 9746272)
fin[which(fin$Revenue== 9746272),]

fin[3,]

fin[which(fin$Employees== 45),]

# IS.NA FOR MISSING VALUES

s<- c(1,2,3,5,67,NA)
s
is.na(s)


is.na(fin$Expenses)
fin[is.na(fin$Expenses),]

#remove records with missing data 

fin_backup <- fin

fin[!complete.cases(fin),]
fin[is.na(fin$Industry),]
fin[!is.na(fin$Industry),]

fin <- fin[!is.na(fin$Industry),]
fin
fin[!complete.cases(fin),]

#reseting the dataframe index

nrow(fin)
rownames(fin) <- 1:nrow(fin)
fin


#other way to reset dataframe index
rownames(fin) <- NULL


#replace missing data : factual analysis

fin[is.na(fin$State),]

fin[is.na(fin$State) & fin$City=="New York",]

fin[is.na(fin$State) & fin$City=="New York","State"] <- "NY"


#check

fin[c(11,377),]




fin[is.na(fin$State) & fin$City=="San Francisco",]

fin[is.na(fin$State) & fin$City=="San Francisco","State"] <- "CA"
fin[c(82,65),]



#replace data by median
fin[!complete.cases(fin),]

med_emp_retail <- median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE)

med_emp_retail


fin[is.na(fin$Employees) & fin$Industry=="Retail","Employees"] <- med_emp_retail

#check
fin[3,]



med_emp_financial <- median(fin[fin$Industry=="Financial Services","Employees"],na.rm=TRUE)
med_emp_financial



fin[is.na(fin$Employees) & fin$Industry=="Financial Services","Employees"] <- med_emp_financial
fin[330,]



fin[!complete.cases(fin),]


med_emp_growth <- median(fin[fin$Industry=="Construction","Growth"],na.rm=TRUE)
med_emp_growth


fin[is.na(fin$Growth) & fin$Industry=="Construction","Growth"] <- med_emp_growth
fin[8,]


fin[!complete.cases(fin),]


med_rev_cont <- median(fin[fin$Industry=="Construction","Revenue"],na.rm=TRUE)
med_rev_cont

fin[is.na(fin$Revenue) & fin$Industry=="Construction","Revenue"] <- med_rev_cont

fin[!complete.cases(fin),]

fin$Expenses

med_exp_cont <- median(fin[fin$Industry=="Construction","Expenses"], na.rm = TRUE)
med_exp_cont
fin[is.na(fin$Expenses) & fin$Industry=="Construction" & is.na(fin$Profit),"Expenses"] <- med_exp_cont

fin[!complete.cases(fin),]



#derived values

fin[is.na(fin$Profit),"Profit"] <- fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Expenses"]
fin[is.na(fin$Profit),"Profit"]

fin[is.na(fin$Expenses),"Expenses"] <- fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]
?is.na
fin[is.na(fin$Expenses),"Expenses"]
str(fin)
fin$Expenses<-as.numeric(fin$Expenses)
str(fin)
getwd()