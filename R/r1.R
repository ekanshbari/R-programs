list
emp.id=c(1:5)
emp.name=c("marck","joe","john")
emp.count=14
 
#c is a function 
emp.id[1]
emp.name[1]
#vector is a collection of same datatype
emp.all=list("ID"=emp.id,"NAME"=emp.name,"COUNT"=emp.count)
#to remove we use rm and for multiple we use comma seperator(remove will remove the combination for all but id and rest will remain there)


#create a vector for values 1:20 , 20:1 , combine tis to vector 
#new_d<-c(a,b) here both have saee data type but not the list

ex=list(noun="toy",size=9)
ex
new_ex=list("this list refer to another list",ex)
new_ex



req=list(id=c(1,2,3),name=c("max","joe"))
req_next=list(age=c(15,25,46,89),sallary=c(12000,25000))
req_new=list(req,req_next)
req_new
req_new=c(req,req_next)


#tinyurl/learneasyr
#dataframe use to store tabular form of data

































