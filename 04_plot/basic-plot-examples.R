# created by: Data Within Reach
# url: https://youtube.com/playlist?list=PLuK223moJh6nCQDwTffNa3lx37RoVfHh4

# set up the data by loading the Motor Trend Cars Dataset:
data("mtcars")

# view the dataset:
head(mtcars)


# Create a scatter plot
plot(mtcars$mpg, mtcars$hp, main = "Scatter Plot: MPG vs Horsepower", 
     xlab = "Miles per Gallon", ylab = "Horsepower")

# Create a line plot
plot(mtcars$mpg, mtcars$hp, type = "l", main = "Line Plot: MPG vs Horsepower", 
     xlab = "Miles per Gallon", ylab = "Horsepower")



# Install and load the vioplot package
install.packages("vioplot")
library(vioplot)

# Create a histogram
hist(mtcars$mpg, main = "Histogram: Miles per Gallon", 
     xlab = "Miles per Gallon", col = "lightblue", border = "black")

# Create a violin plot
vioplot(mtcars$hp, main = "Violin Plot: Horsepower", xlab = "Horsepower", 
        col = "lightgreen")


# Create a pairs plot
pairs(mtcars[, 1:4], main = "Pairs Plot: First Four Columns of mtcars", 
      cex.labels = 6)
