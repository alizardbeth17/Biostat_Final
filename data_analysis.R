####Data Analysis for final Biostatistics project 
##path for Data C:/Users/User/Desktop/Biostatistics/Final_Project

raw_data<-read.csv("rawdata_blimpvsAVPI.csv")
head(raw_data)
##Make initial plot of data
plot(AVPI~ Blimp.1, data = raw_data)
linearregression<- lm(AVPI ~ Blimp.1, data = raw_data)
summary(lionRegression)
abline(lionRegression)
predict(lionRegression, data.frame(Blimp.1 = 0.50), se.fit = TRUE)
anova(lionRegression)
summary(lionRegression)
confint(lionRegression)
xpt <- seq(min(lion$proportionBlack), max(lion$proportionBlack), 
           length.out = 100)
ypt <- data.frame( predict(lionRegression, 
                           newdata = data.frame(proportionBlack = xpt), 
                           interval = "confidence") )
lines(ypt$lwr ~ xpt, lwd = 1.5, lty = 2)
lines(ypt$upr ~ xpt, lwd = 1.5, lty = 2)
xpt <- seq(min(lion$proportionBlack), max(lion$proportionBlack), 
           length.out = 100)
ypt <- data.frame(predict(lionRegression, newdata = data.frame(proportionBlack = xpt), 
                          interval = "prediction", level = 0.95))
lines(ypt$lwr ~ xpt, lwd = 1.5, lty = 3)
lines(ypt$upr ~ xpt, lwd = 1.5, lty = 3)
