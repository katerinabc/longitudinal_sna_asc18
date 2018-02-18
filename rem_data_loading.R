library(informR)
#The column in jas.csv called "event type" is not an REM event type. It is from the coding software
#and indicates if it was a point event (something which happens without a duriation)
#or a state event (something which happens with a duration)
#The column called Type is what I call "event type kind". like th multiple events in the rem anaysis in your jss file (e.g. sleeping, eating etc)

rm(list=ls())

#load data
remj <- read.csv("data/jas.csv", header=T, dec=".")
edattIndi<-read.csv("data/ed_att_indi.csv", header=T, dec=".")
edattDyadic<-read.csv("data/ed_att_dyadic.csv", header=T, dec=".")

#fix timing
remj[,1]<-ave(remj[,1],remj$Observation,FUN=function(x) x+(1:length(x))*.00001)

evlj<-gen.evl(cbind(apply(remj[, c(3,5)], 1, paste, collapse = "."),remj[,1], remj$Observation) , null.events = c("7.7", "8.8", "9.9"))

ew.equal<-function(a,b) mapply(function(x, y) {isTRUE(all.equal(x, y))}, a, b)

doc<-c()
spec<-c()
for (h in names(evlj$eventlist)){
    #to create supplist about when doctor/specialist enters the room
    #Step 1: extract events when doctor(specialist) interacts
    doctmp <-which(remj$Observation == h & (remj$Sender == "3" | remj$Receiver == "3"))
    spectmp<-which(remj$Observation == h & (remj$Sender == "4" | remj$Receiver == "4"))
    #Step 2: Take the timing of first entry as this is the event when the doctor(specialist) first interacts
    doctmp2 <- c(h,remj[doctmp[1],1])
    #Problem: in some trials, the specialist never enters the room. assign row 0 in that case
    spectmp2<-c(h, ifelse(length(spectmp) == 0, NA,remj[spectmp[1],1]))
    #Step 3: Find the row number of the event extracted in step 2. this is the input for the supplist
    #take the evlj$eventlist that matches h, check doctmp2 for observation == h, look at the timing and return row number
    docrow <-which(ew.equal(evlj$eventlist[[h]][,2],  as.numeric(doctmp2[2])))
    specrow<-which(ew.equal(evlj$eventlist[[h]][,2], as.numeric(spectmp2[2])))
    doc <-rbind(doc,docrow,h)
    spec<-rbind(spec,ifelse(length(specrow) == 0, NA, specrow), h)
}
#change layout of doc into something more logical.
doc<-matrix(doc, ncol=2, byrow=T) #Question: Does it return characters, because all elements in the matrix have to be of the same type and h is a character?
spec<-matrix(spec, ncol=2, byrow=T)
#change NA to 900 (random high numbers outside of the eventlist of any observation) to avoid problems when creating supplistj
spec[which(is.na(spec[,1])),1]<-900
eTj<-evlj$event.key[,2]
supplistj<-list()
for(h in 1:length(evlj$eventlist)){#h is for the different teams
    
    supplistj[[h]]<-matrix(1,
    nrow=NROW(evlj$eventlist[[h]]), ncol=length(eTj))
    colnames(supplistj[[h]])<-eTj
    
    #Actor team and health status (7 to 10) can not send a tie
    for (j in 1:length(eTj))
    if(grepl("^..[123456]", eTj[j])) #expression: NOT begin with 7 to 10
    {supplistj[[h]][,j] <- 1}
    for(j in 1: length(eTj))
    if(grepl("1.10", eTj[j]))
    {supplistj[[h]][,j] <- 1}


}
