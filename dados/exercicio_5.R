# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
install.packages("tidyverse")
install.packages("ggplot2") 

# Carregando as bibliotecas
library(readxl)
library(tidyverse)
library(ggplot2)

# Importando o arquivo do exercício 5
dataframe.ex5 <- read_excel("./dados/exercicio5.xls",skip = 1, col_names = c("Marcas", "N_pessoas"), col_types = c("text", "numeric"))
#view(df.ex5)

# transformando os dados em vetor
ex5.em.vetor <- c (dataframe.ex5$Marcas)

# criando um gráfico

ggplot(dataframe.ex5, aes( y= N_pessoas, x = Marcas, fill = Marcas))+
  geom_bar (stat = "identity")
