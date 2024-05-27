#chi-squared
chi_square <- read_excel("C:/Users/Admin/Downloads/chi-square.xlsx")
attach(chi_square)
table(code)
table(grade) 
View(chi_square)
#cross tabulation values of variable against other
tab<-table(code,grade)
tab
#Chi square test
CHI<-chisq.test(tab,correct=T)
CHI$expected
#fisher's test
fisher.test(tab,conf.int=T,conf.level = 0.95)
