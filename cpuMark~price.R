# Separate the data into two groups
group1 <- clean_data$cpuMark
group2 <- clean_data$price

# group1 <- group1[!is.na(group1)]
# group2 <- group2[!is.na(group2)]

# Check for empty vectors
if (length(group1) == 0 | length(group2) == 0) {
  stop("Error: not enough non-missing values in one or both input vectors.")
}

# Perform the Wilcoxon rank-sum test
wilcox.test(group1, group2, alternative = "two.sided")
