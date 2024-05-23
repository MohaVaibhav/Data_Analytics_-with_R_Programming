#Random Forest Classifir
# extension of decision tree
#ensemble technique
data(iris)
attach(iris)
#Structure of the iris data 
str(iris)
#data partition
set.seed(123)
ind<-sample(2,nrow(iris),replace=T,prob=c(0.7,0.3))
nrow(iris)
ncol(iris)
train<-iris[ind==1,]
test<-iris[ind==2,]
#random Forest
library(randomForest)
set.seed(222)
rf<-randomForest(Species~.,data=train)
print(rf)
attributes(rf)
rf$err.rate
rf$confusion
library(caret)
p1<-predict(rf,test)
head(p1)
head(iris)
head(test$Species)
library(caret)
library(e1071)
confusionMatrix(p1,test$Species)
p2<-predict(rf,test)

library(caret)
p2<-predict(rf,train)
head(p2)
head(iris)
head(train$Species)
library(caret)
library(e1071)
confusionMatrix(p2,train$Species)
p2<-predict(rf,train)

rf<-randomForest(Species~.,data = train,ntree=200,mtry=2,importance=TRUE,proximity=TRUE)
print(rf)
hist(treesize(rf),main="no.of nodes for the trees",col="red")
#variable importance
varImpPlot(rf)
varImpPlot(rf,sort=T,n.var=3,main="top 3")
importance(rf)
#variable used no of times
varUsed(rf)
#partial dependence plot
partialPlot(rf,train,Petal.Length,"setosa")
#petal.length effect on setosa--- relation between petal.length and setosa
partialPlot(rf,train,Petal.Width,"setosa")
partialPlot(rf,train,Petal.Length,"versicolor")
View(iris)
partialPlot(rf,train,Sepal.Width,"versicolor")
getTree(rf,1,labelVar = TRUE)

