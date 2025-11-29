#' Calcular o Coeficiente de Variação (CV)
#'
#' Esta função calcula a variabilidade relativa dos dados.
#' A fórmula utilizada é:
#' \deqn{CV = \frac{s}{\bar{x}} \times 100}
#'
#' @param x Um vetor numérico.
#' @param na.rm Lógico. Se TRUE, remove valores NA antes do cálculo.
#' @return Um número representando a porcentagem do coeficiente de variação.
#' @export
#' @examples
#' dados <- c(10, 20, 30, 40)
#' calcular_cv(dados)
calcular_cv <- function(x, na.rm = FALSE) {
  if (!is.numeric(x)) {
    stop("O vetor de entrada 'x' deve ser numérico.")
  }

  desvio <- sd(x, na.rm = na.rm)
  media <- mean(x, na.rm = na.rm)

  return((desvio / media) * 100)
}

#' Resumo Estatístico Personalizado
#'
#' Retorna média, mediana, desvio padrão e erro padrão.
#'
#' @param x Um vetor numérico.
#' @return Um data frame com as estatísticas descritivas.
#' @export
resumo_stats <- function(x) {
  x <- x[!is.na(x)] # Remove NAs forçadamente para este exemplo

  data.frame(
    Media = mean(x),
    Mediana = median(x),
    Desvio_Padrao = sd(x),
    Erro_Padrao = sd(x) / sqrt(length(x))
  )
}

#' Constrói Histograma Simples
#'
#' Esta função utiliza o ggplot2 para criar um histograma simples
#' para um vetor numérico.
#'
#' @param x Um vetor numérico contendo os dados.
#' @param titulo Uma string para o título do gráfico.
#' @return Um objeto ggplot que pode ser exibido.
#' @export
#' @examples
#' dados <- rnorm(100, mean = 50, sd = 10)
#' construir_hist(dados, "Distribuição de Dados de Exemplo")
construir_hist <- function(x, titulo = "Histograma") {
  # 1. Cria um data frame temporáriodevtools::document() necessário para o ggplot2
  df <- data.frame(Valor = x)

  # 2. Cria o gráfico usando a sintaxe ggplot2:: (IMPORTANTE!)
  p <- ggplot2::ggplot(df, ggplot2::aes(x = Valor)) +
    ggplot2::geom_histogram(fill = "lightblue", color = "black", bins = 15) +
    ggplot2::labs(title = titulo, x = "Valores", y = "Frequência") +
    ggplot2::theme_minimal()

  # 3. Retorna o objeto ggplot
  return(p)
}

#' Constrói Boxplot Simples
#'
#' Esta função utiliza o ggplot2 para criar um boxplot simples para um vetor numérico.
#' O boxplot é útil para visualizar a distribuição dos dados, mediana, quartis e outliers.
#'
#' @param x Um vetor numérico contendo os dados.
#' @param titulo Uma string para o título do gráfico.
#' @return Um objeto ggplot que pode ser exibido.
#' @export
#' @examples
#' dados <- rnorm(100, mean = 50, sd = 10)
#' construir_boxplot(dados, "Distribuição de Valores")
construir_boxplot <- function(x, titulo = "Boxplot da Distribuição") {
  # Cria um data frame temporário para o ggplot2
  df <- data.frame(Valor = x)

  # Cria o gráfico. Usamos x="" para gerar um boxplot vertical simples.
  p <- ggplot2::ggplot(df, ggplot2::aes(y = Valor, x = "")) +
    ggplot2::geom_boxplot(fill = "lightgreen", color = "darkgreen") +
    ggplot2::labs(title = titulo, x = "", y = "Valores") +
    ggplot2::theme_minimal()

  # Retorna o objeto ggplot
  return(p)
}
