#wilcoxon one sample test
# It is a non-parametric option of one sample t-test
#data is not continous(ordinal)
# data is not satisfying condition of normality
One_sample_Wilcoxon_test<- read_excel("H:/R_program/Wilcoxon Test/One sample Wilcoxon test.xlsx")
attach(One_sample_Wilcoxon_test)
wilcox.test(diameter,mu=25,alternative="two.sided")
#Mann Whitney U test
#or
# Wilcoxon two sample test
# it is a non parametric option of independent sample T test
