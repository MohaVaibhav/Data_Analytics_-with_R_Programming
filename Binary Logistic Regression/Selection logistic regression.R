#Binary Logistic Regression
logit123 <- read_excel("H:/R_program/Binary Logistic Regression/logit123.xlsx")
attach(logit123)

head(logit123)
tail(logit123)
summary(logit123)
#generalized linear model
model<-glm(selection~.,data=logit123,family="binomial")
summary(model)

#model1<-glm(selection~skin+bmi, data = logit123, family = "binomial")
#summary(model1)
#probability
res<-predict(model,logit123,type="response")
res
View(model)
head(logit123)
head(res)
#confusion Matrix
table(Actualvalue=logit123$Selection,Predictedvalue=res>0.5)
(6+14)/30
table(Actualvalue=logit$type,Predictedvalue=res>0.4)
(6+16)/30
table(Actualvalue=logit$type,Predictedvalue=res>0.3)
(4+18)/30
