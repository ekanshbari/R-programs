install.packages("dplyr")
library(dplyr)
sales_df=read.csv("C://Users//Hp//Desktop//sales.csv")
head(sales_df)
install.packages("tidyr")
library(tidyr)
####  Filter in DPLYR ##### make manipulation esier##### clening ####
#### Base R method to find out details when order is shipped on same day and shipping cost is greater then 900 ###
sales_df[sales_df$ship.mode=="First Class" & sales_df$Shipping.Cost>900,]
str(sales_df)
#### Use dplyr filter in simpler way#####
filter(sales_df,Ship.Mode=="First Class",Shipping.Cost>900)

filter(sales_df,Country=="Australia" | Country=="Germany")
filter(sales_df,Country %in% c("Australia","Germany"))

##### Base R method to extract some columns #######
sales_df[,c("Order.ID","Quantity")]

#### Select in dplyr #####
select(sales_df,Order.ID,Quantity)
select(sales_df,Order.ID:Customer.ID)
select(sales_df,starts_with("Order"),starts_with("ship"))

##### nested approach ########

filter(select(sales_df,Category,Product.Name, Sub.Category),Sub.Category =="Phones")

#####Chaining approaches #####
sales_df %>% select(Category,Product.Name,Sub.Category) %>% filter(Sub.Category=="Phones") 

###### Arrange in dplyr #######
### Base R Method to arrange the rows
sales_df[order(sales_df$Shipping.Cost),c("Shipping.Cost","Order.ID")]

### Using Arrange ###
sales_df%>%select(Shipping.Cost,Order.ID)%>% arrange(Shipping.Cost)
sales_df%>%select(Shipping.Cost,Order.ID)%>% arrange(desc(Shipping.Cost))

##### Create new variable using Mutate in DPLYR #######
sales_df$Total.cost<-sales_df$Shipping.Cost*sales_df$Quantity
sales_df[,C("shipping.Cost","quantity","Total.Cost")]
library(nycflights13)





############sumrize function
with(sales_df,tapply(sales_df$shipping.cost,sales_df$Country,mean,na.rm=TRUE))

#####APPLY ONE FN MANY VARIABLE
#WITH SUMRISE

