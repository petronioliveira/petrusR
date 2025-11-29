# Define o nome do arquivo de teste
test_that("A função calcular_cv retorna o valor e tipo correto", {
  # 1. Cria dados de teste
  dados_teste <- c(10, 10, 10, 10) # CV esperado = 0% (sem variância)
  dados_variacao <- c(10, 20, 30)

  # 2. Testa o valor
  expect_equal(calcular_cv(dados_teste), 0)
  expect_equal(round(calcular_cv(dados_variacao), 2), 50)

  # 3. Testa o tipo
  expect_type(calcular_cv(dados_teste), "double")
})

test_that("A função resumo_stats retorna um data frame com 4 colunas", {
  # 1. Cria dados de teste
  dados_teste <- c(1, 2, 3, 4, 5)

  # 2. Testa o formato
  resultado <- resumo_stats(dados_teste)
  expect_s3_class(resultado, "data.frame")
  expect_equal(ncol(resultado), 4)

  # 3. Testa um valor específico (Média)
  expect_equal(resultado$Media, 3)
})
