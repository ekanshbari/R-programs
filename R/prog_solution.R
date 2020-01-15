x<-c(67,87,26,85,6,45)  #1,2,3,4,5,6
y<-c(54,64,22,92,20,88)  #7,8,9,10,11,12

g<-function(x,y)
{
    sum1<-0
    sum2<-0
    for(i in x)
    {
      sum1 <- sum1+(i^2)
    }
    for(i in y)
    {
      sum2<- sum2+(i^2)
    }
    return(sum1/sum2)
}

h<-function(x,y)
{
  n<-length(x)
  sum<-0
  for(i in 1:n)
  {
    sum<-sum + ((x[i]/y[i])^2)
  }
  print(sum)
}

g(x,y)
h(x,y)

