summary = read.csv('modelSummary.csv')
dados = read.csv('coletaSel.csv')

intervaloConfiancaCoeficiente = function(n, coeficiente, sd, nVariaveisExplicativas, significancia){
  
  confianca = 1-significancia/2
  t = qt(confianca, df=n-nVariaveisExplicativas-1)
  erro = t*sd
  esquerda = coeficiente-erro
  direita = coeficiente+erro
  
  return(c(esquerda, direita))
  
}

criaCoeficientesFrame = function(significancia = 0.95, conjuntoDePredictables, summary){
  coeficientesFrame = c()
  for(predictable in conjuntoDePredictables){
    sum.predictable = subset(summary, summary$predicted==predictable)
    for(i in 1:nrow(sum.predictable)){
      intervaloConfianca = intervaloConfiancaCoeficiente(nrow(dados), sum.predictable$Estimate[i], sum.predictable$Std..Error[i],nrow(sum.predictable)-1, significancia)
      atributo.intervalo = c(predictable, as.character(sum.predictable$X[i]), intervaloConfianca)
      coeficientesFrame = rbind(coeficientesFrame, atributo.intervalo)
    }  
  }
  
  coeficientesFrame = as.data.frame(coeficientesFrame)
  colnames(coeficientesFrame) = c("Predictable","FatorUrbano","InfLim","SupLim")
  return(coeficientesFrame)  
}


significancia = 0.95
conjuntoDePredictables = c("Atividade","Atualidade","Diversidade","Densidade","Cobertura", "atividadePor100Hab")

tabelaCoeficientes = criaCoeficientesFrame(significancia, conjuntoDePredictables, summary)
write.csv(tabelaCoeficientes, "coeficientes.csv", quote=F, row.names=F)