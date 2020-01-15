#looping

a=30   #a=as.interger(a) 
b=40L
c=as.integer(a)
class(b)
class(a)
class(c)


if(is.integer(c)){
  print("is integer")
}else{
  print("not integer")
}

#else if
z=c("how","when","what")
z
a="how"
a%in%z   # to check wheather how is in z vector or not and it is case snsitive

if("how" %in% z){
  print("how is there in z vector")
}else if("How"%in% z){
  print("How is there in z vector")
}else {
  print("not found")
}


#switch
# syntax switch(ex,case1,case2...)

switch(3,"1","2","3")
switch(2,"1","2","3")
switch(4,"1","2","3")
switch(3,"1","2","3")
m=1
switch(m,sum(5,4),"2","3")

counter=5
repeat{
  print("hello")
  counter=counter+1 
  if(counter==10)
    break
}

#we stop  infinte loop either by stop in compiler or in debug stop debugging

ls()
#tells what variables we have used

.name="Ekansh"
ls()
# .name not listed in list of ls as . symbol will hide the 
#insted we us all.name
print(ls(all.names=TRUE))  # this will show all the hodden variable

rm(.name) # remove hidden variable

#to clear all the variables we use rm(list=ls()) here we weill use list and apart from it anything use will throw error

#rm(list=ls(all.names=TRUE)) ls is itself is a list so that's why we use list as variable to store

# logical operators

v=c(1,2,3,4,5,6)
t=c(0,5,4,2,7,8)
x=c("a","b","c","d","e","f")
y=c("z","a","s")
# if size of vector is not same then it will repeat the value of 2nd vector
v&t #+ve integer <0 then true else false
v&x # error as not same data type but work with comple


v&&t # this match only 1st vale

v|t # if both value is 0 then oly false else true in all case
v||t # only 1st vale

x&y #error as operations are possible only for numeric, logical or complex types

!v
!t
2^3
2^10  # power
!(4^2)

seq(1,10,2)# parameter =>from,to,by,length
# assignment operator <<-
var_seq<<-seq(1,10,2)
var_seq
seq(from=1,to=15,by=2)
help("seq")# or ??("seq")

seq(from=1,by=2,length=3) #either length or to #seq(1,,2,10)



#while loop
count=5
while (count<10) {
  count=count+1
 # print(cat("while loop",count)) this will give null in the end coz cat is printing its value and print is getting nothing ie cat is returning null to print so printing null
    cat("while loop",count,"\n")
    print(paste("WHILE LOOP",count)) ##this will take quotes as it is while in cat it will not consider quotes
    
}


# for loop

for (i in 1:50) {
  print(i)
  
}


l=10
for (i in l) {
  print(i)
  
}

b=c(1:10)
for (i in b) {
  print(i)
  
}

# if increament by some vale then use seq

for (i in seq(1,10,3)) {
  print(i)
  
}


m=c(1:10)
for (i in seq(m[1],m[6],2)) { # it will take m[1]=from , m[6]=6 from the vector m ie(1:10), by=2
  print(i)
  
}

sum=0
n=10
for (i in seq(1,n,1)) {
  sum=sum+i
  print(c(i,sum))
  
  
}



sum=0
n=10
for (i in seq(1,n,1)) {
  sum=sum+i
  print(c(i,sum))
  if(sum>15){
    break
  }
  
}



sum=0
n=10
for (i in seq(1,n,1)) {
  sum=sum+i
 
  if(sum>15){
    break
  }
  print(c(i,sum))
  
}



































































































































