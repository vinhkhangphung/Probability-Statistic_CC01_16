clean_data$powerPerf <- as.numeric(clean_data$powerPerf)

# Fit the linear regression model
model <- lm(price ~ cpuMark + threadMark + cores + TDP + powerPerf, data = clean_data)

# Check the summary of the model
summary(model)
