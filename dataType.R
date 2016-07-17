
# Любой обьект в R имеет набор атрибутов
# длина (length), тип (mode)

# Вектор
v <- vector(mode = "logical", length = 100)

# особенные значения
c(Inf, -Inf, NaN, NA)

# Еще один способ создания векторов конкретного типа
numeric(length = 10)
character(length = 10)
complex(length = 10)
logical(length = 10)

# соединение в один вектор
c(12, 1, v)

# генерирование разнообразных последовательностей
1:4
rep(c(1,2), each = 10)
seq(from=1, to=10, by = 3)


# Список - уонтейнер для разнотипных значений
vector(mode="list", length = 3)
l <- list(1, "as", c(1,23), c(1,2,3,4), list(c(1,2), c(3,4)))

# превратить список в единый вектор с наиболее общим типом
unlist(l)

# способы обращаться к элементам списка
l <- list(A=c(1,2,3), B=c(3,2,1))
l[1]
l[[1]]
l$B
l <- list(1, "a", c(1,2))

# задания имен элементам вектора
names(l) <- c("num", "char", "vector of num")
l
l$`vector of num`

# Многомерные массивы
a <- array(data = NA, dim = length(data), dimnames = NULL)

matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE)

v <- numeric(6)
dim(v) <- c(3,2)
v

# матричное умножение
a = b = array(1:4, dim = c(2,2))
a %*% b

# Факторы (или категориальные данные)
f <- factor(c(1,2,3,4,2,3,3,4), 
            levels = 1:5, 
            labels = c("A", "B", "C", "D", "E"), 
            ordered = TRUE)
factor(c("X", "XL", "XXL", "M", "S")) -> a
a <- ordered(a, levels = c("S", "M", "X", "XL", "XXL"))
as.numeric(a)

# Таблицы данных
data.frame(matrix(1:6, nrow = 2))

# Выражения
e <- expression((x + y) / exp(z))
x <- 1; y <- 2; z <-0
eval(e)

e <- expression((x +y) /exp(z))
# производная по x
D(e, "x")

# Доступ к данным
x <- 1:10
x[3] # по индексу
a <- x[c(1,4,5)] # по вектору индексов
x[c(1,5,10)] <- 0 # замещение определенных значений

x[-c(3,4,5)] # все элементы без 3-го, 4-го и 5-го

names(x) <- c("first", "second")
x[ x %% 2 == 0] # все четные

# посмотреть начало таблицы
head(state.x77)

state.x77[1:5, c("Frost"), drop = FALSE]
state.x77[10:20,]

# Циклы и условия

if(T) {
  print(TRUE)
}else {
  print(FALSE)
}
a <- 10
while (a > 0) {
  print("HEllo, world")
  a <- a - 1
}

for(i in 1:10)
  print(i)

# Функции 
abs <- function(x) ifelse(x < 0, -1, 1) * x
x <- rnorm(10)
x
abs(x)

# рекурсия
f <- function(x) {
  if(x < 1)
    return(1)
  return(Recall(x-1) * x)
}
f(5)
Factorial <-f 
f(4)

