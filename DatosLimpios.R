

library(xlsx)
library(readr)
library(sp)
#library(raster)
CElec <- read_csv('/Users/lilitoledopaz/Desktop/Python/IA/CentralesElectricas.xls',show_col_types = FALSE)
DFCElec <- as.data.frame(CElec)
Data <- DFCElec[,c(1,3,4,5,8,9,10)]
Datay <- 1:212
df_ordenado <- Data[order(Data$Fecha), ]
h <- hist(Data$Fecha)
plot(c(1890,h$mids), c(0,cumsum(h$counts)),col = "blue", pch = 20)
df_ordenado$`Fecha operación`
plot(Data$Fecha,Datay)
View(df_ordenado)
Nombres <- DFCElec[,1]
Tecnologia <- DFCElec[,3]
Fase <- DFCElec[,4]
Combustible <- DFCElec[,5]
Fecha <- DFCElec[,8]
Capacidad <- DFCElec[,9]
Generacion <- DFCElec[,10]
c(0,cumsum(h$counts))
