
# IF 

var <- 3
if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}

var <- 10
if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}

# IF - ELSE

var <- 10
if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}


var <- 33
if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}


# IF - ELSE IF - ELSE

var <- 33
if(var == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("var es cero, por ende no es ni par, ni impar")
}else if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}



var <- 80
if(var == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("var es cero, por ende no es ni par, ni impar")
}else if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}

var <- 0
if(var == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("var es cero, por ende no es ni par, ni impar")
}else if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}


# ¿ Qué pasaría si doy vuelta las condiciones en los if?
# Ejemplo:
var <- 0
if(var %% 2 == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("Este valor es par")
}else if(var == 0){
  # aquí va todo lo que queramos hacer cuando la condición es positiva
  print("var es cero, por ende no es ni par, ni impar")
}else{
  # aquí va todo lo que queramos hacer cuando la condición no se cumple
  print("Este valor es impar")
}
# ¿ Porque pasa lo que pasa ?






################# brebe ejemplo:



anioNacimientoPersona <- 2021

if(1928 <= anioNacimientoPersona && anioNacimientoPersona <= 1945){
  print("The Silent Generation")
}else if(1946 <= anioNacimientoPersona && anioNacimientoPersona <= 1964){
  print("Baby Boomers")
}else if(1965 <= anioNacimientoPersona && anioNacimientoPersona <= 1980){
  print("Generation X")
}else if(1981 <= anioNacimientoPersona && anioNacimientoPersona <= 1996){
  print("Millennials")
}else if(1997 <= anioNacimientoPersona && anioNacimientoPersona <= 2012){
  print("Generation Z")
}else{
  print("No tenemos identificada a la persona")
}






