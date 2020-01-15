# library("ggplot2")
# 
# ggplot(data=iris,aes(y=Petal.Length,x=Sepal.Length))+geom_point()
datasets
astetic
geometry
facet

astetic=>pass colours
ggplot(data=iris,aes(y=Petal.Length,x=Sepal.Length,col=Species))+geom_point()
===================
  
  to change the shape of species
ggplot(data=iris,aes(y=Petal.Length,x=Sepal.Length,col=Species,shape=Species))+geom_point()


wwe can't use multiple file so we have to read
read house price in 
view house price 

categorical variable=> bar => bins we can set
contineous=histogram graph =>we can't set bins


dat1=read.csv(file.choose(),header = T)
ggplot(data=dat1,aes(x=SalePrice))+geom_histogram()
ggplot(data=dat1,aes(x=SalePrice))+geom_histogram(bins=50,fill="brown")
ggplot(data=dat1,aes(x=SalePrice))+geom_histogram(bins=50,fill="brown",color="black")#coloror col

shape is not used every where
ggplot(data=dat1,aes(x=SalePrice,fill=CentralAir))+geom_histogram(bins=50)   #fill=> count
ggplot(data=dat1,aes(x=SalePrice,fill=CentralAir))+geom_histogram(bins=50,position="fill") #poisition=>proportion


#============barplots

total no .of count or freaquency
bons are not passed over Here
so for bar gtraph we cant use bins
bar => numeric=>factor=>use in bar chart

ggplot(data=dat1,aes(x=HouseStyle))+geom_bar()
ggplot(data=dat1,aes(x=HouseStyle,fill=CentralAir))+geom_bar()
ggplot(data=dat1,aes(x=HouseStyle,fill=CentralAir))+geom_bar(position="fill")

ggplot(data=dat1,aes(x=HouseStyle,fill=SaleCondition))+geom_bar()

ggplot(data=dat1,aes(x=HouseStyle,fill=SaleCondition))+geom_bar(position="fill")


#===frequency polygon

gives line chart and have bin and same as histogram

ggplot(data=dat1,aes(x=SalePrice))+geom_freqpoly(bin = 50)
ggplot(data=dat1,aes(x=SalePrice,col=HouseStyle))+geom_freqpoly(bin = 60)
ggplot(data=dat1,aes(x=SalePrice,col=HouseStyle))+geom_freqpoly(bin = 60,position="fill")
ggplot(data=dat1,aes(x=SalePrice,col=CentralAir))+geom_freqpoly(bin = 60)


#======boxplot

ggplot(data=dat1,aes(x=factor(BedroomAbvGr),y=SalePrice))+geom_boxplot() #contineous wrt x=categorical for box plot factor for numerical
       ggplot(data=dat1,aes(x=factor(BedroomAbvGr),y=SalePrice,fill=CentralAir))+geom_boxplot()
              ggplot(data=dat1,aes(x=factor(BedroomAbvGr),y=SalePrice,fill=factor(BedroomAbvGr)))+geom_boxplot()
              ggplot(data=dat1,aes(x=factor(BedroomAbvGr),y=SalePrice,fill=GarageType))+geom_boxplot()

              


#=======smooth line
  
              ggplot(data=dat1,aes(x=SalePrice,y=LotArea))+geom_smooth()  #continous wrt continuoes grey color is error 
              to avoid error we use
              ggplot(data=dat1,aes(x=SalePrice,y=LotArea))+geom_smooth(se=F) #standard error
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=CentralAir))+geom_smooth() 
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=Utilities))+geom_smooth() 
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=HouseStyle))+geom_smooth() 

#===========applying "lm (linear model) method geom_point for scatter plot
                     
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea))+geom_point()+geom_smooth(method="lm",se=F)  by defaolt lm method but geo point is necessary
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=CentrlAir))+geom_point()+geom_smooth(method="lm",se=F)

                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=HouseStyle))+geom_point()+geom_smooth(method="lm",se=F)
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=factor(RoofStyle)))+geom_point()+geom_smooth(method="lm",se=F)+Facet(~BidgType)

#===============================facet
                     grouping of data based on different factor in same area but in facet grid will seperate with area by making grid lines 
                     
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=factor(RoofStyle)))+geom_point()+
                       geom_smooth(method="lm",se=F)+facet_grid(~RoofStyle) # here factor cause Roofstyle is contineous and we have to ive categorical value for the coour
                     
                     ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=CentralAir)+geom_point()+geom_smooth(method="lm",se=F)
                            +facet_grid(~CentralAir)
                     
                            #===theme

                            ggplot(data=dat1,aes(x=SalePrice,y=LotArea,col=CentralAir)+geom_point()+geom_smooth(method="lm",se=F)
                                   +facet_grid(~CentralAir)->o1
                                   
                                   o1+labs(title="Any Name",fill="CentralAir")->o2
                                   ?theme
                                   
                                   o2+theme(panel.background=element_rect(fill="palegreen"))->o3
                                   
                                   o3+theme(plot.title=element_text(hjust=0.5,face="bold",colour="blue"))















