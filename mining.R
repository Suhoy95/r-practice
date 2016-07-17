library(rgl)
plot3d(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length, col=c("red","green3","blue")[unclass(iris$Species)])

library(lattice)
xyplot(Sepal.Length ~ Petal.Length + Petal.Width | Species, data = iris, auto.key = TRUE)

pairs(iris[1:4], pch=21, bg=c("red","green3","blue")[unclass(iris$Species)])

head(mtcars)
stars(mtcars[1:9,])

library(TeachingDemos)
faces(mtcars[1:9,])
