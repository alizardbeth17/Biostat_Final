####Data Analysis for final Biostatistics project 
##path for Data C:/Users/User/Desktop/Biostatistics/Final_Project
install.packages("devtools")
library(devtools)


raw_data<-read.csv("rawdata_blimpvsAVPI.csv")

head(raw_data) ## shows initial Data Table 
##Make initial plot of data
plot(AVPI~ Blimp.1, data = raw_data, pch=16, xlab= "Blimp-1 expression", ylab = "cell death",main="Cell Death vs Blimp-1 Expression")## make scatter plot 
linearregression<- lm(AVPI ~ Blimp.1, data = raw_data)
## linear regression 
ttestsummary<-summary(linearregression)

abline(linearregression) ## Makes regression line
##exportablesummary<-tidyr(linearregression)

predict(linearregression, data.frame(Blimp.1 = 0.50), se.fit = TRUE)
anova(linearregression)
summary(lionRegression)

confint(linearregression)

