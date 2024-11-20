################################
#####INTRODUCCION A RSTUDIO#####
################################

#################
###COMENTARIOS###
#################
#De esta manera podemos escribir un comentario y no nos da un error

###############
###FUNCIONES###
###############
#Podemos implementar todo tipo de funciones
#Comenzaremos con uno básico, una secuencia
seq(0, 10, 1)

#Podemos ver que elementos necesita con la ayuda
?seq

#Podemos escribir los elementos
seq(from = 0, to = 10, by = 1)

#Podemos modificarla
seq(from = 0, to = 10, length.out = 22)

#Podemos guardar el objeto
a <- seq(0, 10, 1)
a

##############
##EJERCICIOS##
##############
#1. Creen una secuencia de numeros desde el 0 hasta el 1000 con saltos de 10
seq(0,1000,10)

#2. Creen una secuencia de numeros desde el 1 hasta el 100 que tenga una longitud de 750 valores
seq(1,100,length.out= 750)

#############
###OBJETOS###
#############
#Existen diferentes clases de objetos, veamos los siguientes:
#Character
a1 <- c("Sergio", "Bobka")
class(a1)

#Numeric
a2 <- seq(0, 1, length.out = 11)
class(a2)

#Integer
a3 <- c(1L, 2L, 3L, 4L, 5L)
class(a3)

#Logical
a4 <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
class(a4)

#Tambien podemos ver sus tipos
typeof(a1)
typeof(a2)
typeof(a3)
typeof(a4)

###############
###LIBRERIAS###
###############
#Para poder acceder a una libreria primero debemos instalarla instals.packages("tidyverse")

#Para poder acceder a la libreria despues debemos de abrirla
library(tidyverse)

################
###DIRECTORIO###
################
#Tener un directorio de trabajo claro y simple es vital
setwd("C:/SEGUNDO SEMESTRE/Taller de Estadística/PRIMER PARCIAL/RSTUDIO")

#Probemos abriendo un archivo
mi_primera_base <- read.csv("EH2021_Vivienda.csv",
                            header = TRUE,
                            sep = ",")

#################
###OPERACIONES###
#################
#Empecemos con una suma
1 + 1

#Sigamos con una multiplicacion
2 * 2

#Ahora un exponente
3 ^ 3

#Otra manera de hacer exponentes
3 ** 3

#Y acabemos con un logaritmo
log(10, base = 10)

#Tambien podemos combinar los elementos con operaciones
a * 3

#Si dos objetos tienen la misma longitud podemos sumarlos
a + a2

##############
##EJERCICIOS##
##############
#1. Resten 789 - 123
789-123
#2. Dividan 1000 entre 145
1000/145
#3. Obtengan la raiz cuadrada de 1000
sqrt(1000)
#4. Creen un objeto que se llame g y que tenga un valor de 42
g<-42
#5. Creen un objeto que se llame d y que sea g ^ 2 + 2 * g - 69
d<-(g **(2)+2*g-69)
#6. Cambien el valor del objeto g a 84 y vuelvan a calcular d
g<-84

############
###VECTOR###
############
#Hagamos algunos vectores
#Vector con caracteres
caracter <- c("A", "B", "C")

#Vector con numeros
numeros <- c(20, 50, 75)

#Vector con valores logicos
logicos <- c(TRUE, FALSE, TRUE)

###########
###ARRAY###
###########
#Primero creemos las columnas
nombres <- c("Sergio", "Juan Pablo", "Rodrigo")
apellidos <- c("Bobka", "Fernandez", "Mendieta")
edad <- c(29, 29, 30)

#Ahora las combinamos
mi_primer_array <- array(c(nombres, apellidos, edad),
                         dim = c(3, 3))
mi_primer_array

#Digamos que quiero anhadir nombres a filas y columnas
nombre_columna <- c("Nombres", "Apellido", "Edad")
nombre_fila <- c("Persona 1", "Persona 2", "Persona 3")
mi_primer_array_tuneado <- array(c(nombres, apellidos, edad),
                                 dim = c(3, 3),
                                 dimnames = list(nombre_fila, nombre_columna))
mi_primer_array_tuneado

#Ahora accederemos a los diferentes objetos
#Primera fila
print(mi_primer_array_tuneado[1, ])

#Segunda columna
print(mi_primer_array_tuneado[, 2])

#Segunda y tercera fila
print(mi_primer_array_tuneado[1:2,])

#Tercera fila y tercera columna
print(mi_primer_array_tuneado[3, 3])

#Veamos el tipo de datos de este array
typeof(mi_primer_array_tuneado)

#Creemos una array en 3 dimensiones
mi_segundo_array <- array(1:24, dim = c(3, 4, 2))

#Visualicemos el array
print(mi_segundo_array)

#Encontremos el 12
print(mi_segundo_array[3, 4, 1])

################
###EJERCICIOS###
################
#1. Creen un objeto con los nombres de los integrantes del grupo
#2. Creen un objeto con los apellidos de los integrantes del grupo
#3. Creen un objeto con la carrera de los integrantes del grupo
#4. Creen un objeto con las edades de los integrantes del grupo
#5. Creen un array uniendo toda la informacion previamente mencionada con los nombres correctos para filas y columnas
#6. Obtengan una lista de los nombres y apellidos
#7. Obtengan una lista de los 2 ultimos miembros
#8. Obtengan la clase y tipo de su lista
#9. Investiguen la diferencia entre una matrix y un array
#10. Creen 2 vectores (llamados v1 y v2) con una longitud de 5 con numeros
#11. Multipliquen el vector v1 por 2 y guarden el resultado en v3
#12. Creen un nuevo vector que se llame v4 que sea la suma de v1 + v2 y este resultado multiplicado por 2