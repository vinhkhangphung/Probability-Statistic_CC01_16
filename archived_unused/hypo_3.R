# Conduct a linear regression analysis to test the hypothesis
linear_model <- lm(TDP ~ cpuMark, data = clean_data)
summary(linear_model)
