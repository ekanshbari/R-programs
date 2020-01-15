#########################################################
#            Multiple Graphs in a single plot           #
#                   Use par() function                  #
# par can be used to set or query graphical parameters. #
# #######################################################

max.temp <- c(mon=22,tue=27,wed=26,thu=34,
              fri=23,sat=29) # a vector used for plotting
par(mfrow=c(2,2))    # set the plotting area into a 1*2 array
barplot(max.temp, main="Barplot")
pie(max.temp, main="Piechart", radius=1)


airquality
Temperature <- airquality$Temp
Ozone <- airquality$Ozone
par(mfrow=c(2,2))   #change mfcol to see the difference 
hist(Temperature)
boxplot(Temperature, horizontal=TRUE)
hist(Ozone)
boxplot(Ozone, horizontal=TRUE)

# Adjust Margins
#cex: A numerical value giving the amount by which plotting text and symbols 
#     should be magnified relative to the default
#mai: gives the margin size specified in the inches c(bottom, left, top, right)
par(cex=0.7, mai=c(0.1,0.1,0.2,0.1))

Temperature <- airquality$Temp
# define area for the histogram using fig in which c(x1,x2,y1,y2)
par(fig=c(0.1,0.7,0.3,0.9))  
hist(Temperature)
# define area for the boxplot
par(fig=c(0.8,1,0,1), new=TRUE) # If add to the existing plot new=TRUE
boxplot(Temperature)
# define area for the stripchart
par(fig=c(0.1,0.67,0.1,0.25), new=TRUE)
stripchart(Temperature, method="jitter")

