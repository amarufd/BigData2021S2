setwd("~/Documents/UTEM/BigData2021S2/BigData2021S2")

#install.packages("rvest")

# Importando Liberias
library("xml2")
library("rvest")


# leer una pagina web
readIndex <- read_html("pagina-web/index.html")
print(html_text(readIndex))

#### navegando con css

# obteniendo un elemento tipo tag en particular 
nodeh1 <- html_nodes(readIndex, css="h1")
print(html_text(nodeh1))

# obteniendo un elemento tipo clase en particular
nodeContenidoArticulo <- html_nodes(readIndex, css=".contenidoArticulo")
print(html_text(nodeContenidoArticulo))

print(html_text(nodeContenidoArticulo)[4])

# obteniendo un elemento tipo  en particular
nodeTituloUno <- html_nodes(readIndex, css="#tituloUno")
print(html_text(nodeTituloUno))


#### navegando con xpath
xpathCactusin <- html_nodes(readIndex,xpath="/html/body/div[2]/div[2]/h2")
print(html_text(xpathCactusin))

xpathParchitacurita <- html_nodes(readIndex,xpath="/html/body/div[3]/div[2]/h2")
print(html_text(xpathParchitacurita))


#### Leer una tabla
tabla <- html_table(readIndex)[[1]]
print(tabla)

# Guardando tabla
write.csv(tabla,"datosCursos.csv")
write.csv2(tabla,"datosCursos2.csv")

xpathTabla <- html_nodes(readIndex,xpath="/html/body/div[5]")
print(xpathTabla)
leerTabla <- html_table(xpathTabla)[[1]]
print(leerTabla)


#### Obtener los link
nodeContenidoArticulo <- html_nodes(readIndex, css=".contenidoArticulo")
print(html_text(nodeContenidoArticulo))
nodea <- html_nodes(nodeContenidoArticulo, css="a")
print(html_text(nodea))
attrs <- html_attr(nodea,"href")
print(attrs)

contador <- 0
tiempo <- 2
for(attr in attrs){
  contador <- contador + 1
  
  print(attr)
  print(html_text(read_html(attr)))
  
  if(length(attrs)==contador){
    print("Se termina la ejecución")
  }else{
    print(paste("Se espera",tiempo,"segundos"))
    Sys.sleep(tiempo)
  }
}



