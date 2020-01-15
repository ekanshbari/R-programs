#Q1

subject=c("sci","math","eng")
Joe=c(65,30,67)
Smith=c(87,89,75)
testlist=list(subject,Joe,Smith)
testlist
testlist[[2]][2]=70
testlist[[2]][2]

#q2

vector=c(0.1,0.8,35.6,1.2,9.6,33.5,0.0,0.5,1.7,11.5)
mean(vector)
sd(vector)


#q3
letters
LETTERS[length(LETTERS)]

#q4
emp_id=c(10:6)
emp_names=c("John","Dev","Mith","Ryan","Gary")
salaries=c(30000,15000,22000,18000,25000)
emp.data=data.frame(emp_id,emp_names,salaries,stringsAsFactors=F)
emp.data

#q5
read1=read.csv("C:/Users/HP/Desktop/caR.csv")
read1
x=edit(read1)
x
