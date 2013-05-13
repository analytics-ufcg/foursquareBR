require("xlsReadWrite")
tabelaCidades = read.csv(file = 'coletaSelByAtividade60.csv', stringsAsFactors=F)

#reescreve nome cidades
#cidades = substr(tabelaCidades$Cidade, 1, nchar(tabelaCidades$Cidade)-1)
tabelaCidades$Cidade = gsub("_", " ", tabelaCidades$Cidade)
tabelaCidades$Cidade = tolower(tabelaCidades$Cidade)

alocaFatorUrbano = function(frame, tabelaDest, nomeColOrigem, nomeColDest, atributosParaAdd){
  frame[,nomeColOrigem] = tolower(frame[,nomeColOrigem])
  tabelaDest = merge(tabelaDest, frame[,c(nomeColOrigem, atributosParaAdd)], by.x=(nomeColDest), by.y=(nomeColOrigem))
  return (tabelaDest)
}

alocaCapital = function(frame){
  capital = c(0,0,1,1,0,1,0,1,0,0,
              0,0,0,0,0,1,0,0,0,1,
              1,1,0,0,1,0,0,0,0,1,
              1,1,0,0,0,1,0,0,0,0,
              0,1,0,1,0,1,1,0,0,0,
              0,0,0,1,1,0,0,1,0,0)
  
  return(cbind(frame, capital))
}

alocaCoordenadasGeograficas = function(frame){
  coordX = c("206","300","501","476","462","215","310","425","164","540","193","470","208","432","514","","283","205","413","317","317","","503","400","179","311","106","420","545","503","320","390","","319","412","530","292","441","440","452","511","450","405","570","400","397")
  coordY = c("71","178","507","407","411","251","130","529","311","467","405","409","362","537","486","","90","250","520","153","129","","472","501","51","163","97","518","470","489","140","525","","147","458","500","202","543","537","470","491","518","522","431","541","378")
  toCbind = cbind(coordX, coordY)
  return(cbind(frame, toCbind))
}

#PIB
frame = read.xls(file = 'fatoresUrbanos/PibMunicipal2010.xls')
tabelaCidades = alocaFatorUrbano(frame, tabelaCidades, "Municipios", 'Cidade', c("PIB","Per.capita"))

tabelaCidades = tabelaCidades[c(-4,-5,-13,-51),] #eliminando o campo grande, os dois belem e o santo andre intrusos
                                                 #esse comando tem que ser o segundo comando usado
                                                 #logo apos o primeiro merge

#homicidios
frame = read.csv(file = 'fatoresUrbanos/Homicidios.csv', sep=",", header = T, stringsAsFactors=F, dec =",")
tabelaCidades = alocaFatorUrbano(frame, tabelaCidades, "Nome", 'Cidade', c("UF","Homicidios.2010","Taxas.2010"))

#Generos e populacao
frame = read.table('fatoresUrbanos/Gêneros.csv', sep = ",", header = T, stringsAsFactors=F)
tabelaCidades = alocaFatorUrbano(frame, tabelaCidades, "Municipio", 'Cidade', c("Homens","Mulheres"))
tabelaCidades$populacao = tabelaCidades$Homens + tabelaCidades$Mulheres

#capital
tabelaCidades = alocaCapital(tabelaCidades)

#IDHM
frame = read.table('fatoresUrbanos/IDH.csv', sep =',', header = T, stringsAsFactors=F)
tabelaCidades = alocaFatorUrbano(frame, tabelaCidades, "Municipio", 'Cidade', c("IDHM"))

#IFDM
frame = read.table('fatoresUrbanos/IFDM.txt', sep = '\t', header = T, stringsAsFactors=F)
tabelaCidades = alocaFatorUrbano(frame, tabelaCidades, "municipio", 'Cidade', c("IFDM"))

#coordenadas
#tabelaCidades = alocaCoordenadasGeograficas(tabelaCidades)

tabelaCidades$atividadePor100Hab = (tabelaCidades$Atividade/(tabelaCidades$populacao/100000))
write.csv(tabelaCidades, file = "coletaSel.csv", row.names = F, quote=F)