y<-matrix(6,8,8,7,7,12,9,8,9,10,10,11,9,10,11,nrow=1,ncol=15)
x1<-rep(c(1),times=15) #create a matrix of 15 elements with digit 1
x2<-c(9, 10, 8, 7, 10, 4, 5, 5, 6, 8, 7, 4, 9, 5, 8)
x3<- c(8, 13, 11, 10,12,16,10,10,12,14,12,16,14,10,12)
A <- rbind(x1, x2, x3) # create a matrix - rowwise filling
cross<- A %*% y  # sum of cross products
SSCP<- A %*% t(A)  #sum of squares and cross-products 
INVA<-solve(SSCP)  # inverse
coeffs<-INVA %*% y cross
print(INVA)
print(coeffs)     #linear regression coefficients
summary(model)    # check coefficients using built-in R function
