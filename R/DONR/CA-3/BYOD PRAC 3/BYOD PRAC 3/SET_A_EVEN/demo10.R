library("ggplot2")
getwd()
setwd("/home/uday/Desktop")
movies<- read.csv(file.choose())
movies
nrow(movies)
ncol(movies)
str(movies)
#glimpse(movies)
summary(movies)
colnames(movies) <- c('film', 'genre', 'criticrating', 'audiencerating', 'budgetmillion', 'year')
#7.theme,6.cordinates,5.facets,4.statistics,3.geometrics,2.aesthetics,1.data
factor(movies$year)
# converting from non-factor to factor

movies$year <- factor(movies$year)

str(movies)

# factor to nonfactor (first convert to character then to integer)
movies$year <- as.integer(as.character(movies$year))

# again non-factor to factor

movies$year <- factor(movies$year)

# asthetics

library('ggplot2')

ggplot(data = movies, aes(x = criticrating, y = audiencerating))

# add geometry
ggplot(data = movies, aes(x = criticrating, y = audiencerating)) + geom_point()

# add colors
ggplot(data = movies, aes(x = criticrating, y = audiencerating, colour = genre)) + geom_point()

# add size
ggplot(data = movies, aes(x = criticrating, y = audiencerating, colour = genre, size = budgetmillion)) + geom_point()
# saving to p
p <- ggplot(data = movies, aes(x = criticrating, y = audiencerating, colour = genre, size = budgetmillion)) + geom_point()
p + geom_point()
p + geom_line()

# multiple layers
p + geom_line() + geom_point()

#-------overiding asthetics----------

q<- ggplot(data=movies, aes(x=criticrating,y= audiencerating, colour=genre,size=budgetmillion))
q
# add geom

q+geom_point()

# overiding asthestic
q+geom_point(aes(size=criticrating))

#overide colour
q+geom_point(aes(colour=budgetmillion))

#override x and y
q+ geom_point(aes(x=budgetmillion)) + xlab("budget million $$$")

#overide
#reduce line size

p+geom_line(size=1) + geom_abline()

#Mapping vs setting

r<- ggplot(data=movies,aes(x=criticrating,y= audiencerating))
r+geom_point()

#add colour
#mapping (Map a colour)
r+geom_point(aes(colour=genre))
#setting (set a colour) #colour is an asthetic
r+ geom_point(colour="DarkGreen")

#map a size

r+ geom_point(aes(size=budgetmillion))
#set a size
r+geom_point(size=2)

#-----histogram and density charts
s<- ggplot(data=movies,aes(x = budgetmillion))
s + geom_histogram(binwidth = 10)
#add colour
s+geom_histogram(binwidth = 10,aes(fill=genre),colour="Black")

#create density charts
s+geom_density(aes(fill=genre))
s+geom_density(aes(fill=genre),position = "stack")

#-----start layer tips-----

t<- ggplot(data=movies,aes(x=audiencerating))
t+ geom_histogram(binwidth=10,fill="white",colour="Blue")

#another way
t<- ggplot(movies)
t + geom_histogram(bimwidth =10,aes(x=audiencerating),fill="white",colour="Black")

#-------statistical transformation---------
u<- ggplot(data = movies,aes(x= criticrating,y=audiencerating,colour=genre))

u
u+ geom_point()
u+geom_point() + geom_smooth()
u+geom_point() + geom_smooth(fill=NA)

#box plot

u<- ggplot(data = movies,aes(x= criticrating,y=audiencerating,colour=genre))
u+geom_boxplot(size=1.2)

u+geom_boxplot(size=1.2)+geom_point()

#tip

u+geom_boxplot(size=1.2)+geom_jitter()

#another way
u+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5)
u+geom_boxplot(size=1.2,alpha=0.5)+geom_jitter()
# aplha is for transparency

#----using facets-----------

v<- ggplot(data=movies,aes(x=budgetmillion))
v+ geom_histogram(binwidth = 10,aes(fill=genre),colour="Black")

###facets

v+geom_histogram(binwidth = 10,aes(fill=genre),colour="Black")+facet_grid(genre~.)
v+geom_histogram(binwidth = 10,aes(fill=genre),colour="Black")+facet_grid(genre~.,scales = "free")

#scatterplots

w<- ggplot(data=movies,aes(x=criticrating,y=audiencerating,colour=genre))
w+geom_point(size=2)

#add facets

w+geom_point(size=2) + facet_grid(genre~.)
w+ geom_point(size=2) + facet_grid(.~year)

w+ geom_point(size=2) + facet_grid(genre~year)

w+ geom_point(size=2) + geom_smooth() + facet_grid(genre~year)

### cordinate--------------

m<- ggplot(data=movies,aes(x=criticrating,y=audiencerating,size=budgetmillion,colour=genre))
m+geom_point()
m+geom_point()+xlim(50,100)+ylim(50,100)

#wont work well always
n <- ggplot(data = movies, aes(x = budgetmillion))
n + geom_histogram(binwidth = 10, aes(fill = genre), colour = 'black') + ylim(0, 50)
n + geom_histogram(binwidth = 10, aes(fill = genre), colour = 'black') + coord_cartesian(ylim = c(0, 50))
# improve
w + geom_point(aes(size = budgetmillion)) + geom_smooth() + facet_grid(genre~year) + coord_cartesian(ylim = c(0, 100))

# theme
o <- ggplot(data = movies, aes(x = budgetmillion))
h <- o + geom_histogram(binwidth = 10, aes(fill = genre), colour = 'black')
#label
h + xlab("money axis") + ylab('number of movies') + theme(axis.title.x = element_text(colour = 'darkgreen', size = 30), axis.title.y = element_text(colour = 'red', size = 30))
# tickmark formatting
h + xlab("money axis") + ylab('number of movies') + ggtitle('movie budget') + 
  theme(axis.title.x = element_text(colour = 'darkgreen', size = 30),
        axis.title.y = element_text(colour = 'red', size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),
        legend.position = c(1, 1),
        legend.justification = c(1, 1),
        plot.title = element_text(colour = 'darkblue', size = 30, family = 'Courier'))