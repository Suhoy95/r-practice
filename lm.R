# Пример линейной регрессии
data("women")

# Перевод в метрическую систему координат
women.metr <- women
women.metr$height <- 2.54 * women$height
women.metr$weight <- 0.45 * women$weight

# Вычисление модели
lm.women <- lm(formula = weight ~ height, data = women.metr)
lm.women$coefficients

# Общая информация
summary(lm.women)

# График
plot(women.metr, xlab = "Рост", ylab = "Вес")
x <- seq(from=min(women.metr$height), to =max(women.metr$height), length.out = 10)
y <- lm.women$coefficients[1] + 
     lm.women$coefficients[2] * x
lines(x, y, col="red")


