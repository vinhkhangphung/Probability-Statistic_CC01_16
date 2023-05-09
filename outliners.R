# Calculate the IQR
q3 <- quantile(clean_data$price, 0.75)
q1 <- quantile(clean_data$price, 0.25)
iqr <- q3 - q1
# Identify potential outliers using the IQR
lower <- q1 - 1.5 * iqr
upper <- q3 + 1.5 * iqr
outliers <- clean_data$price[clean_data$price < lower | clean_data$price > upper]

# Create box plot with potential outliers indicated
boxplot(clean_data$price, main = "Box Plot of Price", ylab = "Price", notch = TRUE)
points(rep(1, length(outliers)), outliers, pch = 19, col = "red")

# Count number of potential outliers
num_outliers <- sum(clean_data$price < lower | clean_data$price > upper)
cat("Number of potential outliers:", num_outliers)