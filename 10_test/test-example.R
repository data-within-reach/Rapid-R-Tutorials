# created by: Data Within Reach

#install.packages("tidyr")
library(tidyr)

#install.packages("testthat")
library(testthat)



# Define your DataFrame
year_df <- data.frame(century = c(18, 19, 20), year = c(99, 82, 01))

unite_century_year <- function(year_df) {
  full_year_df <- year_df %>% unite("year_full", century, year, sep = "", 
                                    remove = TRUE)
  return(full_year_df)
}

afull_year_df <- unite_century_year(year_df)
print(afull_year_df)



#write a test case:
test_that("unite function handles leading zeros correctly", {
  input_df <- data.frame(century = c(18, 19, 19, 19, 20, 20), 
                         year = c(81, 63, 74, 99, 03, 23))
  #result <- unite_century_year(input_df)
  result <- updated_unite_century_year(input_df)
  
  expected_output <- data.frame(year_full = c("1881", "1963", "1974", "1999", 
                                              "2003", "2023"))
  
  expect_equal(result, expected_output)
})



#fix the function (normally just change the original one)
updated_unite_century_year <- function(year_df) {
  year_df$year <- sprintf("%02d", year_df$year)
  full_year_df <- year_df %>% unite("year_full", century, year, sep = "", 
                                    remove = TRUE)
  return(full_year_df)
}