# Стандартный график
plot(1:20, main = "MAin")
# Можно модифицировать
legend("topleft", legend = c("x", "y"), pch = c(10, 20))
par()

salary <- c(15, 20, 30, 29, 20, 16, 24, 105, 18)
summary(salary)

# создание случайной выборки
new.1000 <- sample((median(salary) - IQR(salary)):
                     (median(salary) + IQR(salary)), 1000,
                   replace = TRUE)

salary2 <- c(salary, new.1000)
# График "ящик с усами"
boxplot(salary2, log = "y")
boxplot(trees)

# Гистограмма
hist(salary2, breaks = 20)

# своего рода числовой аналог гистограммы
table(cut(salary2, breaks = 20))

# плотность распределения
plot(density(salary2))
rug(salary2)

# пчелиный рой + ящик с усами
#install.packages("beeswarm")
library("beeswarm")
boxplot(trees)
beeswarm(trees, add = TRUE)

titanic <- apply(Titanic, c(1,4), sum)
mosaicplot(titanic, col = c("red", "green"))
