####Data Analysis for final Biostatistics project 
##path for Data C:/Users/User/Desktop/Biostatistics/Final_Project
install.packages("devtools")
library(devtools)


raw_data<-read.csv("rawdata_blimpvsAVPI.csv")

head(raw_data) ## shows initial Data Table 
##Make initial plot of data
##plot(AVPI~ Blimp.1, data = raw_data, pch=16,col="blue", xlab= "Blimp-1 expression (portion of cells)", ylab = "cell death (portion of cells)",main="Cell Death vs Blimp-1 Expression")## make scatter plot 
linearregression<- lm(AVPI ~ Blimp.1, data = raw_data)
## linear regression 
ttestsummary<-summary(linearregression)
out<- capture.output(ttestsummary)
cat("Results of Linear Regression testing the slope against a slope of zero",out,file ="Resultsfile.txt",sep="\n",append=FALSE)
pdf("DataPlot.pdf")
plot(AVPI~ Blimp.1, data = raw_data, pch=16,col="blue", xlab= "Blimp-1 expression (portion of cells)", ylab = "cell death (portion of cells)",main="Cell Death vs Blimp-1 Expression")
abline(linearregression) ## Makes regression line
dev.off()



