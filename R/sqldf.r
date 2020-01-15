#*******************************************************#
#****** SQL in R *********#
#*******************************************************#

install.packages("sqldf")
library(gsubfn)
library(proto)
library(RSQLite)
library(sqldf)

# head
a1r <- head(warpbreaks)
a1s <- sqldf("select * from warpbreaks limit 6")
identical(a1r, a1s)

# subset
a2r <- subset(CO2, grepl("^Qn", Plant))
a2s <- sqldf("select * from CO2 where Plant like 'Qn%'")
all.equal(as.data.frame(a2r), a2s)

library(MASS)
farms
#OR
data(farms, package = "MASS")
a3r <- subset(farms, Manag %in% c("BF", "HF"))
a3s <- sqldf("select * from farms where Manag in ('BF', 'HF')")
row.names(a3r) <- NULL
identical(a3r, a3s)

a4r <- subset(warpbreaks, breaks >= 20 & breaks <= 30)
a4s <- sqldf("select * from warpbreaks where breaks between 20 and 30", row.names = TRUE)

identical(a4r, a4s)

a5r <- subset(farms, Mois == 'M1')
a5s <- sqldf("select * from farms where Mois = 'M1'", row.names = TRUE)
identical(a5r, a5s)

a6r <- subset(farms, Mois == 'M2')
a6s <- sqldf("select * from farms where Mois = 'M2'", row.names = TRUE)
identical(a6r, a6s)

# rbind
a7r <- rbind(a5r, a6r)
a7s <- sqldf("select * from a5s union all select * from a6s")
# sqldf drops the unused levels of Mois but rbind does not; however,
# all data is the same and the other columns are identical
row.names(a7r) <- NULL
identical(a7r[-1], a7s[-1])

# aggregate - avg conc and uptake by Plant and Type
a8r <- aggregate(iris[1:2], iris[5], mean)
a8s <- sqldf('select Species, avg("Sepal.Length") As `Sepal.Length`,
             avg("Sepal.Width") As `Sepal.Width` from iris group by Species')
all.equal(a8r, a8s)

# by - avg conc and total uptake by Plant and Type
a9r <- do.call(rbind, by(iris, iris[5], function(x) with(x,data.frame(Species = Species[1],
mean.Sepal.Length = mean(Sepal.Length),
mean.Sepal.Width = mean(Sepal.Width),
mean.Sepal.ratio = mean(Sepal.Length/Sepal.Width)))))
row.names(a9r) <- NULL

a9s <- sqldf('select Species, avg("Sepal.Length") As `mean.Sepal.Length`,
             avg("Sepal.Width") As `mean.Sepal.Width`,
             avg("Sepal.Length"/"Sepal.Width") As `mean.Sepal.ratio` from irisgroup by Species')
all.equal(a9r, a9s)

# head - top 3 breaks
a10r <- head(warpbreaks[order(warpbreaks$breaks, decreasing = TRUE), ], 3)
a10s <- sqldf("select * from warpbreaks order by breaks desc limit 3")
row.names(a10r) <- NULL
identical(a10r, a10s)

# head - bottom 3 breaks
a11r <- head(warpbreaks[order(warpbreaks$breaks), ], 3)
a11s <- sqldf("select * from warpbreaks order by breaks limit 3")
