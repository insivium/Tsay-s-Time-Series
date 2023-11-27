library(readr)
library(xts)

# List of file paths for each stock's data
file_paths <- c(
  "C:\\Users\\~~~~~~\\Desktop\\UTM\\Statistics\\Time Series\\MCBG.csv",
  "C:\\Users\\~~~~~~\\Desktop\\UTM\\Statistics\\Time Series\\NMH.csv",
  # Add more file paths as needed
)

# Create an empty list to store xts objects
stock_xts_list <- list()

# Assign colors for plotting
colors <- rainbow(length(file_paths))

# Extract tickers from file names
tickers <- tools::file_path_sans_ext(basename(file_paths))

# Loop through the list of files
for (i in seq_along(file_paths)) {
  # Read the CSV file
  data <- read.csv(file_paths[i], sep = ",", stringsAsFactors = FALSE)

  # Extract relevant columns
  cleaned_data <- data[, c("Date", "Price")]

  # Convert Date to Date object and Price to numeric
  cleaned_data$Date <- as.Date(cleaned_data$Date, format = "%d/%m/%Y")
  cleaned_data$Price <- as.numeric(gsub("[^0-9.]", "", cleaned_data$Price))

  # Fill missing values with the mean
  cleaned_data$Price[is.na(cleaned_data$Price)] <- mean(cleaned_data$Price, na.rm = TRUE)

  # Normalize prices using the scale function
  normalized_prices <- scale(cleaned_data$Price)

  # Store normalized_prices in stock_xts_list
  stock_xts_list[[i]] <- xts(normalized_prices, order.by = cleaned_data$Date)
}

# Create an empty plot using the first xts object as reference
plot(index(stock_xts_list[[1]]), stock_xts_list[[1]], type = "l", lty = 1, col = colors[1],
     xlab = "Date", ylab = "Normalized Stock Price", main = "Normalized Stock Prices")

# Plot the time series for each stock after scaling
for (i in seq_along(stock_xts_list)[-1]) {
  lines(index(stock_xts_list[[i]]), stock_xts_list[[i]], col = colors[i], lty = 1)
}

# Add a legend
legend("topleft", legend = tickers, col = colors, lty = 1, cex = 0.8)
