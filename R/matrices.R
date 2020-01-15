#clear Names

names(charlie)<- NULL
charlie



###----naming vector dimensions 1

temp.vec<- rep(c("a","b","c"),each =3)
temp.vec


bravo<- matrix(temp.vec,3,3)
bravo


rownames(bravo)<- c("how","are","you")
bravo
colnames(bravo)<-c("X","y","z")
bravo



bravo["are","y"]<- 0
bravo
rownames(bravo)
colnames(bravo)


rownames(bravo)<- NULL
bravo

