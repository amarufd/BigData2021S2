###### funciones locas

# funci�nn paste
# esta me permite concatenar los elementos que esten dentro del paste
# como se usa en R: paste(valores,sparados,por,coma)

print(paste("hola","mundo"))

print(paste("hola","mundo",1))

curso <- "Matem�ticas"
print(paste("El mejor curso es:",curso))

curso <- "del mundo"
print(paste("hola","mundo",curso,sep = ","))

# funci�n Sys.sleep
# Detien el proceso de ejecuci�n por un tiempo x en segundos
# C�mo se usa en R: sleep(x) donde x es el valor en segundos

Sys.sleep(10)

Sys.sleep(4)


# funci�n typeof
# Me dice que tipo de dato estoy usando
# C�mo se usa en R: typeof(Variable_a_evaluar)

vector <- 1:14
typeof(vector)

frase <- "gola"
typeof(frase)
