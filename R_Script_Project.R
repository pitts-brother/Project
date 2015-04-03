#####number of attacks by attacktype################################
counts <- table(delcolumn$attacktype1)
k<-levels(delcolumn$attacktype1_txt)
names(counts)<-k
counts<-sort(counts) #arrange in decreasing order for graph
#rename levels as they 
names(counts)[1]<-"Infrastructure"
names(counts)[5]<-"Hostage-Bar"
names(counts)[6]<-"Hostage-Kidnap"
######draw a bar chart showing instances by attack type###########
barplot(counts/100, main="Incidences by Attack Type \n(in 100's)",sub="Figure 1: Barplot of Incidences By Attack Type", horiz=TRUE,col="red",xlim=c(0,600),xlab="No. of Attacks",las=1)
###############number of attacks by country by attacktype##############
delcolumn$attacktype1<-as.factor(delcolumn$attacktype1)
sum(delcolumn$nkill,na.rm=TRUE)
######aggregate function
d<-aggregate(nkill~attacktype1,delcolumn,sum)
d$nkill<-sort(d$nkill)
barplot(d$nkill/100,names=d$attacktype1,horiz=TRUE)
###########downloaded "ggplot2" for graphs###########################
