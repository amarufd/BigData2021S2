setwd("~/Documents/UTEM/BigData2021S2/BigData2021S2")
# install.packages("ggplot2")
library(ggplot2)

datosEnArchivoCsv2 <- read.csv2("datosYapo2.csv")
datosEnArchivoCsv2['X'] <- NULL


table(datosEnArchivoCsv2["categoria"])
table(datosEnArchivoCsv2["comuna"])
table(datosEnArchivoCsv2["region"])


ggplot(datosEnArchivoCsv2, aes(x=comuna)) +
  geom_bar() +
  coord_flip()


ggplot(datosEnArchivoCsv2, aes(x=categoria)) +
  geom_bar() +
  coord_flip()


ggplot(datosEnArchivoCsv2, aes(x=categoria, y=precioNormal)) +
  geom_boxplot() +
  coord_flip()

dataSinNas <- datosEnArchivoCsv2
dataSinNas["precioCalculado"] <- NULL
dataSinNas["valorUf"] <- NULL
dataSinNas <- na.omit(dataSinNas)

max(dataSinNas$precioNormal)

valorMaximo <- dataSinNas[dataSinNas$precioNormal == max(dataSinNas$precioNormal), ]

filtradoValorMaximo <- dataSinNas[dataSinNas$precioNormal != max(dataSinNas$precioNormal), ]
filtradoValorMaximo <- filtradoValorMaximo[filtradoValorMaximo$precioNormal != max(filtradoValorMaximo$precioNormal), ]

ggplot(filtradoValorMaximo, aes(x=categoria, y=precioNormal)) +
  geom_boxplot() +
  coord_flip()


ggplot(filtradoValorMaximo, aes(x=comuna, y=precioNormal)) +
  geom_boxplot() +
  coord_flip()
