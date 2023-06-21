x1 <- c(1, 2, 3, 4, 5)
x2 <- c(6, 7, 8, 9, 10)

# Define the response variable
y <- c(11, 12, 13, 14, 15)

# Create a data frame
data <- data.frame(x1, x2, y)

# Fit the multiple linear regression model
model <- lm(y ~ x1 + x2, data = data)

# Get the coefficients
coefficients <- coef(model)