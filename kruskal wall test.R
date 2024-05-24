# Kruskal Wallis H Test
# non paranetric option of ANOVA
data("iris")
attach(iris)
kruskal.test(Petal.Length~Species,data=iris)
#Null Hypothesis H0: there is no significant difference in terms of petal length
# of the three species
# Alternative Hypotheis: There is significant difference in terms

# Since the p vallue is less than 0.05 null hpothesis is rejected and alternative
#hypothesis is accpeted there is a significant differnce between petal length 
# of the three species