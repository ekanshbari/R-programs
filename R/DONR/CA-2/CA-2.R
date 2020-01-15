#1
setwd("/media/nikhil/DataSet/Study/semester/sem 6/CSE232 R/CA-2")
getwd()
data<-read.csv("MovieRatings.csv")


#Question1
names<-filter(data,data$Year.of.release==2007)
names$Film

#Question2.
genre<-filter(data,data$Genre=="Comedy")
write.csv(genre,"Genre.csv")

#Question3.+
movie127<-data[data$Film=="127 Hours",]
movie127
#Question4.
mean(data$Budget..million...)
max(data$Budget..million...)
min(data$Budget..million...)

#Question5.
eagle<-filter(data,data$Film=="Eagle Eye")
eagle$Genre

#Question6.
d<-filter(data,data$Genre=="Comedy" & data$Year.of.release==2009)
d$Film

