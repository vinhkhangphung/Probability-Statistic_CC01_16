
# Determine price range into (low, medium, high)
# -----------------------------------------------------------------
# Calculate quartiles
quartiles <- quantile(clean_data$price, probs = c(0, 1/3, 2/3, 1))

# Define price ranges
low_range <- quartiles[2]
medium_range <- quartiles[3]

# Print the price ranges
cat("Price Range - Low: <$", low_range, "\n")
cat("Price Range - Medium: $", low_range, " - $", medium_range, "\n")
# -----------------------------------------------------------------

# Create a new column for the desired category
clean_data$cpu_category <- ifelse(grepl("AMD", clean_data$cpuName), "AMD", 
                                  ifelse(grepl("Intel", clean_data$cpuName)
                                         , "Intel", "Other"))

# Create a contingency table of price categories and CPU categories
contingency_table <- table(cut(clean_data$price, breaks = c(-Inf, low_range,
                                                            medium_range, Inf))
                           , clean_data$cpu_category)

# Perform chi-square test
chi_square <- chisq.test(contingency_table)

# Print the test results
print(chi_square)
