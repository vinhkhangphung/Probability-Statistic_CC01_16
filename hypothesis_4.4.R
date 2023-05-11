# Categorize CPUs as "Intel" or "AMD" based on cpuName
clean_data$cpu_category <- ifelse(grepl("Intel", clean_data$cpuName), "Intel", 
                              ifelse(grepl("AMD", clean_data$cpuName), "AMD", "Other"))

# Subset the data for Intel CPUs
intel_data <- clean_data[clean_data$cpu_category == "Intel", "threadMark"]

# Subset the data for AMD CPUs
amd_data <- clean_data[clean_data$cpu_category == "AMD", "threadMark"]

# Check if both subsets have enough data
if (length(intel_data) < 2 || length(amd_data) < 2) {
  print("Insufficient data to perform the Kolmogorov-Smirnov test.")
} else {
  # Perform the Kolmogorov-Smirnov test
  ks_test <- ks.test(intel_data, amd_data)
  
  # Print the test results
  print(ks_test)
}
