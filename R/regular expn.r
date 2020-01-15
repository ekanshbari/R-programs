#########basic regular expresson in r############
##grep- rtrn the index or valuve of the matched string
##grep1-retrn the boolean value ( true or false) of the match string
##regexpr-rtrn the index of 1st match
##gregexpr-rtrn the index of all match
##regexec-is a hybrid of regexpr  and gregexpr
##regmatches-rtrn the match string specified index (used in conjuction with regexpr andgregexpr)

###match character special character @#!$%()
dt=c("RPROGRAMMING%","percent")
grep(pattern = "PROGRAMMING\\%",x=dt,value = T)

# detect all string
dt=c("may?","money$","and&")
grep(pattern = "[a-z][\\?-\\$\\$]",x=dt,value = T)

gsub(pattern = "[\\?-\\$-\\&]",replacement = "",x=dt)

gsub(pattern = "\\\\",replacement = "_",x="Barcelona\\Spain")

###quntifires
number="100100001000"

#greedy

regmatches(number,gregexpr(pattern="1.*1",text=number))

# non greedy

regmatches(number,gregexpr(pattern="1.?1",text=number))

names=c("anna","crissy","pureto","cristian","garcia","steven","alex","rudy")
###doesnt matter if e is match
grep(pattern = "e*",x=names,value = T)


###must match n two times
grep(pattern = "n{2}",x=names,value = T)


### sequvence
string=" i have been to paris 20 times"
###match a digit
gsub(pattern = "\\d+",replacement = "_",x=string)
regmatches(string,regexpr(pattern = "\"))