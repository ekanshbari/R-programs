# text mining by pdftool ie to read read the pdf file
# to find the frequency of words in the given dataset 
# 
# 
# 
# https://www.supremecourt.gov/opnions/slipopnion/14
# 
# 
# 
# install all the packages of library

library(pdftools)
library(wordcloud)   
library(tm)   #for text mining for removing white spaces

loc=file.choose()

txt=pdf_text(loc)

cat(txt[15]) #15 is page of pdf

#cleaning

txt_corpus=Corpus(VectorSource(txt))   #VectorSource detail of pdf page read
txt_corpus=tm_map(txt_corpus,tolower)
txt_corpus=tm_map(txt_corpus,removePuntuation)
txt_corpus=tm_map(txt_corpus,stripWhitespace) 
head(stopwords("en")) #common words
stopwords("en")  #give all the stopwords from the pdf em=>for english

#corpus-> to put imp data in list
txt_corpus=tm_map(txt_corpus,removeWords,stopwords("en"))  #here we can give word tht has to be removed by removeWords=" "
txt_corpus   #matadeta
txt_corpus$content #to view content

dtm=DocumentTermMatrix(txt_corpus)  #convert corpus to table or matrix
dtm=as.matrix(dtm)
View(dtm)
dtm=t(dtm)     #transpose 

occu=rowSums(dtm)   #total occurences 
occu
no_occu=sort(occu,decreasing = T)
head(no_occu)   #by default 6 no

wordcloud(head(names(no_occu),30),head(no_occu,30),scale=c(2,1))






















