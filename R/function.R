#function

q1=function(){
  print("hello")
}

q1()
#sourse on console

q11=function(a,b){
  c=a+b
  print(c)
}

q11(1,2)

q111=function(a=5){
  print(a)
} 


q2=function(a=3,b=4){
  z=a+b
  print(z)
}

q2()

#ssave and execute then if we dont pass value then it will take previous value
#but when we load then the previous value get erased 

#format

format(12.326487865487,digits=5) # total digits = 5 and by defULT 7 on a total
format(12.326487865487)
format(1112.326487865487)
format(12468216546654.326487865487,digits=5,scientific=FALSE)

format(12.326487865487,nsmall=5,digits=5)
format(12.326487865487,justify='c',width=15)
format(12.326487865487,justify='l',width=15)
format(12.326487865487,justify='r',width=15)






