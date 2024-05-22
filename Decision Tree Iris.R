# decision Trees
#classification tree
#data
data(iris)
attach(iris)
View(iris)
str(iris)
set.seed(555)
#used to select same random samples of train and test to get same result of all repetition
ind<-sample(2,nrow(iris),replace=TRUE,prob=c(0.8,0.2))
train<-iris[ind==1,]
View(train)
test<-iris[ind==2,]
library(party)
tree<-ctree(Species~.,train)
print(tree)
plot(tree)
plot(tree,type='simple')
head(train)
#confusuion Matrix
p1<-predict(tree,test)
p1
#cross tabulation
tab1<-table(Predicted=p1,Actual=test$Species)
tab1
#accuracy
sum(diag(tab1))/sum(tab1)*100
100-(sum(diag(tab1))/sum(tab1))*100

p2<-predict(tree,train)
p2
tab2<-table(Predicted = p2,Actual =train$Species)
tab2
sum(diag(tab2))/sum(tab2)*100

#Regression Tree
tree1<-ctree(Sepal.Length~.,train)
tree1
plot(tree1)
