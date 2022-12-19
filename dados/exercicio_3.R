# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando o pacote readxl
library(readxl)

# Importando o arquivo do exercício 3
dataframe.ex3 <- read_excel("./dados/exercicio3.xls",skip = 1, col_names = c("numerofilhos", "familias"), col_types = c("numeric"))

# Transformando o conjunto de dados em vetor
v.ex3 <- c(dataframe.ex3$numerofilhos)

# Criando uma função para a moda
getmode <- function(v.ex3) {
unico.v.ex3 <- unique(v.ex3)
unico.v.ex3[which.max(tabulate(match(v.ex3, unico.v.ex3)))]
}

# calculando a mediana 
ex3.mediana = median(dataframe.ex3$numerofilhos)
print(paste("Médiana do número de filhos:", ex3.mediana))

# calculando a moda
moda <- getmode(v.ex3)
print(paste("Moda:",moda))
      