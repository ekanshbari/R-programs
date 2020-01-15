install.packages("plotly")
library(plotly)
plot_ly(data=mtcars,x=~wt,y=~mpg)
plot_ly(data=mtcars,x=~wt,y=~mpg,type ="scatter",mode="markers")
plot_ly(data=mtcars,x=~wt,y=~mpg,type ="scatter",mode="markers",
        color=I("black"))


plot_ly(data=mtcars,x=~wt,y=~mpg,type ="scatter",mode="markers",
        marker=list
        (color="green",size=30))
plot_ly(data=mtcars,x=~wt,y=~mpg,type ="scatter",mode="markers",
        marker = list(size = 7,
                 color = 'rgba(255, 182, 193, .9)',
                line = list(color = 'rgba(152, 0, 0, .8)',
                  width = 3)))
mtcars

#### Set the color scale based on a factor variable ####
plot_ly(data=mtcars, 
            x=~wt, 
            y=~mpg,
            type = "scatter",
            mode = "markers",
            color = ~as.factor(cyl))


#### Use customized pallete for data point colors ####
pal <- c("red", "blue", "green")
plot_ly(data=mtcars, 
            x=~wt, 
            y=~mpg,
            type = "scatter",
            mode = "markers",
            color = ~as.factor(cyl),
            colors = pal)


#### Change data point shape based on factor variable ####
plot_ly(data=mtcars, 
            x=~wt, 
            y=~mpg,
            type = "scatter",
            mode = "markers",
            symbol = ~as.factor(cyl),
            symbols =  c('circle','x','o'),
            marker = list(size = 15)
)




#### Hide the legend ####
plot_ly(data=mtcars, 
             x=~wt, 
             y=~mpg,
             type = "scatter",
             mode = "markers",
             symbol = ~as.factor(cyl),
             symbols =  c('circle','x','o'),
             marker = list(size = 5)) %>%
  layout(showlegend = FALSE)


#### Change the orientation of the legend (below the plot) ###
plot_ly(data=mtcars, 
        x=~wt, 
        y=~mpg,
        type = "scatter",
        mode = "markers",
        symbol = ~as.factor(cyl),
        symbols =  c('circle','x','o'),
        marker = list(size = 5)) %>%
  layout(legend = list(orientation = 'h'))


#### Change the orientation of the legend (inside the plot) ####
plot_ly(data=mtcars, 
             x=~wt, 
             y=~mpg,
             type = "scatter",
             mode = "markers",
             symbol = ~as.factor(cyl),
             symbols =  c('circle','x','o'),
             marker = list(size = 5)) %>%
  layout(legend = list(x = 0.8, y = 0.9))


#Change the orientation of the legend (outside the plot) ####
plot_ly(data=mtcars, 
             x=~wt, 
             y=~mpg,
             type = "scatter",
             mode = "markers",
             symbol = ~as.factor(cyl),
             symbols =  c('circle','x','o'),
             marker = list(size = 5)) %>%
  layout(legend = list(x = 1, y = 0.5))


#Adding chart title and axis labels ####

plot_ly(data=mtcars, 
             x=~wt, 
             y=~mpg,
             type = "scatter",
             mode = "markers",
             symbol = ~as.factor(cyl),
             symbols =  c('circle','x','o'),
             marker = list(size = 5)) %>%
  
  layout(title="Scatter plot using R Plotly",  
         xaxis=list(title="Weight", showgrid = F),
         yaxis=list(title="MPG", showgrid = F))

### Customizing mouse hover text ####
plot_ly(data = mtcars, 
            x=~mpg, 
            y=~wt, 
            type = "scatter", 
            mode="markers",
            hoverinfo = "text", 
            text = paste("Miles per gallon: ", mtcars$mpg, 
                         "<br>", 
                         "Weight: ", mtcars$wt)
)


### Example of annotations on a single data points ####
## display annotations for good mileage
plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(
    x=mtcars$mpg[which.max(mtcars$mpg)],
    y=mtcars$wt[which.max(mtcars$mpg)],
    text="Good mileage"
    
  )

#showarrow=false
plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(
    x=mtcars$mpg[which.max(mtcars$mpg)],
    y=mtcars$wt[which.max(mtcars$mpg)],
    text="Good mileage",
    showarrow=F
  )

#### Example of annotations - placing text at a desired location on the plot ####
## Display Data Source
## Demo of x/y ref as "paper"
mtcars

plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(
    xref="paper",
    yref="paper",
    x=1,
    y=1,
    text="Data Source : mtcars",
    showarrow= F
  )
#### Example #1 of annotations on multiple data points ####
## display annotation for low and high mileage ##
plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(x=mtcars$mpg[which.max(mtcars$mpg)],
                  y=mtcars$wt[which.max(mtcars$mpg)],
                  text="high mileage"
  ) %>% 
  add_annotations(x=mtcars$mpg[which.min(mtcars$mpg)],
                  y=mtcars$wt[which.min(mtcars$mpg)],
                  text="low mileage"
  )


### Example #2 of annotations on multiple data points ####
# display annotations for automatic transission cars
plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(
    x = mtcars$mpg[mtcars$am==0],
    y= mtcars$wt[mtcars$am==0],
    text="auto",
    showarrow=F
    
  )

#### Styling annotations ####
# using font argument
plot_ly(data = mtcars, 
        x=~mpg, 
        y=~wt, 
        type = "scatter", 
        mode="markers") %>% 
  add_annotations(x=mtcars$mpg[which.max(mtcars$mpg)],
                  y=mtcars$wt[which.max(mtcars$mpg)],
                  text="Good mileage",
                  font = list(color = "green", 
                              family="sans serif", 
                              size = 20))
