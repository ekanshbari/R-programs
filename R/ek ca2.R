
#ques3
i=1
while(i<=6){
  i=i+1
  print('i')
  if(i==4){
    break
  }
}
for(i in c(1:6)){
  if(i!=4){
    print(i)
    next
  }
}
#============================================================

#ques1
df=read.csv(file.choose(),sep=',');
View(df)
higher=subset(df, suicides.100k.pop*100000 > 800000)
View(higher)
lower = subset(df, suicides.100k.pop*100000 < 100000)
View(lower)
moderate = subset(df, suicides.100k.pop*100000 > 100000 & suicides.100k.pop*100000 < 799999)
View(moderate)

#===============================================================================
#ques2
countries=c(levels(df$ï..country))
countries
aggregate(df$suicides.100k.pop, by = list(df$generation), max)
aggregate(df$suicides.100k.pop, by = list(df$gender), max)
#==================================================================================
