authors <- data.frame(
  surname = c("Tukey", "Venables", "Tierney", "Ripley", "McNeil"),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  retired = c("yes", rep("no", 4)))
print(authors)
books <- data.frame(
  name = c("Tukey", "Venables", "Tierney", "Ripley", "Ripley", "McNeil"),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis"),
  other.author = c(NA, "Ripley", NA, NA, NA, NA))


vec<-c(87,34,56,78)
vec<-vec[vec!=56]
