# subset the data to include only Intel and AMD CPUs
intel_df <- clean_data[grepl("Intel", clean_data$cpuName),]
amd_df <- clean_data[grepl("AMD", clean_data$cpuName),]

# Perform Wilcoxon rank-sum test
wilcox.test(amd_df$cpuValue, intel_df$cpuValue, "greater")
wilcox.test(amd_df$powerPerf, intel_df$powerPerf, "greater")