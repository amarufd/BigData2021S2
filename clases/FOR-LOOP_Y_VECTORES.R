####### FOR - LOOP

segundos <- 5
for (numero in 1:4) {
  print(paste("Ésta es la ejecución nro:",numero))
  print(paste("Ahora se hara una pausa de",segundos,"segundos"))
  Sys.sleep(segundos)
}

#### nuevo ejemplo

numeros <- 1:13
segundos <- 3
for (numero in numeros) {
  print(paste("Ésta es la ejecución nro:",numero))
  print(paste("Ahora se hara una pausa de",segundos,"segundos"))
  Sys.sleep(segundos)
}




###### VECTOR
vectorNumeros <- c(2,7,8,1,9)
typeof(vectorNumeros)
vectorTexto <- c("juan","maritza","monica","nicolas","mariano","isiadora")
typeof(vectorTexto)
vectorBoolean <- c(T,TRUE,F,FALSE,T,F,F,T,T,T,F,F,F,T,T,F,F,T,F)
typeof(vectorBoolean)

# acceder a un elemnto en especifico
posicion <- 7
vectorNumeros[posicion]
vectorTexto[posicion]
vectorBoolean[posicion]

# Determinando el largo de mi vector
length(vectorNumeros)
length(vectorTexto)
length(vectorBoolean)

# como no mostrar un elemento
posicion <- -3
vectorNumeros[posicion]
vectorTexto[posicion]
vectorBoolean[posicion]

# Determinando el largo de mi vector
length(vectorNumeros)
length(vectorTexto)
length(vectorBoolean)

# viendo los elementos
print(vectorNumeros)
print(vectorTexto)
print(vectorBoolean)

# borrando elementos
posicion <- -3
vectorNumeros <- vectorNumeros[posicion]
vectorTexto <- vectorTexto[posicion]
vectorBoolean <- vectorBoolean[posicion]

# viendo los elementos
print(vectorNumeros)
print(vectorTexto)
print(vectorBoolean)

# Determinando el largo de mi vector
length(vectorNumeros)
length(vectorTexto)
length(vectorBoolean)

# agregando elementos
vectorNumeros <- c(vectorNumeros,8)
vectorTexto <- c(vectorTexto,"monica")
vectorBoolean <- c(vectorBoolean,F)

# viendo los elementos
print(vectorNumeros)
print(vectorTexto)
print(vectorBoolean)

# Determinando el largo de mi vector
length(vectorNumeros)
length(vectorTexto)
length(vectorBoolean)

# que puedo hacer con el length
# ejemplo 1: ver el último elemento de mi vector
print(vectorNumeros[length(vectorNumeros)])
print(vectorTexto[length(vectorTexto)])
print(vectorBoolean[length(vectorBoolean)])

vectorNumeros <- c(vectorNumeros,20)
vectorTexto <- c(vectorTexto,"rosa")
vectorBoolean <- c(vectorBoolean,T)

print(vectorNumeros[length(vectorNumeros)])
print(vectorTexto[length(vectorTexto)])
print(vectorBoolean[length(vectorBoolean)])


# secuencias del largo de un vector
# secuencia sin length
1:10

# secuencia con length
length(vectorNumeros)
1:length(vectorNumeros)

length(vectorTexto)
1:length(vectorTexto)

length(vectorBoolean)
1:length(vectorBoolean)

# ¿Qué pasaría si a un vector le agrego un elemento de otro reino/tipo?
# ¿Qué conclusiones puede sacar?



###### combinando vector con el for

numeros <- 1:length(vectorTexto)
segundos <- 5
contador <- 0
for (numero in numeros) {
  print(paste("Ésta es la ejecución nro:",numero))
  print(paste("El elemento en la posicón nro:",numero,"es",vectorTexto[numero]))
  print(paste("Ahora se hara una pausa de",segundos,"segundos"))
  Sys.sleep(segundos)
  contador <- contador + 1
  print(paste("La variable contador va en:",contador))
}


