# created by: Data Within Reach
# 13 May 2023

data(iris)


iris_data <- iris[,1:4]


set.seed(54321)
kmeans_iris_result <- kmeans(iris_data, centers = 3)


print(kmeans_iris_result)


plot(iris_data[c("Sepal.Length", "Sepal.Width")], col=kmeans_iris_result$cluster)
points(kmeans_iris_result$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=23, cex=3)
