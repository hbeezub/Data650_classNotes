deaths<-read.csv('KoreanConflict.csv',header=TRUE,stringsAsFactors=FALSE)

sum(str_detect(deaths$INCIDENT_DATE,"\\d{8}"))


#str_detect  in console prompt str_detect("19651213","^\\d{8}$")  
#^ means beginig, \\d means a digit   {8} means a pattern of 8   $ means end
#> str_detect("19651213","^\\d{8}")
#[1] TRUE

 #str_detect(deaths$INCIDENT_DATE,"^\\d{8}")

for (i in 1:36574){
  incident<-str_detect(deaths$INCIDENT_DATE[i],"\\d{8}")
  fatality<-str_detect(deaths$FATALITY[i],"\\d{8}")
  if(incident==FALSE & fatality ==TRUE){
    #print(paste(i,"this is what I want"))
    deaths$INCIDENT_DATE[i]<-deaths$FATALITY[i]
  }
  print(i)
}
 
#going down both columns & looking for t&f 
  