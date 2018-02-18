##########################################################
#NETWORK VARIABLES
##########################################################


go<-list(
  # team Go t1
  go_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.names", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_ia1<- as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.names", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9,  sep = ";", dec=",", row.names=1, col.names=c("row.names", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  # team Go t2
  go_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.names", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_val2<- as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9,  sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9,  sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  # team GO t3
  go_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_val3<- as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9,  sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  go_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-1.txt",na.strings=9,  sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Darya", "Isabelle", "LauraGo", "Maria", "Ward"), skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

icgh<-list(
  #ICGH t1
  icgh_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=6, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=13, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=20, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  #ICGH t2
  icgh_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=27, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";",dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=34, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=41, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=48, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  #ICGH t3
  icgh_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=55, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=62, nrows=6, check.names=FALSE), stringsAsFactors=TRUE),
  icgh_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-2.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Andreea", "Anna", "Didier", "Khalid", "Mareike", "Rosa"), skip=69, nrows=6, check.names=FALSE), stringsAsFactors=TRUE)
)

insites<-list(
  #insites t1
  in_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #insites t2
  in_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #insites t3
  in_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  in_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-3.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Irene", "Charlotte", "Diogo", "SabrinaIN", "Yuege") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

reset<-list(
  #reset t1
  re_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=3, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),#only skip 3 as the header is counted as the first one.
  re_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=7, nrows=3, check.names=FALSE), stringsAsFactors=TRUE), #skip 4 to accoutn for the row of theader
  re_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=11, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  #reset t2
  re_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=15, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=19, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=23, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=27, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  #reset t3
  re_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=31, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=35, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=39, nrows=3, check.names=FALSE), stringsAsFactors=TRUE),
  re_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-4.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Elisabeth", "Milena", "Philippe") , skip=43, nrows=3, check.names=FALSE), stringsAsFactors=TRUE)
)

adulteduc<-list(
  #adulteduc t1
  ae_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=4, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=9, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=14, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  #aduleteduc t2
  ae_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=19, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=24, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=29, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=34, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  #aduleteduc t3
  ae_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=39, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=44, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=49, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  ae_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-5.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Daniel", "Liga", "Shengye", "Valentina") , skip=54, nrows=4, check.names=FALSE), stringsAsFactors=TRUE)
)

alpheus<-list(
  #Alpehus t1
  alp_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=4, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=9, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=14, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  #Alpehus t2
  alp_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=19, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=24, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=29, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=34, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  #Alpehus t3
  alp_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=39, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=44, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=49, nrows=4, check.names=FALSE), stringsAsFactors=TRUE),
  alp_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-6.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Sarah", "Harmke", "Sybil", "Sanne") , skip=54, nrows=4, check.names=FALSE), stringsAsFactors=TRUE)
)

