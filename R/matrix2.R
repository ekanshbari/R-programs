
# %*% regular multipication (piping) as amultipiliaction of matrix multipication 
# element wise multiplication we use *



a=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
b=matrix(c(10,20,30,40,50,60,70,80,90),nrow=3,ncol=3,byrow=TRUE)
a
b
a*b

a%*%b
# remainder %%
# % is not defined
# a%/%b= quotient int integer and a/b sme float or exact division

#factors
#used to label the value in attribute where there is less no. of change in value

gender=c("m","f","m","m","f")  # vector
class(gender)
is.factor(gender)

x=factor(gender)
is.factor(x)
x   # as factor so give value and levels 

# factor is categorical and it is use for prediction

length(x)

h=c(1,2,3,4,5,6)
w=c(10,20,30,40,50,60)
g=c("m","f","m","m","f","f")
d=data.frame(h,w,g,stringsAsFactors = FALSE)
d
is.factor(g)
is.factor(d$g)
g
d$g
v=c(0,0,0,1,1,0)
z=data.frame(h,w,g,v=factor(v))
z
is.factor(d$v)
d$h
d$v


