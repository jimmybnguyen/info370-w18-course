library(datasets)
data(iris)
summary(iris)

plot(iris$Sepal.Length ~ iris$Petal.Length, 
     xlab = "Petal Length", 
     ylab = "Sepal Length", 
     main = "Petal Length vs. Sepal Length")

iris.lm <- lm(Sepal.Length ~ Petal.Length, data = iris)

abline(iris.lm)
summary(iris.lm)
