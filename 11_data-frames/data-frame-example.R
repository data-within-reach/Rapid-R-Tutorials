# created by: Data Within Reach

# Creating a data frame
employee <- c("Alice", "Bob", "Charlie")
age <- c(25, 32, 28)
city <- c("New York", "London", "Paris")

employee_data <- data.frame(employee, age, city)


# Accessing columns in a data frame
names <- employee_data$name
ages <- employee_data$age


# Filtering a data frame
filtered_employee_df <- employee_data[employee_data$age > 25, ]


# Sorting a data frame
sorted_employee_df <- employee_data[order(employee_data$age), ]



# Adding a new column
employee_data$profession <- c("Engineer", "Manager", "Designer")

