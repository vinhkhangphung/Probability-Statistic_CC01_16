library(mice)
getwd()


raw_data <- read.csv("CPU_benchmark_v4.csv", header = TRUE)

missing_data <- md.pattern(raw_data)

clean_data <- na.omit(raw_data)
clean_data$powerPerf <- as.numeric(clean_data$powerPerf)

# Identify duplicate observations
duplicates <- clean_data[duplicated(clean_data),]

# Print the number of duplicate observations
cat("Number of duplicate observations: ", nrow(duplicates), "\n")

# Select the variables to normalize
vars_to_normalize <- c("price", "cpuMark", "cpuValue", "threadMark", 
                       "threadValue", "TDP", "powerPerf", "cores")

# Normalize the selected variables
normalized_data <- as.data.frame(scale(clean_data[, vars_to_normalize]))

# Combine the normalized variables with the non-normalized variables
final_data <- cbind(clean_data[, !(names(clean_data) %in% vars_to_normalize)], 
                    normalized_data)

# Drop columns (socket, category, testDate)
final_data <- final_data[, !(names(final_data) %in% c("socket", 
                                                      "testDate", "category"))]


