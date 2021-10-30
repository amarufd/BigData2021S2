setwd("~/Documents/UTEM/BigData2021S2/BigData2021S2")
library('rvest')


# Leyendo p??gina
paginaYapoCl <- read_html("https://www.yapo.cl/region_metropolitana")
print(html_text(paginaYapoCl))


# Obteniendo la clase listing_thumbs
listingThumbs <- html_nodes(paginaYapoCl, css=".listing_thumbs")
print(html_text(listingThumbs))

# Obteniendo los t??tulos de los productos
nombresProductosYapo <- html_nodes(listingThumbs, css=".title")
print(html_text(nombresProductosYapo))

# Obteniendo los precios
preciosProductosYapo <- html_nodes(listingThumbs, css=".price")
print(html_text(preciosProductosYapo))



# generar un dataframe
#data.frame(nombre=html_text(nombresProductosYapo),precios=html_text(preciosProductosYapo))
# no puedo crear una estructura dataframe cuando se tienen 
# Listas o vectores de diferente largo

valorUF <- 30052.36
precioNormal <- c()
precioCalculado <- c()
vectorValorUF <- c()
tipoMoneda <- c()
for (elemnto in 2:length(listingThumbs)) {
  precio <- html_nodes(listingThumbs[elemnto],css=".price")
  if(length(precio)>0){
    precio <- html_text(precio)
    precio <- gsub("\t","",precio)
    precio <- gsub("\n","",precio)
    precio <- gsub("[$]","",precio)
    precio <- gsub("[.]","",precio)
    precio <- gsub(",",".",precio)
    precio <- gsub(" ","",precio)
    
    if(substr(precio, 1, 2) == 'UF'){
      precio <- gsub("UF","",precio)
      precio <- as.numeric(precio)
      # guardando precio normal
      precioNormal <- c(precioNormal,precio)
      
      precio <- precio*valorUF
      precioCalculado <- c(precioCalculado,precio)
      
      vectorValorUF <- c(vectorValorUF,valorUF)
      tipoMoneda <- c(tipoMoneda,'UF')
    }else{
      precio <- as.numeric(precio)
      precioNormal <- c(precioNormal,precio)
      precioCalculado <- c(precioCalculado,NA)
      vectorValorUF <- c(vectorValorUF,NA)
      tipoMoneda <- c(tipoMoneda,'peso')
    }
  }else{
    precio <- NA
    precioNormal <- c(precioNormal,precio)
    precioCalculado <- c(precioCalculado,NA)
    vectorValorUF <- c(vectorValorUF,NA)
    tipoMoneda <- c(tipoMoneda,NA)
  }
  print(precio)
}


nuestrosDatos <- data.frame(nombre=html_text(nombresProductosYapo),precioNormal=precioNormal,precioCalculado=precioCalculado,tipoMoneda=tipoMoneda,valorUf=vectorValorUF)

write.csv2(nuestrosDatos,"datosTocToc.csv")
