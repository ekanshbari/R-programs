#LISTS IN R
##Lists can contain elements of different types so that the list elements may have ##
#----------------------------different modes-------------------------#######
#--------Modes-------------
mode(1.234)
mode(c(5,6,7,8))
mode("India")
mode(factor(c("UP", "MP")) )
mode(list("India", "USA"))
mode(data.frame(x=1:2, y=c("India", "USA")))
mode(print)
#------Lists Example------------
x1 <- matrix(nrow=2, ncol=2, data=1:4, byrow=T)
x2 <- matrix(nrow=2, ncol=2, data=5:8, byrow=T)
x1
x2
x1+x2
matrixlist <- list(x1, x2)
matrixlist
matrixlist[1]
#------List containing different obects
z1 <- list( c("water", "juice", "lemonade"),
            rep(1:4, each=2),
            matrix(data=5:8, nrow=2, ncol=2, byrow=T) )
z1
#-------Accessing the elements of lists----------
z1[[1]]
z1[1][2]
z1[[1]][2]
#-------Vector Indexing
#-----names is used for functions to get or set the names of an object
z <- list(a1 = 1, a2 = "c", a3 = 1:3)
z
names(z)
#-----------------
  names(z)[3] <- "c2"
#-----------------
  x <- c(water=1, juice=2, lemonade=3 )
names(x)
x["juice"]
#-------Creating Matrices from lists
ab <- list(1, 2, 3, "X", "Y", "Z")
dim(ab) <- c(2,3)
mode(ab)
#----Creating Named Lists
xy <- 1:10
yz<- rep("a", 3)
my_list <- list(num=xy, chars= yz)
my_list
my_list[1][-2]
#-------Accessing using name of list element----------
my_list$num
my_list["chars"]
#-----Adding more elements to the list------------------#
#-----to add more elements in the list use c() function------#
mat<- matrix(1:4, nrow=2,ncol=2)
my_list_new<- list(my_list, new_mat=mat)
my_list_new
Pos<- 1:6
Art<- c("Don McLean", "Booker T and the MG's", " The Beatles", "The Rolling Stones","Fats Domino", " Abba")
Song<- c("American Pie", "Green Onions", "Strawberry Fields Forever","Brown Sugar", "Blueberry Hill")
songs_for_foodie<- list( Position=Pos, Artist=Art)
songs_for_foodie[c(TRUE,FALSE)]
songs_for_foodie$songs<- Song
songs_for_foodie[["title"]] <- Song
songs_for_foodie[["title"]] <- NULL
songs_for_foodie$Artist <- c("Honey,Honey", "Blue Fairy")
songs_for_foodie$Artist <- c(Art,"Honey,Honey", "Blue Fairy")

