# Fit a multiple linear regression model to predict powerPerf based on cpuMark and price
model <- lm(powerPerf ~ cpuMark + price, data = clean_data)

# View the summary of the model
summary(model)
