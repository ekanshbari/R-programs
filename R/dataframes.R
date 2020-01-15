library(MASS)
painters
rownames(painters)
is.numeric(painters$School)
is.numeric(painters$Drawing)
is.factor(painters$School)
is.factor(painters$Drawing)
colnames(painters)
summary(painters)
is.data.frame(painters)
x <- 1:16
y <- matrix(x, nrow=4, ncol=4) 
z <- letters[1:16]
x
y
z
datafr <- data.frame(x,y,z)
datafr
str(painters)

#suppose we want to extract information on a variable
painters$School
painters["Da Udine", "Composition"]

#The summary function for a categorical variable returns a detailed frequency table
summary(painters$School)

#The summary function for a numeric variable returns an overview of descriptive measures for each variable
summary(painters)
plot(painters$School)
hist(painters$Drawing)

#With a command attach() over the data frame, the variables can be referenced directly by name.
attach(painters)
summary(School)
summary(Composition)

#The command detach() recovers the default setting and then we have to use painters$ again.
detach(painters)
#Error in Summary(school)
summary(School)

#Subsets of a data frame can be subset()
subset(painters, School=='F')
painters[ painters[["School"]] == "F", ]
subset(painters, Composition <= 6)
subset(painters, School=="F", select=c(-3,-5))

# The command split partitions the data set by values of a specific variable. This should preferably be a factor variable.
splitted <- split(painters, painters$School)
splitted
is.data.frame(splitted$A)



