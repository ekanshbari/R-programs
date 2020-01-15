###############################################################
####### TIDYR IN R ######################
###### Creating tidy data in R ######################
###############################################################
install.packages("tidyr")
library(tidyr)
############ Gather() function - Reshaping wide format to long format ######
data_pvc <- read.csv(file.choose(), row.names=1)
View(data_pvc)
data_pvc_2 <- gather(data_pvc, Observer, Observations, c(Alice,Bob, Carl))
########### Spread() function - Reshaping long format to wide format ########
spread(data_pvc_2, Observer, Observations)
########### Separate() function - Separting one column into two #########
name <- c("Fancis Lara", "Michael John", "Emily Nunn")
age <- c(34,45,23)
city <- c("San Diego", "Concord", "Aliso Viejo")
state <- c("CA", "CA","CA")
df <- data.frame(name,age,city, state)
df
separate(df,name, c("First Name", "Last Name"), sep=" ")
########## Unite() function- to unite columns #############
unite(df, "Hometown", c(city, state), sep= ", ")