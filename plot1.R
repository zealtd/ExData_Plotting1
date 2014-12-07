#R codes for plot1.png

hp1<-read.table("household_power_consumption.txt",header=TRUE,sep=c(";"),strip.white=TRUE,
                na.strings=c("?",""))
library(dplyr)
hpc<-rbind(filter(hp1,(Date=="1/2/2007")),filter(hp1,(Date=="2/2/2007")))
#Plot 1
png(filename="plot1.png",width = 480, height = 480)
hist(hpc$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()