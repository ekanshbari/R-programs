#matrices
#rows and column with data it is the retangular arrangement or 2d array
#dtafram is the tabular form ie values are interlinked


m=matrix(c(1,2,3,4,5))
m
m[1,1]
#default col=1 nad row=n
m1=matrix(c(1,2,3,4,5),nrow=3,ncol=3)#warning s not of 3x3 size data but when u execute it will repeat bthe value from begining
m1
#by default columwise filling of matrix
#rowwise
m2=matrix(c(1:9),nrow=3,ncol=3,byrow=TRUE) #bydefault byrow =FALSE that's why col.wise
m2
 
#diagonal matrix 1st para. is row and next col
diag(c(4,5,6),3,3)
diag(c(4,5,6))# by fefault 3,3 or depending on the diagonal vales
diag(c(4,5,6),2,3)
diag(c(4,5,6),5,9)

#identity matrix
diag(c(1),3,3)
diag(1,3,3)
diag(5,3,3)


#naming row and col

colnames(m2)=c("c1","c2","c3")
rownames(m2)=c("r1","r2","r3")
m2

#if change the size and do naming of limited rows or col it will give error of size

#dimension 
dim(m2) #give size of the matrix

#check no of rwo
nrow(m1)
#check no of col
ncol(m1)

z=matrix(c(-1,-2,-10,5),nrow=2,ncol=2)
z
y=matrix(c(-1,-2,-10,5),nrow=2,ncol=2,byrow=TRUE)
y
#length
length(y)
prod(dim(y)) #prod=product

m1[1:2,]
m1[1,]
m1[,]

#just to retrieve some value
m1[c(1,1),c(1,3)]#c(1,1 ) for rows and c(1,3) col 1 and 3

#all rows but not 2 col
m1[,-2]
m1 
# to remove any row
m1[-3,]
m1
q=m1[1,3]=13
m1
#repelace all the value consisting of 1
m1[1,2]=15
m1
m1[m1[,]==1]=0 # alter m1[m1==3]=18
m1
m1[m1==1]="Z"
m1


#####################################3

#all row and 2 col
m2
???# to access with col name
m2[,c("c1","c3")]
m2[c("r1","r2"),]


#add to matrix
m1+m2
m1*m2

#size should be same for add and for mul row1=col2



m4=matrix(c(1,2,3,4))
m4
#if 4x3 and 3x1 condition satisfy for mul but still error than tell r environment thta it is compatible by using piping by usinig %*%

# %*% regular multipication (piping) as amultipiliaction of matrix multipication 
# element wise multiplication we use *












