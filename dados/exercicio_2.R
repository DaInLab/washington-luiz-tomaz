# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 2
dataframe.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "casas", col_types = c("numeric"))

# a) Construir uma tabela de frequências;
# transformando os dados em vetor
ex2.em.vetor <- c(dataframe.ex2$casas)

# criando a tabela de frequência
ex2.tabela <-table(ex2.em.vetor)

# imprimindo a tabela de frequência
ex2.tabela

#b) Calcular as medidas de posição e as medidas de dispersão;

#b.1) Medidas de Posiçõo
#média
media<-mean(dataframe.ex2$casas)
media

#mediana 
mediana <- median(dataframe.ex2$casas)
mediana

#b.2) Medidas de Dispersão
#amplitude (range)
range(ex2.tabela)

#percentis (quantiles) - considerados os três primeiros
Q1 <- quantile(dataframe.ex2$casas, probs = 0.25)
Q2 <- quantile(dataframe.ex2$casas, probs = 0.50)
Q3 <- quantile(dataframe.ex2$casas, probs = 0.75)

#impressão dos percentis
Q1
Q2
Q3

#amplitude interquartil (IQR - interquartile range)
amplitude.interquartil <- Q3 - Q1
amplitude.interquartil

#desvio padrão (sd - standard deviation)
desvio.padrao <- sd(dataframe.ex2$casas, na.rm = FALSE)
desvio.padrao

#variância
variancia <- var(dataframe.ex2)
variancia

# plus: imprimindo o histograma
hist(ex2.tabela, main="Histograma", xlab="Dados", ylab="Frequência")


