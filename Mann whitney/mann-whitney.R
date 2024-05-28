# mann Whitney U test
mann_whitney <- read_excel("H:/R_program/Mann whitney/mann-whitney.xlsx")
attach(mann_whitney)
str(mann_whitney)
wilcox.test(Sales~Store,data=mann_whitney)


# to find the difference (from median and not mean)
#
#since the p value is  0.347 which is greater than 0.05 which means that 
#null hypothesis is accepted 
# It means there is no significant difference between both the stores i.e 
# both the stores are doing good

# Example 2

data("mtcars")
attach(mtcars)
wilcox.test(mpg~am,data=mtcars)

# Wilcoxon signed Rank test -- Paired T test
# non parametric option of paired T test
Wilcoxon <- read_excel("H:/R_program/Mann whitney/Wilcoxon.xlsx")
attach(Wilcoxon)
wilcox.test(Before,After,paired = TRUE, alternative="two.sided")




# since the pvalue is 0.77 which is greater than 0.05
# so the null hypothesis is accepeted and null hypothesis is rejected
# it means that there is significant difference in terms of sales
#before and after the adve,rtisement 

