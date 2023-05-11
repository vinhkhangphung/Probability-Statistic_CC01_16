library(mice)
library("Hmisc")
library(corrplot)
library("PerformanceAnalytics")
source("flattenCorrMatrix.R")
library("Kendall")
getwd()

#### OLD CLEANING FILES

raw_data <- read.csv("CPU_benchmark_v4.csv", header = TRUE)

missing_data <- md.pattern(raw_data)

clean_data <- na.omit(raw_data)

# Identify duplicate observations
duplicates <- clean_data[duplicated(clean_data),]

# Print the number of duplicate observations
cat("Number of duplicate observations: ", nrow(duplicates), "\n")

mtrx_data <- subset(clean_data, select=-c(cpuName, socket, category, testDate))
corr_matrix <- co_mat2 <- rcorr(as.matrix(mtrx_data))

corrplot(corr_matrix$r, type = "upper", order = "hclust",
        tl.col = "black", tl.srt = 45)

co_mat2$P[is.na(co_mat2$P)] = 0
tmp <- flattenCorrMatrix(co_mat2$r, co_mat2$P)

corrplot(co_mat2$r, type="upper", order="hclust",
        p.mat = co_mat2$P, sig.level = 0.01
        , tl.col = "black", tl.srt = 45)

numeric_draw_data <- lapply(mtrx_data, as.numeric)
numeric_draw_data <- do.call("rbind", numeric_draw_data)
numeric_draw_data <- numeric_draw_data[complete.cases(numeric_draw_data),]
numeric_draw_data <- t(numeric_draw_data)
chart.Correlation(numeric_draw_data, histogram=TRUE, pch=19)

# First, convert the data to ranks using the rank() function
ranked_data <- lapply(numeric_draw_data, rank)

# Calculate the Spearman's rank correlation coefficient and its p-value
cor_test <- cor.test(ranked_data$cpuValue, ranked_data$cpuMark, method="kendall")
print(cor_test)



print(head(clean_data))
