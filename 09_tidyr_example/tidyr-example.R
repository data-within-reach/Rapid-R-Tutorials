# created by: Data Within Reach

#install.packages("tidyr")
library(tidyr)

# Start with some simple sample data
test_score_data <- data.frame(Name = c("Alice", "Bob", "Charlie"), 
                   birth_century = c(19, 20, 20), birth_year = c(89, 02, 05), 
                   Score_A = c(85, 90, 88), Score_B = c(92, 87, 94))
test_score_data

# Use unite() to combine columns such that the year is one number
unite_birth_year <-  test_score_data %>% unite(c(birth_century, birth_year), 
                                               col = "year", sep = "")
unite_birth_year

# Use pivot_longer() to show each test score on its own line
pivot_longer_score <- unite_birth_year %>% pivot_longer(c("Score_A", "Score_B"))
pivot_longer_score





# Demonstrate tidyr functions with real-world data

library(rvest)
library(dplyr)
# Load data
url <- 'https://www.imdb.com/chart/top/'
webpage <- read_html(url)
rank_data <- html_nodes(webpage, '.titleColumn') %>% html_text(trim = TRUE)
rating_data <- html_nodes(webpage, '.imdbRating') %>% html_text(trim = TRUE)

# Create data frame
movies_df <- data.frame(Rank = 1:100, Details = rank_data[1:100], 
                        Score = as.numeric(rating_data[1:100]))
movies_df

# Use separate() to split 'Details' into 'Year', 'Rank' and 'Title'
tidy_movies_df <- movies_df %>% 
  separate(Details, into = c('redundant1', 'Title', 'Date'), sep = "\\n")
tidy_movies_df


