data <- data.frame(y = c(6, 8, 8, 7, 7, 12, 9, 8, 9, 10, 10, 11, 9, 10, 11),
                   x1 = c(9, 10, 8, 7, 10, 4, 5, 5, 6, 8, 7, 4, 9, 5, 8),
                   x2= c(8, 13, 11, 10,12,16,10,10,12,14,12,16,14,10,12))
model<- lm(data)
residuals<- model$residuals
varcov<-vcov(model)        # variance-covariance matrix
RSS<- sum(residuals^2)     # residuals for errors (e'e)
print(varcov)
