Discriminant_Analysis_2_ <- read_excel("H:/R_program/Discriminat Analysis/Discriminant Analysis 2 .xlsx")
attach(Discriminant_Analysis_2_)
library(MASS)
ldaout<-lda(Buyer~Durability+Mileage+`Interior Design`+Look,Discriminant_Analysis_2_)
summary(ldaout)
ldaout
View(Discriminant_Analysis_2_)
ldapred<-predict(ldaout,Discriminant_Analysis_2_)
ldapred
ldaclass<-ldapred$class
ldaclass
#confusion Matrix
ldatable<-table(ldaclass,Discriminant_Analysis_2_$Buyer)
ldatable
accur<-sum(diag(ldatable))/sum(ldatable)*100
accur
