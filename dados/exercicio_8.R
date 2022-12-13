#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 8
df.ex8 <- read_excel("./dados/exercicio8.xls",skip = 1, col_names = "Altura", col_types = c("numeric"))
#view(df.ex8)

# calculando a media
ex8.media <- mean(df.ex8$Altura)
print(paste("Média das Alturas:", ex8.media))

# calculando a mediana
ex8.mediana = median(df.ex8$Altura)
print(paste("Mediana daS Alturas", ex8.mediana))

# calculando o desvio padrão
ex8_desviop = round(sd(df.ex8$Altura),6)
print(paste("Desvio Padrão das Alturas:", ex8_desviop))

# calculando a variância
ex8_varianca <- round(var(df.ex8$Altura),6)
print(paste("Variância das Alturas:", ex8_varianca))

# calculando a frequência
frq <- table (df.ex8$Altura)

# imprimindo a tabela de frequência
table(df.ex8)

# Histograma
hist(df.ex8$Altura)
hist(df.ex8$Altura, breaks = 7, col = "red", xlab = "Altura")
hist(df.ex8$Altura, breaks = 7, col = "pink", xlab = "Altura", ylab = "Frequência", main = " Histograma de Altura")
