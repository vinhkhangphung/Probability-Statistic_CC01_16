hist(clean_data$price, breaks = 30, col = "blue", main = "Histogram of Price")

# create Q-Q plot of price
qqnorm(clean_data$price)
qqline(clean_data$price)