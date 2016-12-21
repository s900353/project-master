install.packages("jsonlite")
install.packages("plyr")

library(jsonlite)
#deal with jason
library(plyr)
#rbind.fill--different number of column
result<-data.frame()
for(i in (1:5)){
  house<-paste0("https://rent.591.com.tw/home/search/rsList?is_new_list=1&type=1&kind=0&searchtype=1&region=1&firstRow=", 30*(i-1), "&totalRows=8968")  
  house<-fromJSON(house)
  #read jason
  df<-house$data$data
  result<-rbind.fill(result,df)

  }
  write.table(result,file= "D:\\github\\project\\csv\\591.csv", sep= ",")
#write.table(tablename,position , replace¡Gsep=","")






