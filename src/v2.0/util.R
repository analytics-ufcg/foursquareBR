library("xlsReadWrite")
library("RJSONIO")
library("proxy")
library("plyr")

calcular.metricas = function(cidade.nome){
  
  cidades.path = "trat/"
  locais.path = "atualidade/"
  datas.path = "Datas/"
  
  
  cidade.file = list.files(cidades.path,pattern=cidade.nome)
  locais.file = list.files(locais.path, pattern=cidade.nome)
  datas.file = list.files(datas.path,pattern=cidade.nome)
  
  cidade = read.xls(paste(cidades.path,cidade.file,sep=""))  
  locais = read.csv(paste(locais.path,gsub("xls","csv",cidade.file),sep=""))
  datas = read.csv(paste(datas.path,gsub("xls","csv",cidade.file),sep=""),header=F)
  
  colnames(cidade) = c("Cidade","Data","UserId","Lat","Lon","EventId")
  colnames(locais) = c("Lat","Lon","LocalId","ValidTips","QtdadeTips")
  
  datas[is.na(datas)] = 0
  
  cidade[,"Lat"] = as.numeric(as.character(cidade[,"Lat"]))
  cidade[,"Lon"] = as.numeric(as.character(cidade[,"Lon"]))
  
  locais[,"Lat"] = as.numeric(as.character(locais[,"Lat"]))
  locais[,"Lon"] = as.numeric(as.character(locais[,"Lon"]))
  
  cidade = cidade[as.character(cidade$EventId)!="",]
  
  return(metricas(cidade,locais,datas))
  
}

metricas  = function(cidade, locais, datas){
  
  grid = criar.grid(cidade)
  
  result = data.frame(Atualidade = atualidade(cidade,locais),
                      Atividade = atividade(cidade),
                      Diversidade = diversidade(cidade,locais),
                      Densidade = densidade(cidade,grid),
                      Cobertura = cobertura(cidade,grid))
  
}

atualidade = function(cidade, locais){
  
  distancias.temporais = NULL
  
  for (i in 1:nrow(cidade)){
    evento = cidade[i,]
    
    local = local.mais.proximo(evento[,c("Lat","Lon")], locais)
    
    data = as.character(evento$Data)
    Sys.setlocale(category="LC_TIME",locale="US")
    data = substr(x=data, start=1, stop=nchar(data)-6)
    data.obj = strptime(data,"%a, %d %b %Y %X")
    
    timestamp = as.numeric(as.POSIXct(data.obj))
    
    tip5.data = get.tip5(local)
    
    if (!is.na(tip5.data)){
      distancias.temporais = c(distancias.temporais,distancia.temporal = timestamp - tip5.data)
    }
  }
  
  atualidade = mean(distancias.temporais)
  
  return(atualidade)

  
}

atividade = function(cidade){
  atividade = nrow(cidade)
  return(atividade)
}

diversidade = function(cidade, locais){
  diversidade = nrow(cidade)/length(unique(locais$LocalId))
  return(diversidade)
}

densidade = function(cidade, grid){
  densidade = nrow(cidade)/length(grid)
  return(densidade)
  
}

cobertura = function(cidade, grid){
  lat.1km = 0.008992
  lon.1km = 0.015060
  
  lat.min = min(cidade$Lat,na.rm=T)
  lon.min = min(cidade$Lon,na.rm=T)
  
  for(i in 1:nrow(cidade)){
    lat = cidade[i,"Lat"]
    linha = (lat-lat.min)/lat.1km
    
    lon = cidade[i,"Lon"]
    coluna = (lon-lon.min)/lon.1km
    
    grid[linha,coluna] = grid[linha,coluna]+1
  }
  
  cobertura = (length(grid[grid>0]))/ length(grid)
  return(cobertura)
  
}

criar.grid = function(cidade){
  
  lat.1km = 0.008992
  lon.1km = 0.015060
  
  lat.max = max(cidade$Lat,na.rm=T)
  lat.min = min(cidade$Lat,na.rm=T)
  lon.max = max(cidade$Lon,na.rm=T)
  lon.min = min(cidade$Lon,na.rm=T)
  
  numero.de.linhas = ceiling((lat.max-lat.min)/lat.1km)
  numero.de.colunas = ceiling((lon.max-lon.min)/lon.1km)
  
  grid = matrix(rep(0,numero.de.colunas*numero.de.linhas),nrow=numero.de.linhas,ncol=numero.de.colunas)
  
  return(grid)
  
}

local.mais.proximo = function(ponto, locais){
  
  distancias = dist(ponto,locais[,c("Lat","Lon")])
  
  menor.distancia = min(distancias)
  
  local.indice = match(menor.distancia,distancias)
  
  local.id = as.character(locais[local.indice,"LocalId"])
  
  return(local.id)
}


get.tip5 = function(local.id){
  local.json = list.files("Atualidade_info/",pattern=local.id,full.names=T)
  
  local.atts = fromJSON(local.json)$response$venue
  
  tips.dates = NULL
  tips.count = local.atts$tips$groups[[1]]$count
  
  if (tips.count >= 5){
    for(j in 1:tips.count){
        tips.dates = c(tips.dates,local.atts$tips$groups[[1]]$items[[j]]$createdAt)
    }
  
    r = sort(tips.dates,decreasing=T)[5]
  }else{
    r = NA
  }
  
  return(r)
}

