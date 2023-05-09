# created by: Data Within Reach

# Market Basket Analysis example
install.packages("arules")
install.packages("arulesViz")


library(arules)
library(arulesViz)

data("Groceries")
inspect(head(Groceries))

rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))


inspect(rules)


plot(rules, method = "two-key plot", jitter = 0)
?plot
