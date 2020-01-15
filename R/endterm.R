
install.packages("MASS")

library(MASS)
painters
library(dplyr)

##a
painter<-tbl_df(painters)
select(painter,Composition,Drawing)

##c
painters %>% group_by(School)%>% summarise(mean(Colour))


##d
mutate(painters,Painter_name=rownames(painters))


##e
library(ggplot2)

ggplot(painters,aes(x=School,y=Expression))+geom_bar(stat="identity")


##b
painters %>% select(rownames(painters)) %>% filter(School=="F")
