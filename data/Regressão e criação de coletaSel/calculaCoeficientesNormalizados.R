coeficientes = read.csv('coeficientes.csv')
dados = read.csv('coletaSel.csv')
attach(dados)

conjuntoDePredictables = c("Atividade","Atualidade","Diversidade","Densidade","Cobertura", "atividadePor100Hab")

#sub.predictable = subset(coeficientes, coeficientes$Predictable=="Atividade")
#for(i in 1:nrow(sub.predictable)){
#  intervaloConf = sub.predictable[i,3:4]
  #intervaloNormalizado = intervaloConf*sd(dados[,sub.predictable$FatorUrbano[i]])
#]}


#Atividade ===========================================================
predictable = "Atividade"
coef = subset(coeficientes, coeficientes$Predictable==predictable)
normAtividadeCapital = coef[2,3:4]*sd(capital)/sd(dados[,predictable])
normAtividadePopulacao = coef[3,3:4]*sd(log(populacao))/sd(dados[,predictable])

#montaLinha de retorno
lineAtiCap = c("Atividade", "capital", normAtividadeCapital)
lineAtiPop = c("Atividade", "populacao", normAtividadePopulacao)

#Atualidade ===========================================================
predictable = "Atualidade"
coef = subset(coeficientes, coeficientes$Predictable==predictable)
normAtualidadeIDHM = coef[2,3:4]*sd(IDHM)/sd(dados[,predictable])
normAtualidadePopulacao = coef[3,3:4]*sd(log(populacao))/sd(dados[,predictable])

#montaLinha de retorno
lineAtuIDHM = c("Atualidade","IDHM", normAtualidadeIDHM)
lineAtuPop = c("Atualidade","populacao", normAtualidadePopulacao)

#Diversidade ===========================================================
predictable = "Diversidade"
coef = subset(coeficientes, coeficientes$Predictable==predictable)
normDiversidadeCapital = coef[2,3:4]*sd(capital)/sd(dados[,predictable])
normDiversidadeTaxas = coef[3,3:4]*sd(Taxas.2010)/sd(dados[,predictable])

#montaLinha de retorno
lineDivCap = c("Diversidade","capital", normDiversidadeCapital)
lineDivTaxas = c("Diversidade","Taxas", normDiversidadeTaxas)

#Densidade ===========================================================
predictable = "Densidade"
coef = subset(coeficientes, coeficientes$Predictable==predictable)
normDensidadeIFDM = coef[2,3:4]*sd(IFDM)/sd(dados[,predictable])

#montaLinha de retorno
lineDenIFDM = c("Densidade","IFDM", normDensidadeIFDM)

#Cobertura ===========================================================
predictable = "Cobertura"
coef = subset(coeficientes, coeficientes$Predictable==predictable)

#atividadePor100Hab ==================================================
predictable = "atividadePor100Hab"
coef = subset(coeficientes, coeficientes$Predictable==predictable)
normAti100Populacao = coef[2,3:4]*sd(log(populacao))/sd(dados[,predictable])
normAti100Capital = coef[3,3:4]*sd(capital)/sd(dados[,predictable])
normAti100IFDM = coef[4,3:4]*sd(log(IFDM))/sd(dados[,predictable])
normAti100Taxas = coef[5,3:4]*sd(log(Taxas.2010))/sd(dados[,predictable])

#montaLinha de retorno
lineAti100Pop = c("AtividadePor100Hab", "populacao", normAti100Populacao)
lineAti100Cap = c("AtividadePor100Hab", "capital", normAti100Capital)
lineAti100IFDM = c("AtividadePor100Hab", "IFDM", normAti100IFDM)
lineAti100Taxas = c("AtividadePor100Hab", "Taxas", normAti100Taxas)

#montaTabela =========================================================
coeficientesNormalizados = rbind(lineAtiCap, lineAtiPop, lineAtuIDHM, lineAtuPop,
                                 lineDivCap, lineDivTaxas, lineDenIFDM, lineAti100Cap,
                                 lineAti100Pop, lineAti100IFDM, lineAti100Taxas)

coeficientesNormalizados = as.data.frame(coeficientesNormalizados)
colnames(coeficientesNormalizados) = c("Predictable","FatorUrbano","InfLim","SupLim")

#write.csv(coeficientesNormalizados, "coeficientesNormalizados.csv", quote=F, row.names=F)
#o write.csv dá um erro que eu nao entendo