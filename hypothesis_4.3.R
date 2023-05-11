# subset the data to include only Intel and AMD CPUs
intel_df <- clean_data[grepl("Intel", clean_data$cpuName),]
amd_df <- clean_data[grepl("AMD", clean_data$cpuName),]

var.test(intel_df$price, amd_df$price)

# Perform Wilcoxon rank-sum test
wilcox.test(intel_df$price, amd_df$price)
