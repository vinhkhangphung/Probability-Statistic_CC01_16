library(dplyr)

# Assuming your data frame is named 'clean_data' and the column containing socket types is named 'socket'
num_distinct_socket_types <- clean_data %>%
  distinct(socket) %>%
  n_distinct()

print(num_distinct_socket_types)