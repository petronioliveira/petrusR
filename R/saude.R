#' Calcula o Índice de Massa Corporal (IMC)
#'
#' Esta função calcula o IMC usando a fórmula peso / altura^2.
#'
#' @param peso Um valor numérico representando o peso em quilogramas (kg).
#' @param altura Um valor numérico representando a altura em metros (m).
#' @return Um valor numérico representando o Índice de Massa Corporal (IMC).
#' @export
#' @examples
#' # IMC de uma pessoa com 70kg e 1.75m
#' imc(peso = 70, altura = 1.75)
imc <- function(peso, altura){
  res <- peso/altura^2
  return(res)
}
