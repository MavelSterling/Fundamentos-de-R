## Curso de Fundamentos de R - Platzi

# Operaciones 
suma = 4 + 8; suma
resta = 10-5; resta
multiplicacion = 5*5 ; multiplicacion
4^2

Oficina <- 7
Platzi <- 1
Transporte <- 1.5
Tiempo_al_dia <- Oficina + Platzi + Transporte
Tiempo_al_dia

Corte_1 <- 0.3
Corte_2 <- 0.3
Corte_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0 

Nota_c_1 <- Nota_1 + Corte_1
Nota_c_1

Nota_c_2 <- Nota_2 + Corte_2
Nota_c_2

Nota_c_3 <- Nota_3 + Corte_3
Nota_c_3

Nota_final <- Nota_c_1 + Nota_c_2 + Nota_c_3
Nota_final

# Estructura de la base de datos mtcars
str(mtcars)

# Clase de la variable vs
class(mtcars$vs)

# Cambio de la clase de variable
mtcars$vs = as.logical(mtcars$vs)

mtcars$am = as.logical(mtcars$am)

str(mtcars)

# importar base de datos

# instalar paquete readr
install.packages("readr")

# cargar paquete readr
library(readr)
orangeec <- read_csv("/Curso de fundamentos R/orangeec.csv")

str(orangeec)

# Reeumen de las variables
summary(orangeec) 

summary(mtcars)


wt <- (mtcars$wt +1000)/2
wt

mtcars.new <- transform(mtcars, wt=wt+1000/2)
mtcars.new

summary(mtcars.new)

# Vectores

tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,10)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje

dias_aprendizaje <- c("Lunes", "Martes", "Miercoles", "Jueves" , "Viernes")
dias_aprendizaje

dias_mas_20min <- c(TRUE, FALSE, FALSE, TRUE,TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi
total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas

total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas
total_tiempo_adicional


# Matrices

tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_lecturas), nrow=2, byrow = TRUE)

dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
Tiempo <- c("tiempo platzi", "tiempo lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix

colSums(tiempo_matrix)

final_matrix <- rbind(tiempo_matrix, c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1,5]

# Operadores para comparar y ubicar datos

mtcars[mtcars$cyl<6, ]

orangeec[orangeec$`GDP PC`>=15000, ]

orangeec[orangeec$`Creat Ind % GDP`<= 2,]
names(orangeec)
neworangeec <- subset(orangeec, `Internet penetration % population` > 80 &
                        `Education invest % GDP` >= 4.5)
neworangeec

neworangeec <- subset(orangeec, `Internet penetration % population` > 80 &
                      `Education invest % GDP` >= 4.5,
                      select =`Creat Ind % GDP`)
neworangeec

rename(orangeec, c(`Creat Ind % GDP` = "AporteEcNja"))

# Factores, listas y echar un vistazo al dataset
Nivel_Curso <- c("Básico", "Intermedio", "Avanzado")
Nivel_Curso

head(mtcars)
head(orangeec)

tail(mtcars)
tail(orangeec)

library(tibble)
glimpse(orangeec)

my_vector <- 1:8
my_matrix <- matrix(1:9, ncol=3)
my_matrix
my_df <- mtcars[1:4,]
my_df

my_list <- list(my_vector, my_matrix, my_df)
my_list

# Gráficas de dispersión e histogramas

head(mtcars)

hist(mtcars$mpg)

cyl1 <- table(mtcars$cyl)
cyl1

barplot(cyl1)

boxplot(mtcars$mpg, main = "Boxplot")

