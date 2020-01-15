##family of function

data_pvc=read.csv(file.choose(),row.names = 1)  #rx ofow.name=1 tells the complier that first row is name ie header and if not consider then five x factor
data_pvc
class(data_pvc)  #reading will give in dataframe
mat_pvc=as.matrix(data_pvc) #to convert to matrix
mat_pvc
class(mat_pvc)
str(mat_pvc)

#######33to calculate max of every row

max(mat_pvc[1,])
max(mat_pvc[2,])
max(mat_pvc[3,])
max(mat_pvc[4,]) 

######### or can use for loop for case above

for (i in 1:8) {
  cal=mat_pvc[i,]
  cal_max=max(cal)
  print(cal_max)
  
}

#1=>row 2=>col
#apply family
#to calculate max row wise
apply(mat_pvc,1,max)

#to calculate max col wise
apply(mat_pvc,2,max)

#dataframe  with apply
#convert matrix to fataframe

#apply funvtion on array or matrix but dataframe also
#apply family convert multi line code to one line code
df_pvc=as.data.frame(mat_pvc)
class()






















