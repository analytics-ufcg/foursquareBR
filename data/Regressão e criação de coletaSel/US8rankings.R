dados = read.csv("coletaSel.csv")
nomes.colunas = names(dados)
nomes.colunas[13] = "Homicidios.por.100mil.habitantes" 
colnames(dados) = nomes.colunas
comportamentos = dados[,c("Cidade","Atividade","atividadePor100Hab","Diversidade","Densidade","Cobertura","Atualidade")]
fatores.urbanos = dados[,c("Cidade","capital","IDHM","IFDM","Homicidios.por.100mil.habitantes","populacao","UF")]

ranking = function(coluna,eh.decrescente,eh.fator.urbano){
  if(!eh.fator.urbano){
    return(cbind(data.frame(ranking = 1:5),head(dados[order(dados[,coluna],decreasing=eh.decrescente),c("Cidade",coluna,"capital","IDHM","IFDM","Homicidios.por.100mil.habitantes","populacao","UF")],n=5))) 
  }else{
    return(cbind(data.frame(ranking = 1:5),head(dados[order(dados[,coluna],decreasing=eh.decrescente),c("Cidade",coluna)],n=5)))
  }
   
}

#Comportamentos do foursquare

diversidade.top5 = ranking("Diversidade",T,F)
Atividade.top5 = ranking("Atividade",T,F)
atividade.relativa.top5 = ranking("atividadePor100Hab",T,F)
densidade.top5 = ranking("Densidade",T,F)
cobertura.top5 = ranking("Cobertura",T,F)
atualidade.top5 = ranking("Atualidade",T,F)

diversidade.top5 = ranking("Diversidade",T,F)
Atividade.top5 = ranking("Atividade",T,F)
atividade.relativa.top5 = ranking("atividadePor100Hab",T,F)
densidade.top5 = ranking("Densidade",T,F)
cobertura.top5 = ranking("Cobertura",T,F)
atualidade.top5 = ranking("Atualidade",T,F)

diversidade.bottom5 = ranking("Diversidade",F,F)
Atividade.bottom5 = ranking("Atividade",F,F)
atividade.relativa.bottom5 = ranking("atividadePor100Hab",F,F)
densidade.bottom5 = ranking("Densidade",F,F)
cobertura.bottom5 = ranking("Cobertura",F,F)
atualidade.bottom5 = ranking("Atualidade",F,F)

diversidade.bottom5 = ranking("Diversidade",F,F)
Atividade.bottom5 = ranking("Atividade",F,F)
atividade.relativa.bottom5 = ranking("atividadePor100Hab",F,F)
densidade.bottom5 = ranking("Densidade",F,F)
populacao.bottom5 = ranking("Cobertura",F,F)
atualidade.bottom5 = ranking("Atualidade",F,F)

# FATORES URBANOS
IDHM.top5 = ranking("IDHM",T,T)
IFDM.top5 = ranking("IFDM",T,T)
Homicidios.por.100mil.habitantes.top5 = ranking("Homicidios.por.100mil.habitantes",T,T)
populacao.top5 = ranking("populacao",T,T)

IDHM.bottom5 = ranking("IDHM",F,T)
IFDM.bottom5 = ranking("IFDM",F,T)
Homicidios.por.100mil.habitantes.bottom5 = ranking("Homicidios.por.100mil.habitantes",F,T)
populacao.bottom5 = ranking("populacao",F,T)
