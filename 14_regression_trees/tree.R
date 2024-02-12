# Let's import and load the required libraries:
install.packages(c("MASS", "rpart"))
library(MASS)
library(rpart)




# Let's get a look at this data:
head(Boston)
summary(Boston)
print(Boston)
data(Boston)
?Boston




# now to build a tree:
boston_house_tree <- rpart(medv ~ ., data = Boston, method = "anova")







# can we see the tree?
plot(boston_house_tree, margin=0.1)
text(boston_house_tree, use.n=TRUE)





predictions <- predict(boston_house_tree, Boston)
actuals <- Boston$medv
mean((predictions - actuals)^2) # this is the mean squared error (MSE)
