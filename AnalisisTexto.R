setwd("~/Documents/UTEM/BigData2021S2/BigData2021S2")

library("rvest")
library(ggplot2)


IpcWiki <- read_html("https://es.wikipedia.org/wiki/Índice_de_precios_al_consumidor")
print(html_text(IpcWiki))

# obteniendo el body de wikipedia
bodyIpcWiki <- html_nodes(IpcWiki,css="body")
print(html_text(bodyIpcWiki))

# obteniendo el contenido del articulo
contentIpcWiki <- html_nodes(bodyIpcWiki,css=".mw-body-content")
print(html_text(contentIpcWiki))

# obteniendo el primer parrafo
parrafosIpcWiki <- html_nodes(contentIpcWiki,css="p")
print(html_text(parrafosIpcWiki[1]))

# obteniendo el primer parrafo del articulo
primerParrafoIpcWiki <- html_text(parrafosIpcWiki[1])
print(primerParrafoIpcWiki)

# Limpiando la informacion
primerParrafoIpcWiki <- tolower(primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("\n"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("[.]"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub(","," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("[(]"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub(")"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("»"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("«"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("[[]"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("]"," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("  "," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("  "," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("  "," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("  "," ",primerParrafoIpcWiki)
primerParrafoIpcWiki <- gsub("  "," ",primerParrafoIpcWiki)

# separar cada una de las palabras y ver su frecuencia
# separando
parrafoSeparado <- strsplit(primerParrafoIpcWiki," ")[[1]]

# filtrando registros
parrafoSeparado <- parrafoSeparado[parrafoSeparado != 'de']
parrafoSeparado <- parrafoSeparado[parrafoSeparado != 'los']

# convirtiendo en DataFrame
dfParrafosSeparados <- data.frame(palabras=parrafoSeparado)

# haciendo un grafico
ggplot(dfParrafosSeparados,aes(x=palabras)) +
  geom_bar() +
  coord_flip()
