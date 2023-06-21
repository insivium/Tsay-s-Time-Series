library(quantmod)
library(xts)

tickers <- c('ETH-USD', 'BTC-USD','BCH-USD','LTC-USD','SOL-USD','DOT-USD')
data <- new.env()
start_date <- as.Date('2021-01-01')
end_date <- as.Date('2021-12-31')

getSymbols(tickers, from = start_date, to = end_date, env = data)

# Extract the closing prices for each security
closing_prices <- do.call(merge, lapply(tickers, function(ticker) Hi22(data[[ticker]])))

#Log transformation on time series
log_closing_prices<-log(closing_prices)

# Normalize the closing prices using the scale function
log_normalized_prices <- apply(log_closing_prices, 2, scale)

# shift above zero
shifted_prices<-log_normalized_prices + abs(min(log_normalized_prices)) + 1

# Create an xts object from the shifted log-normalized_prices matrix
normalized_xts <- xts(shifted_prices, order.by = index(closing_prices))

# Create an empty plot with correct date range
plot(normalized_xts[1, 1], type = "n", xlim = index(normalized_xts), ylim = range(normalized_xts),
     xlab = "Date", ylab = "Normalized Closing Price", main = "Normalized Stock Prices")

# Plot the time series using matplot
matplot(index(normalized_xts), normalized_xts, type = "l", lty = 1, col = 1:length(tickers),
xlab="Date",ylab="Normalised Closing Prices")

# Add labels with tickers at the last observation point
text(x = index(normalized_xts)[nrow(normalized_xts)], y = normalized_xts[nrow(normalized_xts), ],
     labels = tickers, pos = 4, col = 1:length(tickers))

# Add a legend
legend("topleft", legend = tickers, col = 1:length(tickers), lty = 1,cex=0.8)
