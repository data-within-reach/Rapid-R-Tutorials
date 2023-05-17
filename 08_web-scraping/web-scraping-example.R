# created by: Data Within Reach

#install.packages("rvest")  # un-comment this if you haven't installed 'rvest'
library(rvest)

url <- 'https://www.imdb.com/chart/top'
webpage <- url %>% read_html()

titles <- webpage %>% html_nodes('td.titleColumn a') %>% html_text()
titles


ratings <- webpage %>% html_nodes('td.imdbRating strong') %>% html_text()
ratings