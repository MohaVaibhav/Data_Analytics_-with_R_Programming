#Binary Logistic Regression
logit <- read_excel("H:/R_program/Binary Logistic Regression/logit.xlsx")
attach(logit)
head(logit)
tail(logit)
summary(logit)
#generalized linear model
model<-glm(type~.,data=logit,family="binomial")
summary(model)

model1<-glm(type~skin+bmi, data = logit, family = "binomial")
summary(model1)
#probability
res<-predict(model,logit,type="response")
res
View(model)
head(logit)
head(res)
#confusion Matrix
table(Actualvalue=logit$type,Predictedvalue=res>0.5)
(6+14)/30
table(Actualvalue=logit$type,Predictedvalue=res>0.4)
(6+16)/30
table(Actualvalue=logit$type,Predictedvalue=res>0.3)
(4+18)/30
library(ROCR)
rocrpred = prediction(res,logit$type)
rocrpred
rocrpref<-performance(rocrpred,"tpr","fpr")
plot(rocrpref,colorsize=TRUE,print.cutoff.at=seq(0.1,by=0.1))
#
library(rcompanion) 
nagelkerke(model)


