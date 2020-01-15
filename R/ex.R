#3
i=1
while (i<=6) {
 if(i<4){  
   print(i)
   i=i+1
 }else
   break
   
}

for (i in 1:6) {
  if(i!=4){
    print(i)
  }
  
}
#=================================================================================================

#2
# x=read.csv(file.choose())
# View(x)
# u=unique(x$country)
# z=match(x$country)
# ret=subset(x,x$country )
x=read.csv(file.choose())
View(x)
u=unique(x$country)
z=match(x$country)
ret=subset(x,x$country )

#---------------------------------------------------------------------------------------------
#1

a = read.csv(file.choose() ,sep = ",")
View(a)
higher = subset(a,a$population > 800000)
View(higher)

lower = subset(a,a$population < 100000)
View(lower)

moderate = subset(a,a$population > 100000 & a$population < 799999)
View(moderate)