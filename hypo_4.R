# Subsetting data for CPUs with 48 and 64 cores
subset_data <- subset(raw_data, cores %in% c(48, 64))

# Conducting independent samples t-test
t.test(cpuMark ~ cores, data = subset_data)
