#read binary file

write.table(mtcars,file="mtcars.csv",row.names = FALSE,na="",col.names = TRUE,sep = ',')
write.table(mtcars,file="mtcars.csv",row.names = FALSE,na="",col.names = TRUE,sep = '$')

new_mtcars=read.table("mtcars.csv",sep = ",",header = TRUE,nrows = 5)
new_mtcars
write.file=file("path","wb")#path is default r douments and wb =write binary file or rb =read binary file
writeBin(colnames(new_mtcars),write.file)
writeBin(c(new_mtcars$cyl,new_mtcars$am,new_mtcars$gear),write.file)
close(write.file)
read.file=file("sme path","rb")
col.names=readBin(read.file,character(),n=3)
bindata=readBin(read.file,integer(),n=18)
bindata
bindata[14:18]
