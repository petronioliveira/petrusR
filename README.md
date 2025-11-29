
# petrusR

O *petrusR* é um pacote de estatísticas descritivas básicas, focado em funções úteis para análise exploratória de dados, como o cálculo do Coeficiente de Variação (CV) e um resumo estatístico consolidado.

## Instalação

Você pode instalar a versão de desenvolvimento do petrusR diretamente do [GitHub](https://github.com/petronioliveira/petrusR) com o pacote `remotes`:

```r
# install.packages("remotes") 
remotes::install_github("petronioliveira/petrusR")
```  

## Exemplo de Uso

Este é um exemplo básico de como usar as funções principais do pacote:

```r
library(petrusR)

dados <- c(5.5, 6.0, 5.8, 7.1, 6.5, 8.0)

# Resumo Estatístico
resumo_stats(dados)

# Coeficiente de Variação (em porcentagem)
calcular_cv(dados)
```
