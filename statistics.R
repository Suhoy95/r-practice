# Список встроенных таблиц
data()
# посмотреть список переменных в рабочей области
ls()
# так можно очистить рабочее пространство
rm(list = ls())
# подгрузить в рабочее пространство встроенную страницу
# на самом деле таблица доступна и без данной команды
data(state)

# примеры вычисления статистик
mean(state.area)
median(state.area)

summary(state.area)

head(state.x77)
summary(state.x77)

attach(trees)
Height
median(Height)
detach(trees)

salary <- c(15, 20, 30, 29, 20, 16, 24, 105, 18)
summary(salary)

sd(salary) # Стандартное отклонение
var(salary) # дисперсия
IQR(salary) # Межквартильный разброс