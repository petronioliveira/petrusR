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
