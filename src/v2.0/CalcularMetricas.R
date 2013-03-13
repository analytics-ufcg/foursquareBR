source("util.R")

#Para rodar as pastas "atualidade", "Atualidade_info", "Datas" e "trat" devem estar no mesmo diretorio dos scripts R.
#As 4 pastas citadas acima podem ser encontradas na pasta Data no repositorio

cidades = c("Brasilia")

resultado = calcular.metricas(cidades[1])
