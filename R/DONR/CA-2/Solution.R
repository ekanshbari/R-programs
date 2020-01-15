#CA-2
library(dplyr)
#SET-1
Data<-read_csv("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-2/IndiaVotes_PC__All_States_2014.csv")
#a
win <- filter(Data,Data$`PC Name`=="Varanasi")
win$`Winning Candidate`
#b
per<-filter(Data,Data$`Margin %`<5)
per
nrow(per)
#c
name<-filter(Data,Data$Turnout>75)
name$`Winning Candidate`
#d
BJP<-filter(Data,Data$Party=="Bharatiya Janta Party")
nrow(BJP)
#e
Punjab<-filter(Data,Data$State=="Punjab")
Punjab
#f
write.csv(BJP,"/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-2/BJP.csv")


#SET-2
Data<-read_csv("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-2/MovieRatings.csv")
head(Data)
#a
name<-filter(Data,Data$`Year of release`==2007)
name$Film
#b
Genre<-filter(Data,Data$Genre=="Comedy")
Genre
write_csv(Genre,"/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/QuestionPapers/CA-2/N.csv")
#c
Hours<-filter(Data,Data$Film=="127 Hours")
Hours
#d
mean(Data$`Budget (million $)`)
max(Data$`Budget (million $)`)
min(Data$`Budget (million $)`)
#e
Eagle<-filter(Data,Data$Film=="Eagle Eye")
Eagle$Genre
#f
name<-filter(Data,Genre=="Comedy" & Data$`Year of release`==2009 )
head(name)

Data %>% filter_all(any_vars(is.na(.)))