hht<-list(
  #hht T1
  hht_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #hht T2
  hht_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #hht T3
  hht_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  hht_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-7.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Anja","Johanna","Erika","Esmina","Saulius") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

joulz<-list(
  #joulz T1
  joulz_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #joulz T2
  joulz_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #joulz T3
  joulz_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  joulz_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-8.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Nadine","Zanne","Sabrina","Helene","Letizia") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

oto1<-list(
  #oto1 T1
  oto1_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #oto1 T2
  oto1_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #oto1 T3
  oto1_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto1_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-9.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Mira","Claudia","Kelly","Vanessa","Maarten") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

oto2<-list(
  #oto2 T1
  oto2_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #oto2 T2
  oto2_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #oto2 T3
  oto2_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  oto2_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-10.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Ilona","Samantha","Stravroula","Minou","Laura") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
) 

sabic<-list(
  #sabic T1
  sab_kw1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, header = T, sep = ";", dec=",", row.names=1, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_val1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=5, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_ia1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=11, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_is1<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=17, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #sabic T2
  sab_kw2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=23, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_val2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=29, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_ia2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=35, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_is2<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=41, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  #sabic T3
  sab_kw3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=47, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_val3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=53, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_ia3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=59, nrows=5, check.names=FALSE), stringsAsFactors=TRUE),
  sab_is3<-as.matrix(read.csv("data/ae_teamdynamics_MASTER_UCINET-11.txt",na.strings=9, sep = ";", dec=",", row.names=1, col.names=c("row.nameS", "Martine","Lulu","Katherina","Chrissie","Eva") , skip=65, nrows=5, check.names=FALSE), stringsAsFactors=TRUE)
)

ivf<-list(
  #t1
  ivf_kw1<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_val1<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_ia1<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_is1<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  ivf_kw2<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_val2<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_ia2<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_is2<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  ivf_kw3<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_val3<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_ia3<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ivf_is3<-as.matrix(read.delim("data/mol2014_IVF_12.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
)

oto3<-list(
  #t1
  oto3_kw1<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_val1<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_ia1<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_is1<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  oto3_kw2<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_val2<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_ia2<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_is2<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  oto3_kw3<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_val3<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_ia3<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oto3_is3<-as.matrix(read.delim("data/mol2014_oto3_13.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
)  

szl<-list(
  #t1
  szl_kw1<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_val1<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_ia1<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_is1<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  szl_kw2<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_val2<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_ia2<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_is2<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  szl_kw3<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_val3<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_ia3<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  szl_is3<-as.matrix(read.delim("data/mol2014_szl_14.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
) 

hht2<-list(
  #t1
  hht2_kw1<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_val1<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_ia1<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_is1<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  hht2_kw2<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_val2<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_ia2<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_is2<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  hht2_kw3<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_val3<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_ia3<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  hht2_is3<-as.matrix(read.delim("data/mol2014_hht2_15.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
) 

oce<-list(
  #t1
  oce_kw1<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_val1<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_ia1<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_is1<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  oce_kw2<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_val2<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_ia2<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_is2<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  oce_kw3<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_val3<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_ia3<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  oce_is3<-as.matrix(read.delim("data/mol2014_oce_16.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
) 

ck<-list(
  #t1
  ck_kw1<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_val1<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_ia1<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_is1<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  ck_kw2<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_val2<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_ia2<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_is2<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  ck_kw3<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_val3<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_ia3<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  ck_is3<-as.matrix(read.delim("data/mol2014_ck_17.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
) 

eapril<-list(
  #t1
  eapril_kw1<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_val1<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 7, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_ia1<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 14, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_is1<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 21, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t2
  eapril_kw2<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=28, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_val2<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=35, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_ia2<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 42, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_is2<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 49, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  #t3
  eapril_kw3<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=56, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_val3<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip=63, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_ia3<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 70, nrows=5, check.names=FALSE), stringAsFactors=TRUE),
  eapril_is3<-as.matrix(read.delim("data/mol2014_eapril_18.txt", na.strings=c("1", ""), header=TRUE, dec=".", row.names=1, skip= 77, nrows=5, check.names=FALSE), stringAsFactors=TRUE)
) 

##############################################################################
#dichotmized dependent networks. 
##############################################################################

library(sna)

# cut-off point: 4 as range of values go from 2 to 6. 2 means tie know person but never interacted. 

dichoGT4<-function(m){(m>4)+ 0}

alpheusgt4<-lapply(alpheus, dichoGT4)
adulteducgt4<-lapply(adulteduc, dichoGT4)
hhtgt4<-lapply(hht, dichoGT4)
joulzgt4<-lapply(joulz, dichoGT4)
oto1gt4<-lapply(oto1, dichoGT4)
oto2gt4<-lapply(oto2, dichoGT4)
sabicgt4<-lapply(sabic, dichoGT4)

gogt4<-lapply(go, dichoGT4)
icghgt4<-lapply(icgh, dichoGT4)
resetgt4<-lapply(reset, dichoGT4)
insitesgt4<-lapply(insites, dichoGT4)

ivfgt4<-lapply(ivf, dichoGT4)
oto3gt4<-lapply(oto3, dichoGT4)
hht2gt4<-lapply(hht2, dichoGT4)
szlgt4<-lapply(szl, dichoGT4)
ocegt4<-lapply(oce, dichoGT4)
ckgt4<-lapply(ck, dichoGT4)
eaprilgt4<-lapply(eapril, dichoGT4)

#####################################
#ACTOR ATTRIBUTES
#####################################
attributes<-read.csv("data/attributes_article.csv", header=TRUE, row.names=1)
go_att<-subset(attributes, team =="go")
icgh_att<-subset(attributes, team =="icgh")
in_att<-subset(attributes, team =="Insites")
re_att<-subset(attributes, team =="Re-set")
ae_att<-subset(attributes, team =="adult education")
alp_att<-subset(attributes, team =="alpheus")
hht_att<-subset(attributes, team =="hht")
joulz_att<-subset(attributes, team =="joulz")
oto1_att<-subset(attributes, team =="oto1")
oto2_att<-subset(attributes, team =="oto2")
sab_att<-subset(attributes, team =="sabic")
ivf_att<-subset(attributes, team=="IVF")
oto3_att<-subset(attributes, team=="oto3")
szl_att<-subset(attributes, team=="szl")
hht2_att<-subset(attributes, team=="hht2")
oce_att<-subset(attributes, team=="oce")
ck_att<-subset(attributes, team=="ck")
eapril_att<-subset(attributes, team=="eapril")

#####################################
#DATA PREPARATION
#####################################

# Define Siena variables:
# information search w/ cutoff greater than 3 
#all teams need to have same amount of waves
ae_is <- sienaNet(array(c(adulteducgt4[[4]],adulteducgt4[[8]],adulteducgt4[[12]]), dim=c(4,4,3)), allowOnly=FALSE) #allowOnly=false lifts the constraints set by only up or downward movements of ties. true is the default
alp_is <-sienaNet(array(c(alpheusgt4[[4]],alpheusgt4[[8]],alpheusgt4[[12]]), dim=c(4,4,3)), allowOnly=FALSE)
go_is  <-sienaNet(array(c(gogt4[[4]],gogt4[[8]],gogt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
hht_is <-sienaNet(array(c(hhtgt4[[4]],hhtgt4[[8]],hhtgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
icgh_is<-sienaNet(array(c(icghgt4[[4]],icghgt4[[8]],icghgt4[[12]]), dim=c(6,6,3)), allowOnly=FALSE)
in_is<-sienaNet(array(c(insitesgt4[[4]],insitesgt4[[8]],insitesgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
joulz_is<-sienaNet(array(c(joulzgt4[[4]],joulzgt4[[8]],joulzgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
oto1_is<-sienaNet(array(c(oto1gt4[[4]],oto1gt4[[8]],oto1gt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
oto2_is<-sienaNet(array(c(oto2gt4[[4]],oto2gt4[[8]],oto2gt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
re_is<-sienaNet(array(c(resetgt4[[4]],resetgt4[[8]],resetgt4[[12]]), dim=c(3,3,3)), allowOnly=FALSE)
sab_is<-sienaNet(array(c(sabicgt4[[4]],sabicgt4[[8]],sabicgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
ivf_is<-sienaNet(array(c(ivfgt4[[4]],ivfgt4[[8]], ivfgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
oto3_is<-sienaNet(array(c(oto3gt4[[4]],oto3gt4[[8]], oto3gt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
hht2_is<-sienaNet(array(c(hht2gt4[[4]],hht2gt4[[8]], hht2gt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
szl_is<-sienaNet(array(c(szlgt4[[4]],szlgt4[[8]], szlgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
oce_is<-sienaNet(array(c(ocegt4[[4]],ocegt4[[8]], ocegt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
ck_is<-sienaNet(array(c(ckgt4[[4]],ckgt4[[8]], ckgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)
eapril_is<-sienaNet(array(c(eaprilgt4[[4]],eaprilgt4[[8]], eaprilgt4[[12]]), dim=c(5,5,3)), allowOnly=FALSE)

#INFORMATION ALLOCATION
ae_ia <- sienaNet(array(c(adulteducgt4[[3]],adulteducgt4[[7]],adulteducgt4[[11]]), dim=c(4,4,3)), allowOnly=FALSE) #allowOnly=false lifts the constraints set by only up or downward movements of ties. true is the default
alp_ia <-sienaNet(array(c(alpheusgt4[[3]],alpheusgt4[[7]],alpheusgt4[[11]]), dim=c(4,4,3)), allowOnly=FALSE)
go_ia  <-sienaNet(array(c(gogt4[[3]],gogt4[[7]],gogt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
hht_ia <-sienaNet(array(c(hhtgt4[[3]],hhtgt4[[7]],hhtgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
icgh_ia<-sienaNet(array(c(icghgt4[[3]],icghgt4[[7]],icghgt4[[11]]), dim=c(6,6,3)), allowOnly=FALSE)
in_ia<-sienaNet(array(c(insitesgt4[[3]],insitesgt4[[7]],insitesgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
joulz_ia<-sienaNet(array(c(joulzgt4[[3]],joulzgt4[[7]],joulzgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
oto1_ia<-sienaNet(array(c(oto1gt4[[3]],oto1gt4[[7]],oto1gt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
oto2_ia<-sienaNet(array(c(oto2gt4[[3]],oto2gt4[[7]],oto2gt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
re_ia<-sienaNet(array(c(resetgt4[[3]],resetgt4[[7]],resetgt4[[11]]), dim=c(3,3,3)), allowOnly=FALSE)
sab_ia<-sienaNet(array(c(sabicgt4[[3]],sabicgt4[[7]],sabicgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
ivf_ia<-sienaNet(array(c(ivfgt4[[3]],ivfgt4[[7]], ivfgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
oto3_ia<-sienaNet(array(c(oto3gt4[[3]],oto3gt4[[7]], oto3gt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
hht2_ia<-sienaNet(array(c(hht2gt4[[3]],hht2gt4[[7]], hht2gt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
szl_ia<-sienaNet(array(c(szlgt4[[3]],szlgt4[[7]], szlgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
oce_ia<-sienaNet(array(c(ocegt4[[3]],ocegt4[[7]], ocegt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
ck_ia<-sienaNet(array(c(ckgt4[[3]],ckgt4[[7]], ckgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)
eapril_ia<-sienaNet(array(c(eaprilgt4[[3]],eaprilgt4[[7]], eaprilgt4[[11]]), dim=c(5,5,3)), allowOnly=FALSE)

#Knowing
ae_kw <- varDyadCovar(array(c(adulteduc[[1]], adulteduc[[5]]), dim=c(4,4,2)))
alp_kw <-varDyadCovar(array(c(alpheus[[1]], alpheus[[5]]), dim=c(4,4,2)))
go_kw  <-varDyadCovar(array(c(go[[1]], go[[5]]), dim=c(5,5,2)))
hht_kw <-varDyadCovar(array(c(hht[[1]], hht[[5]]), dim=c(5,5,2)))
icgh_kw <-varDyadCovar(array(c(icgh[[1]], icgh[[5]]), dim=c(6,6,2)))
in_kw <-varDyadCovar(array(c(insites[[1]], insites[[5]]), dim=c(5,5,2)))
joulz_kw <-varDyadCovar(array(c(joulz[[1]], joulz[[5]]), dim=c(5,5,2)))
oto1_kw <-varDyadCovar(array(c(oto1[[1]], oto1[[5]]), dim=c(5,5,2)))
oto2_kw <-varDyadCovar(array(c(oto2[[1]], oto2[[5]]), dim=c(5,5,2)))
re_kw <-varDyadCovar(array(c(reset[[1]], reset[[5]]), dim=c(3,3,2)))
sab_kw <-varDyadCovar(array(c(sabic[[1]], sabic[[5]]), dim=c(5,5,2)))
ivf_kw <-varDyadCovar(array(c(ivf[[1]], ivf[[5]]), dim=c(5,5,2)))
oto3_kw <-varDyadCovar(array(c(oto3[[1]], oto3[[5]]), dim=c(5,5,2)))
hht2_kw <-varDyadCovar(array(c(hht2[[1]], hht2[[5]]), dim=c(5,5,2)))
szl_kw <-varDyadCovar(array(c(szl[[1]], szl[[5]]), dim=c(5,5,2)))
oce_kw <-varDyadCovar(array(c(oce[[1]], oce[[5]]), dim=c(5,5,2)))
ck_kw <-varDyadCovar(array(c(ck[[1]], ck[[5]]), dim=c(5,5,2)))
eapril_kw <-varDyadCovar(array(c(eapril[[1]], eapril[[5]]), dim=c(5,5,2)))

#VALUING
ae_val <- varDyadCovar(array(c(adulteduc[[2]], adulteduc[[6]]), dim=c(4,4,2)))
alp_val <-varDyadCovar(array(c(alpheus[[2]], alpheus[[6]]), dim=c(4,4,2)))
go_val  <-varDyadCovar(array(c(go[[2]], go[[6]]), dim=c(5,5,2)))
hht_val <-varDyadCovar(array(c(hht[[2]], hht[[6]]), dim=c(5,5,2)))
icgh_val <-varDyadCovar(array(c(icgh[[2]], icgh[[6]]), dim=c(6,6,2)))
in_val <-varDyadCovar(array(c(insites[[2]], insites[[6]]), dim=c(5,5,2)))
joulz_val <-varDyadCovar(array(c(joulz[[2]], joulz[[6]]), dim=c(5,5,2)))
oto1_val <-varDyadCovar(array(c(oto1[[2]], oto1[[6]]), dim=c(5,5,2)))
oto2_val <-varDyadCovar(array(c(oto2[[2]], oto2[[6]]), dim=c(5,5,2)))
re_val <-varDyadCovar(array(c(reset[[2]], reset[[6]]), dim=c(3,3,2)))
sab_val <-varDyadCovar(array(c(sabic[[2]], sabic[[6]]), dim=c(5,5,2)))
ivf_val <-varDyadCovar(array(c(ivf[[2]], ivf[[6]]), dim=c(5,5,2)))
oto3_val <-varDyadCovar(array(c(oto3[[2]], oto3[[6]]), dim=c(5,5,2)))
hht2_val <-varDyadCovar(array(c(hht2[[2]], hht2[[6]]), dim=c(5,5,2)))
szl_val <-varDyadCovar(array(c(szl[[2]], szl[[6]]), dim=c(5,5,2)))
oce_val <-varDyadCovar(array(c(oce[[2]], oce[[6]]), dim=c(5,5,2)))
ck_val <-varDyadCovar(array(c(ck[[2]], ck[[6]]), dim=c(5,5,2)))
eapril_val <-varDyadCovar(array(c(eapril[[2]], eapril[[6]]), dim=c(5,5,2)))

#ADAPTIVE EXPERTISE
ae_ae<-coCovar(ae_att$aev2)
alp_ae<-coCovar(alp_att$aev2)
hht_ae<-coCovar(hht_att$aev2)
go_ae<-coCovar(go_att$aev2)
icgh_ae<-coCovar(icgh_att$aev2)
in_ae<-coCovar(in_att$aev2)
joulz_ae<-coCovar(joulz_att$aev2)
oto1_ae<-coCovar(oto1_att$aev2)
oto2_ae<-coCovar(oto2_att$aev2)
re_ae<-coCovar(re_att$aev2)
sab_ae<-coCovar(sab_att$aev2)
ivf_ae<-coCovar(ivf_att$aev2)
oto3_ae<-coCovar(oto3_att$aev2)
hht2_ae<-coCovar(hht2_att$aev2)
szl_ae<-coCovar(szl_att$aev2)
oce_ae<-coCovar(oce_att$aev2)
ck_ae<-coCovar(ck_att$aev2)
eapril_ae<-coCovar(eapril_att$aev2)

#SOCIAL IDENTITY: Balanced vs. imbalanced
ae_sib<-coCovar(ae_att$bal1)
alp_sib<-coCovar(alp_att$bal1)
hht_sib<-coCovar(hht_att$bal1)
go_sib<-coCovar(go_att$bal1)
icgh_sib<-coCovar(icgh_att$bal1)
in_sib<-coCovar(in_att$bal1)
joulz_sib<-coCovar(joulz_att$bal1)
oto1_sib<-coCovar(oto1_att$bal1)
oto2_sib<-coCovar(oto2_att$bal1)
re_sib<-coCovar(re_att$bal1)
sab_sib<-coCovar(sab_att$bal1)
ivf_sib<-coCovar(ivf_att$bal1)
oto3_sib<-coCovar(oto3_att$bal1)
hht2_sib<-coCovar(hht2_att$bal1)
szl_sib<-coCovar(szl_att$bal1)
oce_sib<-coCovar(oce_att$bal1)
ck_sib<-coCovar(ck_att$bal1)
eapril_sib<-coCovar(eapril_att$bal1)

group.1<- sienaDataCreate(IS= go_is, 
                          kw= go_kw,
                          val = go_val,
                          ia = go_ia,
                          ae = go_ae,
                          sib = go_sib)

group.2<- sienaDataCreate(IS = icgh_is, 
                          kw = icgh_kw,                         
                          val = icgh_val,
                          ia = icgh_ia,
                          ae = icgh_ae,
                          sib = icgh_sib)

group.3 <- sienaDataCreate(IS = in_is, 
                           kw = in_kw,                         
                           val = in_val,
                           ia = in_ia,
                           ae = in_ae,
                           sib = in_sib)


group.4 <- sienaDataCreate(IS = re_is, 
                           kw = re_kw,                         
                           val = re_val,
                           ia = re_ia,
                           ae = re_ae,
                           sib = re_sib)

group.5<- sienaDataCreate(IS = ae_is, 
                          kw = ae_kw,
                          val=ae_val,
                          ia = ae_ia,
                          ae = ae_ae,
                          sib = ae_sib)

group.6<- sienaDataCreate(IS = alp_is, 
                          kw = alp_kw,
                          val=alp_val,
                          ia = alp_ia,
                          ae = alp_ae,
                          sib = alp_sib)

group.7<- sienaDataCreate(IS = hht_is, 
                          kw = hht_kw,
                          val = hht_val,
                          ia = hht_ia,
                          ae = hht_ae,
                          sib = hht_sib)

group.8<- sienaDataCreate(IS = joulz_is,
                          kw = joulz_kw,
                          val = joulz_val,
                          ia = joulz_ia,
                          ae = joulz_ae,
                          sib = joulz_sib)

group.9<- sienaDataCreate(IS = oto1_is, 
                          kw = oto1_kw,
                          val=oto1_val,
                          ia = oto1_ia,
                          ae = oto1_ae,
                          sib = oto1_sib)

group.10<- sienaDataCreate(IS = oto2_is, 
                           kw = oto2_kw,
                           val = oto2_val,
                           ia = oto2_ia,
                           ae = oto2_ae,
                           sib = oto2_sib)

group.11<- sienaDataCreate(IS = sab_is, 
                           kw = sab_kw,
                           val=sab_val,
                           ia = sab_ia,
                           ae = sab_ae,
                           sib = sab_sib)

group.12<-sienaDataCreate(IS = ivf_is, 
                          kw = ivf_kw,
                          val=ivf_val,
                          ia = ivf_ia,
                          ae = ivf_ae,
                          sib = ivf_sib)

group.13<-sienaDataCreate(IS = oto3_is, 
                          kw = oto3_kw,
                          val=oto3_val,
                          ia = oto3_ia,
                          ae = oto3_ae,
                          sib = oto3_sib)

group.14<-sienaDataCreate(IS = hht2_is, 
                          kw = hht2_kw,
                          val=hht2_val,
                          ia = hht_ia,
                          ae = hht2_ae,
                          sib = hht_sib)

group.15<-sienaDataCreate(IS = szl_is, 
                          kw = szl_kw,
                          val=szl_val,
                          ia = szl_ia,
                          ae = szl_ae,
                          sib = szl_sib)

group.16<-sienaDataCreate(IS = oce_is, 
                          kw = oce_kw,
                          val=oce_val,
                          ia = oce_ia,
                          ae = oce_ae,
                          sib = oce_sib)

group.17<-sienaDataCreate(IS = ck_is, 
                          kw = ck_kw,
                          val=ck_val,
                          ia = ck_ia,
                          ae = ck_ae,
                          sib = ck_sib)

group.18<-sienaDataCreate(IS = eapril_is, 
                          kw = eapril_kw,
                          val=eapril_val,
                          ia = eapril_ia,
                          ae = eapril_ae,
                          sib = eapril_sib)


coev <- sienaGroupCreate(list(group.1, group.2, group.3, group.4, group.5, group.6, group.7, group.8, group.9, group.10, group.11, group.12, group.13, group.14, group.15, group.16, group.17,group.18))
coeveffect <- getEffects(coev)
coevalgo<-sienaAlgorithmCreate(projname = "Coevolution", maxlike=TRUE, mult=6)
#get initial description
print01Report(coev, modelname = 'Coevolution')

coeveffect <- setEffect(coeveffect, recip, random=T)
fit1 <- sienaBayes(coevalgo, data=coev, effects=coeveffect)
