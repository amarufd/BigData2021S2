setwd("~/Documents/UTEM/BigData2021S2/BigData2021S2")
library("rvest")


readIndex <- read_html("pagina-web/index.html")

nodeh1 <- html_nodes(readIndex, css="h1")
print(html_text(nodeh1))


# Obteniendo el primero
nodeh1PrimerElemento <- html_text(nodeh1)[1]

# limpiando con gsub
nodeh1PrimerElemento <- gsub(" ","",nodeh1PrimerElemento)
nodeh1PrimerElemento <- gsub("\n","",nodeh1PrimerElemento)

for (posicion in 1:length(nodeh1)) {
  print("=====================================")
  print(paste("Ésta es la posición",posicion))
  nodeh1PrimerElemento <- html_text(nodeh1[posicion])
  
  nodeh1PrimerElemento <- gsub(" ","",nodeh1PrimerElemento)
  nodeh1PrimerElemento <- gsub("\n","",nodeh1PrimerElemento)
  
  nodeh1[posicion] <- nodeh1PrimerElemento
  
}
nodeh1

