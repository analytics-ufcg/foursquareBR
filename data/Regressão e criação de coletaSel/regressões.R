dados = read.csv('coletaSel.csv')
attach(dados)

#Taxas.2010 - Homicidios
#Populacao - PIB - Homens - Mulheres - Homicidios
#IDHM - IFDM
#Per.capita - PIB

bestModelFit = function(model){
  mod = step(model, direction="backward")
  return(mod)
}

summaryMaker = function(model){
  summ = summary(model)
  return(summ)
}

summaryModelMaker = function(model){
  model = bestModelFit(model)  
  summary = summaryMaker(model)
  return(summary)
}

getPredictedVariable = function(model, conjuntoDePredictables){
  predicted = strsplit(as.character(model$call$formula),"~")[[2]]
  for(i in conjuntoDePredictables){
    if(length(grep(i, predicted))>=1){
      return (i)
    }
  }
}

createOutMatrix = function(model, summary, conjuntoDePredictables){
  predicted = getPredictedVariable(model, conjuntoDePredictables)  
  sum = summary$coefficients
  return(cbind(predicted, sum))
}


conjuntoDePredictables = c("Atividade","Atualidade","Diversidade","Densidade","Cobertura","atividadePor100Hab")

#atividade ~ log(populacao) + Capital - Significativo - residuos nao normais
model = lm(Atividade ~ Per.capita + capital + IDHM + log(populacao) + Taxas.2010)
summary = summaryModelMaker(model)
ati.out = createOutMatrix(model, summary, conjuntoDePredictables)

#Atualidade ~ IDHM + log(populacao) - significativo - residuos normais
model = lm(Atualidade ~ Per.capita + IDHM + log(populacao) + capital + Taxas.2010)
summary = summaryModelMaker(model)
atu.out = createOutMatrix(model, summary, conjuntoDePredictables)

#Diversidade ~ capital + Taxas.2010 - significativo - residuos nao normais - 0.2076
model = lm(Diversidade ~ PIB  + capital + IDHM + Taxas.2010)
summary = summaryModelMaker(model)
div.out = createOutMatrix(model, summary, conjuntoDePredictables)

#Densidade ~ IFDM - significativo - residuos nao normais - abaixo de 10%
model = lm(Densidade ~ IFDM + PIB + Taxas.2010 + populacao + capital)
summary = summaryModelMaker(model)
den.out = createOutMatrix(model, summary, conjuntoDePredictables)

#cobertura - nao consegui
model = lm(Cobertura ~ Per.capita + populacao + IDHM + capital + Taxas.2010)
summary = summaryModelMaker(model)
cob.out = createOutMatrix(model, summary, conjuntoDePredictables)

#atividadePor100milHabtantes ~ log(populacao) + capital + log(IFDM) + log(Taxas.2010) - significativo - residuos nao normais - 0.1882
model = lm(atividadePor100Hab ~ Per.capita + log(populacao) + capital + log(IFDM) + log(Taxas.2010))
summary = summaryModelMaker(model)
ati100.out = createOutMatrix(model, summary, conjuntoDePredictables)

saidaTXT = as.data.frame(rbind(ati.out, atu.out, div.out, den.out, cob.out, ati100.out))

write.csv(saidaTXT, file = "modelSummary.csv", quote=F)