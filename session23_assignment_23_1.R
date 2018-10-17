#session23_assignment_23.1

#1. Perform the below given activities:

#a. Take Apple Stock Prices from Yahoo Finance for last 90 days
getwd()
p<-"C:/Users/DELL/Documents"
setwd(p)
aapl<-read.csv("C:/Users/DELL/Documents/AAPL.csv")
View(aapl)
new_date<-as.Date(aapl$Date)
str(aapl)

library(timeSeries)
library(forecast)

dat<-ts(aapl$Close)
dat

plot(dat,main="daily closing price")

decompose(dat)

decompose(dat, type = 'multi')
par(mfrow=c(1,2))

plot(decompose(dat, type = 'multi'))

library(forecast)

seasonplot(dat)

lag(dat,10)
lag.plot(dat)

pac<-pacf(dat)

pac$acf

ac<-acf(dat)
ac$acf
dat

model<-lm(dat~c(1:length(dat)))
summary(model)



#b. Predict the Stock closing prices for next 15 days.



#c. Submit your accuracy



#d. After 15 days again collect the data and compare with your forecast 
