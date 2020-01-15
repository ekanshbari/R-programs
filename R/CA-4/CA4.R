library("ggplot2")
setwd("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/Nikhil CA-4")
getwd()
Movies <- read.csv("Dataset.csv")
head(Movies)
summary(Movies)
str(Movies)

ggplot(data=Movies,aes(x=Day.of.Week))+geom_bar()
filt<- (Movies$Genre == "action") | (Movies$Genre=="adventure") | (Movies$Genre=="animation")| (Movies$Genre=="comedy")| (Movies$Genre=="drama")
filt
filt2<- Movies$Studio %in% c("Buena Vista Studios","WB","Fox","Universal","Sony","Paramount Pictures")
filt2
Movies2 <- Movies[filt & filt2,]
Movies2

p<- ggplot(data=Movies2,aes(x=Genre,y=Gross...US))
p

q<- p + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(alpha=0.7, outlier.colour = NA)

#nondata ink
q <- q+ 
  xlab("Genre")+
  ylab("Gross % US") + 
  ggtitle("Domestic Gross % by Genre")
q

q<- q+
  theme(
    axis.title.x = element_text(color="blue",size=30),
    axis.title.y = element_text(color="blue",size=30),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    
    plot.title = element_text(size=40),
    
    legend.title = element_text(size=20),
    legend.text = element_text(size = 20),
    
    text = element_text(family = "Comic Sans MS")
  )

q$labels$size <- "Budget $M"
q

