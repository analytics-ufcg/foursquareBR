#############################Coleta 2
#######
remove(geral_CG2)
remove(geral_SP2)
remove(geral_Salvador2)
remove(geral_BH2)
remove(geral_Fortaleza2)
remove(geral_Brasilia2)
remove(geral_RJ2)
remove(geral_Curitiba2)
remove(geral_Manaus2)
remove(geral_Recife2)
remove(geral_Guarulhos2)
remove(geral_Campinas2)
remove(geral_DuqC2)
remove(geral_Teresi2)
remove(geral_Bel2)
remove(geral_Goiania2)
remove(geral_SaoLu2)
remove(geral_SaoGo2)
remove(geral_PorAle2)
remove(geral_Maceio2)
remove(geral_Nat2)
remove(geral_CampoGr2)
remove(geral_SBC2)
remove(geral_JP2)
remove(geral_NovIgua2)
remove(geral_Osasco2)
remove(geral_JG2)
remove(geral_SJC2)
remove(geral_RB2)
remove(geral_Uberlan2)
remove(geral_Contagem2)
remove(geral_Sorocaba2)
remove(geral_Aracaju2)
remove(geral_FS2)
remove(geral_Join2)
remove(geral_JuizF2)
remove(geral_Londri2)
remove(geral_Nit2)
remove(geral_Anan2)
remove(geral_Belfor2)
remove(geral_CampoGoy2)
remove(geral_AparecGoi2)
remove(geral_SJM2)
remove(geral_CaxiasSul2)
remove(geral_PV2)
remove(geral_Flo2)
remove(geral_Maua2)
remove(geral_VV2)
remove(geral_Santos2)
remove(geral_Serra2)
remove(geral_Macapa2)
remove(geral_Mogi2)
remove(geral_Diadema2)
remove(geral_Betim2)
remove(geral_Olinda2)
remove(geral_Jundiai2)
remove(geral_Pira2)
remove(geral_MCl2)
remove(geral_Cari2)
remove(geral_SA2)
remove(geral_Cuiaba2)
remove(geral_Maringa2)
remove(geral_SJRP2)
remove(geral_Carapicuiba2)


############## Leitura dos arquivos
#####
require("xlsReadWrite")
#geral_CG2 <- read.xls(file="C:/wamp/www/coletas/coleta1/trat/arqCG.xls",colNames = FALSE,sheet = 1, type="data.frame",from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_SP2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Paulo.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Salvador2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSalvador.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_BH2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqBelo_Horizonte.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Fortaleza2 <- read.xls("C:/wamp/www/coletas/coleta3/trat/arqFortaleza.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Brasilia2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqBrasilia.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_RJ2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqRio_de_Janeiro.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Curitiba2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCuritiba.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Manaus2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqManaus.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Recife2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqRecife.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Guarulhos2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqGuarulhos.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Campinas2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCampinas.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_DuqC2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqDuque_de_Caxias.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Teresi2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqTeresina.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Bel2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqBelem.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_Goiania2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqGoiania.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
#geral_SaoLu2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Luis.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SaoGo2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Goncalo.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_PorAle2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqPorto_Alegre.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Maceio2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMaceio.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Nat2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqNatal.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_CampoGr2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCampo_Grande.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SBC2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Bernardo_do_Campo.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_JP2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqJoao_Pessoa.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_NovIgua2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqNova_Iguacu.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Osasco2 <- read.xls("C:/wamp/www/coletas/coleta3/trat/arqOsasco.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_JG2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqJaboatao_dos_Guararapes.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SJC2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Jose_dos_Campos.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_RB2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqRibeirao_Preto.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Uberlan2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqUberlandia.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Contagem2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqContagem.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Sorocaba2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSorocaba.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Aracaju2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqAracaju.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_FS2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqFeira_de_Santana.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Join2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqJoinville.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_JuizF2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqJuiz_de_Fora.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Londri2  <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqLondrina.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Nit2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqNiteroi.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Anan2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqAnanindeua.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Belfor2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqBelford_Roxo.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_CampoGoy2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCampos_dos_Goytacazes.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_AparecGoi2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqAparecida_de_Goiania.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SJM2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Joao_de_Meriti.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_CaxiasSul2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCaxias_do_Sul.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_PV2<- read.xls("C:/wamp/www/coletas/coleta1/trat/arqPorto_Velho.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Flo2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqFlorianopolis.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Maua2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMaua.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_VV2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqVila_Velha.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Santos2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSantos.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Serra2<- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSerra.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Macapa2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMacapa.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Mogi2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMogi_das_Cruzes.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Diadema2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqDiadema.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Betim2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqBetim.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Olinda2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqOlinda.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Jundiai2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqJundiai.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Pira2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqPiracicaba.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_MCl2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMontes_Claros.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Cari2<- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCariacica.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SA2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSanto_Andre.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Cuiaba2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCuiaba.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Maringa2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqMaringa.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_SJRP2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqSao_Jose_do_Rio_Preto.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())
geral_Carapicuiba2 <- read.xls("C:/wamp/www/coletas/coleta1/trat/arqCarapicuiba.xls",colNames = FALSE,sheet = 1,from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())

########
require("xlsReadWrite")
a <- read.xls("C:/wamp/www/coletas/coleta1/Analise3V.xls", colNames = TRUE, sheet = 1, from = 1,rowNames = NA, colClasses = NA, checkNames = TRUE,dateTime = "numeric",naStrings = NA,stringsAsFactors = default.stringsAsFactors())

#########Deixando a latitude e a longitude numéricas
fix(geral_CG2)
fix(geral_SP2)
fix(geral_Salvador2)
fix(geral_BH2)
fix(geral_Fortaleza2)
fix(geral_Brasilia2)
fix(geral_RJ2)
fix(geral_Curitiba2)
fix(geral_Manaus2)
fix(geral_Recife2)
fix(geral_Guarulhos2)
fix(geral_Campinas2)
fix(geral_DuqC2)
fix(geral_Teresi2)
fix(geral_Bel2)
fix(geral_Goiania2)
fix(geral_SaoLu2)
fix(geral_SaoGo2)
fix(geral_PorAle2)
fix(geral_Maceio2)
fix(geral_Nat2)
fix(geral_CampoGr2)
fix(geral_SBC2)
fix(geral_JP2)
fix(geral_NovIgua2)
fix(geral_Osasco2)
fix(geral_JG2)
fix(geral_SJC2)
fix(geral_RB2)
fix(geral_Uberlan2)
fix(geral_Contagem2)
fix(geral_Sorocaba2)
fix(geral_Aracaju2)
fix(geral_FS2)
fix(geral_Join2)
fix(geral_JuizF2)
fix(geral_Londri2)
fix(geral_Nit2)
fix(geral_Anan2)
fix(geral_Belfor2)
fix(geral_CampoGoy2)
fix(geral_AparecGoi2)
fix(geral_SJM2)
fix(geral_CaxiasSul2)
fix(geral_PV2)
fix(geral_Flo2)
fix(geral_Maua2)
fix(geral_VV2)
fix(geral_Santos2)
fix(geral_Serra2)
fix(geral_Macapa2)
fix(geral_Mogi2)
fix(geral_Diadema2)
fix(geral_Betim2)
fix(geral_Olinda2)
fix(geral_Jundiai2)
fix(geral_Pira2)
fix(geral_MCl2)
fix(geral_Cari2)
fix(geral_SA2)
fix(geral_Cuiaba2)
fix(geral_Maringa2)
fix(geral_SJRP2)
fix(geral_Carapicuiba2)

geral_RJ2$V6 = as.numeric(as.character(geral_RJ2$V6))
geral_RJ2$V4 = as.numeric(as.character(geral_RJ2$V4))
geral_RJ2$V5 = as.numeric(as.character(geral_RJ2$V5))

geral_Brasilia2$V6 = as.numeric(as.character(geral_Brasilia2$V6))
geral_Brasilia2$V4 = as.numeric(as.character(geral_Brasilia2$V4))
geral_Brasilia2$V5 = as.numeric(as.character(geral_Brasilia2$V5))

geral_Salvador2$V6 = as.numeric(as.character(geral_Salvador2$V6))
geral_Salvador2$V4 = as.numeric(as.character(geral_Salvador2$V4))
geral_Salvador2$V5 = as.numeric(as.character(geral_Salvador2$V5))

###################   Diversidade#####
length(table(geral_CG2$V6[geral_CG2$V4> -7.4 & geral_CG2$V4< -7.1 & geral_CG2$V5< -35.6  & geral_CG2$V5> -36.2]))/length(geral_CG2$V6[geral_CG2$V4> -7.4 & geral_CG2$V4< -7.1 & geral_CG2$V5< -35.6  & geral_CG2$V5> -36.2 & geral_CG2$V4 != NA & geral_CG2$V5 != NA])

length(
  table(
    geral_RJ2$V6[geral_RJ2$V4> -23.2 & geral_RJ2$V4< -22.5 &
                   geral_RJ2$V5> -43.8 & geral_RJ2$V5< -43]))/
  length(geral_RJ2$V6[geral_RJ2$V4> -23.2 & geral_RJ2$V4< -22.5 &
                        geral_RJ2$V5> -43.8 & geral_RJ2$V5< -43])


length(table(geral_Salvador2$V6[geral_Salvador2$V4> -13.1 & geral_Salvador2$V4< -12.7 & geral_Salvador2$V5>-38.3  & geral_Salvador2$V5< -35.6]))/length(geral_Salvador2$V6[geral_Salvador2$V4> -13.1 & geral_Salvador2$V4< -12.7 & geral_Salvador2$V5>-38.3  & geral_Salvador2$V5< -35.6])

length(table(geral_Fortaleza2$V6[geral_Fortaleza2$V4< -3.65 & geral_Fortaleza2$V4> -3.95 & geral_Fortaleza2$V5< -38.4   & geral_Fortaleza2$V5> -38.7]))/length(geral_Fortaleza2$V6[geral_Fortaleza2$V4< -3.65 & geral_Fortaleza2$V4> -3.95 & geral_Fortaleza2$V5< -38.4   & geral_Fortaleza2$V5> -38.7])
length(table(geral_BH2$V6[geral_BH2$V4< -19.75 & geral_BH2$V4> -20.10 & geral_BH2$V5< -43.8  & geral_BH2$V5> -44.1]))/length(geral_BH2$V6[geral_BH2$V4< -19.75 & geral_BH2$V4> -20.10 & geral_BH2$V5< -43.8  & geral_BH2$V5> -44.1])
length(table(geral_Maceio2$V6[geral_Maceio2$V4< -9.35 & geral_Maceio2$V4> -9.75 & geral_Maceio2$V5< -35.5 & geral_Maceio2$V5> -35.9]))/length(geral_Maceio2$V6[geral_Maceio2$V4< -9.35 & geral_Maceio2$V4> -9.75 & geral_Maceio2$V5< -35.5 & geral_Maceio2$V5> -35.9])
length(table(geral_Curitiba2$V6[geral_Curitiba2$V4< -25.3 & geral_Curitiba2$V4> -25.65 & geral_Curitiba2$V5< -49.1 & geral_Curitiba2$V5> -49.4]))/length(geral_Curitiba2$V6[geral_Curitiba2$V4< -25.3 & geral_Curitiba2$V4> -25.65 & geral_Curitiba2$V5< -49.1 & geral_Curitiba2$V5> -49.4])
length(table(geral_Recife2$V6[geral_Recife2$V4< -7.9 & geral_Recife2$V4> -8.2 & geral_Recife2$V5< -34.8 & geral_Recife2$V5> -35.1]))/length(geral_Recife2$V6[geral_Recife2$V4< -7.9 & geral_Recife2$V4> -8.2 & geral_Recife2$V5< -34.8 & geral_Recife2$V5> -35.1])
length(table(geral_Guarulhos2$V6[geral_Guarulhos2$V4< -23.25 & geral_Guarulhos2$V4> -23.55 & geral_Guarulhos2$V5< -46.3 & geral_Guarulhos2$V5> -46.6]))/length(geral_Guarulhos2$V6[geral_Guarulhos2$V4< -23.25 & geral_Guarulhos2$V4> -23.55 & geral_Guarulhos2$V5< -46.3 & geral_Guarulhos2$V5> -46.6])
length(table(geral_Campinas2$V6[geral_Campinas2$V4< -22.7 & geral_Campinas2$V4> -23 & geral_Campinas2$V5< -46.8 & geral_Campinas2$V5> -47.3]))/length(geral_Campinas2$V6[geral_Campinas2$V4< -22.7 & geral_Campinas2$V4> -23 & geral_Campinas2$V5< -46.8 & geral_Campinas2$V5> -47.3])
length(table(geral_DuqC2$V6[geral_DuqC2$V4< -22.45 & geral_DuqC2$V4> -22.8 & geral_DuqC2$V5< -43.1 & geral_DuqC2$V5> -43.5]))/length(geral_DuqC2$V6[geral_DuqC2$V4< -22.45 & geral_DuqC2$V4> -22.8 & geral_DuqC2$V5< -43.1 & geral_DuqC2$V5> -43.5])
length(table(geral_Teresi2$V6[geral_Teresi2$V4< -4.8 & geral_Teresi2$V4> -5.6 & geral_Teresi2$V5< -42.4 & geral_Teresi2$V5> -43]))/length(geral_Teresi2$V6[geral_Teresi2$V4< -4.8 & geral_Teresi2$V4> -5.6 & geral_Teresi2$V5< -42.4 & geral_Teresi2$V5> -43])
length(table(geral_Goiania2$V6[geral_Goiania2$V4< -16.4 & geral_Goiania2$V4> -16.9 & geral_Goiania2$V5< -49 & geral_Goiania2$V5> -49.5]))/length(geral_Goiania2$V6[geral_Goiania2$V4< -16.4 & geral_Goiania2$V4> -16.9 & geral_Goiania2$V5< -49 & geral_Goiania2$V5> -49.5])
length(table(geral_SaoLu2$V6[geral_SaoLu2$V4< -2.40 & geral_SaoLu2$V4> -2.80 & geral_SaoLu2$V5< -44.1 & geral_SaoLu2$V5> -44.5]))/length(geral_SaoLu2$V6[geral_SaoLu2$V4< -2.40 & geral_SaoLu2$V4> -2.80 & geral_SaoLu2$V5< -44.1 & geral_SaoLu2$V5> -44.5])
length(table(geral_SaoGo2$V6[geral_SaoGo2$V4< -22.7 & geral_SaoGo2$V4> -22.95 & geral_SaoGo2$V5< -42.85 & geral_SaoGo2$V5> -43.15]))/length(geral_SaoGo2$V6[geral_SaoGo2$V4< -22.7 & geral_SaoGo2$V4> -22.95 & geral_SaoGo2$V5< -42.85 & geral_SaoGo2$V5> -43.15])
length(table(geral_PorAle2$V6[geral_PorAle2$V4< -29.4 & geral_PorAle2$V4> -30.45 & geral_PorAle2$V5< -50.5 & geral_PorAle2$V5> -52]))/length(geral_PorAle2$V6[geral_PorAle2$V4< -29.4 & geral_PorAle2$V4> -30.45 & geral_PorAle2$V5< -50.5 & geral_PorAle2$V5> -52])
length(table(geral_Nat2$V6[geral_Nat2$V4< -5.7 & geral_Nat2$V4> -5.9 & geral_Nat2$V5< -35.15 & geral_Nat2$V5> -35.3]))/length(geral_Nat2$V6[geral_Nat2$V4< -5.7 & geral_Nat2$V4> -5.9 & geral_Nat2$V5< -35.15 & geral_Nat2$V5> -35.3])
length(table(geral_NovIgua2$V6[geral_NovIgua2$V4< -22.5 & geral_NovIgua2$V4> -22.9 & geral_NovIgua2$V5< -43.3 & geral_NovIgua2$V5> -43.8]))/length(geral_NovIgua2$V6[geral_NovIgua2$V4< -22.5 & geral_NovIgua2$V4> -22.9 & geral_NovIgua2$V5< -43.3 & geral_NovIgua2$V5> -43.8])
length(table(geral_CampoGr2$V6[geral_CampoGr2$V4< -20 & geral_CampoGr2$V4> -21.75 & geral_CampoGr2$V5< -53.5 & geral_CampoGr2$V5> -55]))/length(geral_CampoGr2$V6[geral_CampoGr2$V4< -20 & geral_CampoGr2$V4> -21.75 & geral_CampoGr2$V5< -53.5 & geral_CampoGr2$V5> -55])
length(table(geral_SBC2$V6[geral_SBC2$V4< -23.65 & geral_SBC2$V4> -23.95 & geral_SBC2$V5< -46.4 & geral_SBC2$V5> -46.7]))/length(geral_SBC2$V6[geral_SBC2$V4< -23.65 & geral_SBC2$V4> -23.95 & geral_SBC2$V5< -46.4 & geral_SBC2$V5> -46.7])
length(table(geral_JP2$V6[geral_JP2$V4< -7.05 & geral_JP2$V4> -7.25 & geral_JP2$V5< -34.79 & geral_JP2$V5> -35]))/length(geral_JP2$V6[geral_JP2$V4< -7.05 & geral_JP2$V4> -7.25 & geral_JP2$V5< -34.79 & geral_JP2$V5> -35])
length(table(geral_SA2$V6[geral_SA2$V4< -23.6 & geral_SA2$V4> -23.85 & geral_SA2$V5< -46.25 & geral_SA2$V5> -46.6]))/length(geral_SA2$V6[geral_SA2$V4< -23.6 & geral_SA2$V4> -23.85 & geral_SA2$V5< -46.25 & geral_SA2$V5> -46.6])
length(table(geral_Osasco2$V6[geral_Osasco2$V4< -23.45 & geral_Osasco2$V4> -23.62 & geral_Osasco2$V5< -46.73 & geral_Osasco2$V5> -46.85]))/length(geral_Osasco2$V6[geral_Osasco2$V4< -23.45 & geral_Osasco2$V4> -23.62 & geral_Osasco2$V5< -46.73 & geral_Osasco2$V5> -46.85])
length(table(geral_JG2$V6[geral_JG2$V4< -8.05 & geral_JG2$V4> -8.25 & geral_JG2$V5< -34.9 & geral_JG2$V5> -35.1]))/length(geral_JG2$V6[geral_JG2$V4< -8.05 & geral_JG2$V4> -8.25 & geral_JG2$V5< -34.9 & geral_JG2$V5> -35.1])
length(table(geral_SJC2$V6[geral_SJC2$V4< -22.8 & geral_SJC2$V4> -23.3 & geral_SJC2$V5< -45.7 & geral_SJC2$V5> -46.2]))/length(geral_SJC2$V6[geral_SJC2$V4< -22.8 & geral_SJC2$V4> -23.3 & geral_SJC2$V5< -45.7 & geral_SJC2$V5> -46.2])
length(table(geral_RB2$V6[geral_RB2$V4< -21.05 & geral_RB2$V4> -21.37 & geral_RB2$V5< -47.6 & geral_RB2$V5> -48]))/length(geral_RB2$V6[geral_RB2$V4< -21.05 & geral_RB2$V4> -21.37 & geral_RB2$V5< -47.6 & geral_RB2$V5> -48])
length(table(geral_Uberlan2$V6[geral_Uberlan2$V4< -18.6 & geral_Uberlan2$V4> -19.4 & geral_Uberlan2$V5< -47.8 & geral_Uberlan2$V5> -50]))/length(geral_Uberlan2$V6[geral_Uberlan2$V4< -18.6 & geral_Uberlan2$V4> -19.4 & geral_Uberlan2$V5< -47.8 & geral_Uberlan2$V5> -50])
length(table(geral_Contagem2$V6[geral_Contagem2$V4< -19.8 & geral_Contagem2$V4> -20 & geral_Contagem2$V5< -44 & geral_Contagem2$V5> -44.2]))/length(geral_Contagem2$V6[geral_Contagem2$V4< -19.8 & geral_Contagem2$V4> -20 & geral_Contagem2$V5< -44 & geral_Contagem2$V5> -44.2])
length(table(geral_Sorocaba2$V6[geral_Sorocaba2$V4< -23.35 & geral_Sorocaba2$V4> -23.6 & geral_Sorocaba2$V5< -47.3 & geral_Sorocaba2$V5> -47.6]))/length(geral_Sorocaba2$V6[geral_Sorocaba2$V4< -23.35 & geral_Sorocaba2$V4> -23.6 & geral_Sorocaba2$V5< -47.3 & geral_Sorocaba2$V5> -47.6])
length(table(geral_Aracaju2$V6[geral_Aracaju2$V4< -10.85 & geral_Aracaju2$V4> -11.2 & geral_Aracaju2$V5< -37 & geral_Aracaju2$V5> -37.2]))/length(geral_Aracaju2$V6[geral_Aracaju2$V4< -10.85 & geral_Aracaju2$V4> -11.2 & geral_Aracaju2$V5< -37 & geral_Aracaju2$V5> -37.2])
length(table(geral_FS2$V6[geral_FS2$V4< -11.9 & geral_FS2$V4> -12.41 & geral_FS2$V5< -38.8 & geral_FS2$V5> -39.2]))/length(geral_FS2$V6[geral_FS2$V4< -11.9 & geral_FS2$V4> -12.41 & geral_FS2$V5< -38.8 & geral_FS2$V5> -39.2])
length(table(geral_Join2$V6[geral_Join2$V4< -26 & geral_Join2$V4> -26.45 & geral_Join2$V5< -48.7 & geral_Join2$V5> -43.7]))/length(geral_Join2$V6[geral_Join2$V4< -26 & geral_Join2$V4> -26.45 & geral_Join2$V5< -48.7 & geral_Join2$V5> -43.7])
length(table(geral_JuizF2$V6[geral_JuizF2$V4< -21.5 & geral_JuizF2$V4> -22 & geral_JuizF2$V5< -43.1 & geral_JuizF2$V5> -49.2]))/length(geral_JuizF2$V6[geral_JuizF2$V4< -21.5 & geral_JuizF2$V4> -22 & geral_JuizF2$V5< -43.1 & geral_JuizF2$V5> -49.2])
length(table(geral_Londri2$V6[geral_Londri2$V4< -23.1 & geral_Londri2$V4> -23.8 & geral_Londri2$V5< -50.8 & geral_Londri2$V5> -51.4]))/length(geral_Londri2$V6[geral_Londri2$V4< -23.1 & geral_Londri2$V4> -23.8 & geral_Londri2$V5< -50.8 & geral_Londri2$V5> -51.4])
length(table(geral_Nit2$V6[geral_Nit2$V4< -22.85 & geral_Nit2$V4> -23 & geral_Nit2$V5< -42.95 & geral_Nit2$V5> -43.15]))/length(geral_Nit2$V6[geral_Nit2$V4< -22.85 & geral_Nit2$V4> -23 & geral_Nit2$V5< -42.95 & geral_Nit2$V5> -43.15])
length(table(geral_Anan2$V6[geral_Anan2$V4< -1.2 & geral_Anan2$V4> -1.46 & geral_Anan2$V5< -48.3 & geral_Anan2$V5> -48.45]))/length(geral_Anan2$V6[geral_Anan2$V4< -1.2 & geral_Anan2$V4> -1.46 & geral_Anan2$V5< -48.3 & geral_Anan2$V5> -48.45])
length(table(geral_Belfor2$V6[geral_Belfor2$V4< -22.68 & geral_Belfor2$V4> -22.78 & geral_Belfor2$V5< -43.32 & geral_Belfor2$V5> -43.44]))/length(geral_Belfor2$V6[geral_Belfor2$V4< -22.68 & geral_Belfor2$V4> -22.78 & geral_Belfor2$V5< -43.32 & geral_Belfor2$V5> -43.44])
length(table(geral_CampoGoy2$V6[geral_CampoGoy2$V4< -21.2 & geral_CampoGoy2$V4> -22.1 & geral_CampoGoy2$V5< -40.9 & geral_CampoGoy2$V5> -42]))/length(geral_CampoGoy2$V6[geral_CampoGoy2$V4< -21.2 & geral_CampoGoy2$V4> -22.1 & geral_CampoGoy2$V5< -40.9 & geral_CampoGoy2$V5> -42])
length(table(geral_AparecGoi2$V6[geral_AparecGoi2$V4< -16.7 & geral_AparecGoi2$V4> -16.9 & geral_AparecGoi2$V5< -49.14 & geral_AparecGoi2$V5> -49.4]))/length(geral_AparecGoi2$V6[geral_AparecGoi2$V4< -16.7 & geral_AparecGoi2$V4> -16.9 & geral_AparecGoi2$V5< -49.14 & geral_AparecGoi2$V5> -49.4])
length(table(geral_SJM2$V6[geral_SJM2$V4< -22.75 & geral_SJM2$V4> -22.82 & geral_SJM2$V5< -43.23 & geral_SJM2$V5> -43.42]))/length(geral_SJM2$V6[geral_SJM2$V4< -22.75 & geral_SJM2$V4> -22.82 & geral_SJM2$V5< -43.23 & geral_SJM2$V5> -43.42])
length(table(geral_CaxiasSul2$V6[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81]))/length(geral_CaxiasSul2$V6[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81])
length(table(geral_PV2$V6[geral_PV2$V4< -8 & geral_PV2$V4> -10 & geral_PV2$V5< -62 & geral_PV2$V5> -67]))/length(geral_PV2$V6[geral_PV2$V4< -8 & geral_PV2$V4> -10 & geral_PV2$V5< -62 & geral_PV2$V5> -67])
length(table(geral_Flo2$V6[geral_Flo2$V4< -27.3 & geral_Flo2$V4> -27.9 & geral_Flo2$V5< -48.3 & geral_Flo2$V5> -48.7]))/length(geral_Flo2$V6[geral_Flo2$V4< -27.3 & geral_Flo2$V4> -27.9 & geral_Flo2$V5< -48.3 & geral_Flo2$V5> -48.7])
length(table(geral_Maua2$V6[geral_Maua2$V4< -23.6 & geral_Maua2$V4> -23.72 & geral_Maua2$V5< -46.35 & geral_Maua2$V5> -46.56]))/length(geral_Maua2$V6[geral_Maua2$V4< -23.6 & geral_Maua2$V4> -23.72 & geral_Maua2$V5< -46.35 & geral_Maua2$V5> -46.56])
length(table(geral_VV2$V6))/length(geral_VV2$V6)
length(table(geral_Santos2$V6[geral_Santos2$V4< -23.75 & geral_Santos2$V4> -24 & geral_Santos2$V5< -46.1 & geral_Santos2$V5> -46.45]))/length(geral_Santos2$V6[geral_Santos2$V4< -23.75 & geral_Santos2$V4> -24 & geral_Santos2$V5< -46.1 & geral_Santos2$V5> -46.45])
length(table(geral_Serra2$V6[geral_Serra2$V4< -20 & geral_Serra2$V4> -20.25 & geral_Serra2$V5< -40.15 & geral_Serra2$V5> -40.45]))/length(geral_Serra2$V6[geral_Serra2$V4< -20 & geral_Serra2$V4> -20.25 & geral_Serra2$V5< -40.15 & geral_Serra2$V5> -40.45])
length(table(geral_Macapa2$V6[geral_Macapa2$V4< 1.2 & geral_Macapa2$V4> -0.90 & geral_Macapa2$V5< -49.25 & geral_Macapa2$V5> -51.5]))/length(geral_Macapa2$V6[geral_Macapa2$V4< 1.2 & geral_Macapa2$V4> -0.90 & geral_Macapa2$V5< -49.25 & geral_Macapa2$V5> -51.5])
length(table(geral_Mogi2$V6[geral_Mogi2$V4< -23.35 & geral_Mogi2$V4> -23.75 & geral_Mogi2$V5< -46 & geral_Mogi2$V5> -46.4]))/length(geral_Mogi2$V6[geral_Mogi2$V4< -23.35 & geral_Mogi2$V4> -23.75 & geral_Mogi2$V5< -46 & geral_Mogi2$V5> -46.4])
length(table(geral_Diadema2$V6[geral_Diadema2$V4< -23.66 & geral_Diadema2$V4> -23.74 & geral_Diadema2$V5< -46.56 & geral_Diadema2$V5> -46.66]))/length(geral_Diadema2$V6[geral_Diadema2$V4< -23.66 & geral_Diadema2$V4> -23.74 & geral_Diadema2$V5< -46.56 & geral_Diadema2$V5> -46.66])
length(table(geral_Betim2$V6[geral_Betim2$V4< -19.82 & geral_Betim2$V4> -20.05 & geral_Betim2$V5< -44.05 & geral_Betim2$V5> -44.35]))/length(geral_Betim2$V6[geral_Betim2$V4< -19.82 & geral_Betim2$V4> -20.05 & geral_Betim2$V5< -44.05 & geral_Betim2$V5> -44.35])
length(table(geral_Olinda2$V6[geral_Olinda2$V4< -7.94 & geral_Olinda2$V4> -8.04 & geral_Olinda2$V5< -34.82 & geral_Olinda2$V5> -34.92]))/length(geral_Olinda2$V6[geral_Olinda2$V4< -7.94 & geral_Olinda2$V4> -8.04 & geral_Olinda2$V5< -34.82 & geral_Olinda2$V5> -34.92])
length(table(geral_Jundiai2$V6[geral_Jundiai2$V4< -23.05 & geral_Jundiai2$V4> -23.35 & geral_Jundiai2$V5< -46.75 & geral_Jundiai2$V5> -47.05]))/length(geral_Jundiai2$V6[geral_Jundiai2$V4< -23.05 & geral_Jundiai2$V4> -23.35 & geral_Jundiai2$V5< -46.75 & geral_Jundiai2$V5> -47.05])
length(table(geral_Pira2$V6[geral_Pira2$V4< -22.5 & geral_Pira2$V4> -22.9 & geral_Pira2$V5< -47.5 & geral_Pira2$V5> -48.1]))/length(geral_Pira2$V6[geral_Pira2$V4< -22.5 & geral_Pira2$V4> -22.9 & geral_Pira2$V5< -47.5 & geral_Pira2$V5> -48.1])
length(table(geral_MCl2$V6[geral_MCl2$V4< -16.1 & geral_MCl2$V4> -17.9 & geral_MCl2$V5< -43.6 & geral_MCl2$V5> -44.4]))/length(geral_MCl2$V6[geral_MCl2$V4< -16.1 & geral_MCl2$V4> -17.9 & geral_MCl2$V5< -43.6 & geral_MCl2$V5> -44.4])
length(table(geral_Cari2$V6[geral_Cari2$V4< -20.2 & geral_Cari2$V4> -20.4 & geral_Cari2$V5< -40.35 & geral_Cari2$V5> -40.6]))/length(geral_Cari2$V6[geral_Cari2$V4< -20.2 & geral_Cari2$V4> -20.4 & geral_Cari2$V5< -40.35 & geral_Cari2$V5> -40.6])

length(table(geral_Brasilia2$V6[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2]))/length(geral_Brasilia2$V6[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2])

length(table(geral_SP2$V6[geral_SP2$V4< -23.3 & geral_SP2$V4> -24.1 & geral_SP2$V5< -46.2   & geral_SP2$V5> -46.9]))/length(geral_SP2$V6[geral_SP2$V4< -23.3 & geral_SP2$V4> -24.1 & geral_SP2$V5< -46.2   & geral_SP2$V5> -46.9])
length(table(geral_Bel2$V6[geral_Bel2$V4< -1 & geral_Bel2$V4> -1.5 & geral_Bel2$V5< -48.2 & geral_Bel2$V5> -48.7]))/length(geral_Bel2$V6[geral_Bel2$V4< -1 & geral_Bel2$V4 > -1.5 & geral_Bel2$V5 < -48.2 & geral_Bel2$V5 > -48.7])
length(table(geral_Manaus2$V6[geral_Manaus2$V4< -1.8 & geral_Manaus2$V4> -3.2 & geral_Manaus2$V5< -59  & geral_Manaus2$V5> -61]))/length(geral_Manaus2$V6[geral_Manaus2$V4< -1.8 & geral_Manaus2$V4> -3.2 & geral_Manaus2$V5< -59  & geral_Manaus2$V5> -61])
length(table(geral_Goiania2$V6))/length(geral_Goiania2$V6)
length(table(geral_SaoLu2$V6))/length(geral_SaoLu2$V6)
length(table(geral_SaoGo2$V6))/length(geral_SaoGo2$V6)


##############################   Quantidade de informações coletadas

length(geral_RJ2$V2[geral_RJ2$V4> -23.2 & geral_RJ2$V4< -22.5 & geral_RJ2$V5> -43.8 & geral_RJ2$V5< -43])

length(geral_Brasilia2$V2[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2])

length(geral_Salvador2$V2[geral_Salvador2$V4> -13.1 & geral_Salvador2$V4< -12.7 & geral_Salvador2$V5>-38.3  & geral_Salvador2$V5< -35.6])

length(geral_CG2$V2[geral_CG2$V4> -7.4 & geral_CG2$V4< -7.1 & geral_CG2$V5< -35.6  & geral_CG2$V5> -36.2])
length(geral_SP2$V2[geral_SP2$V4< -23.3 & geral_SP2$V4> -24.1 & geral_SP2$V5< -46.2   & geral_SP2$V5> -46.9])
length(geral_Fortaleza2$V2[geral_Fortaleza2$V4< -3.65 & geral_Fortaleza2$V4> -3.95 & geral_Fortaleza2$V5< -38.4   & geral_Fortaleza2$V5> -38.7])
length(geral_BH2$V2[geral_BH2$V4< -19.75 & geral_BH2$V4> -20.10 & geral_BH2$V5< -43.8  & geral_BH2$V5> -44.1])
length(geral_Manaus2$V2[geral_Manaus2$V4< -1.8 & geral_Manaus2$V4> -3.2 & geral_Manaus2$V5< -59  & geral_Manaus2$V5> -61])
length(geral_Curitiba2$V2[geral_Curitiba2$V4< -25.3 & geral_Curitiba2$V4> -25.65 & geral_Curitiba2$V5< -49.1 & geral_Curitiba2$V5> -49.4])
length(geral_Recife2$V2[geral_Recife2$V4< -7.9 & geral_Recife2$V4> -8.2 & geral_Recife2$V5< -34.8 & geral_Recife2$V5> -35.1])
length(geral_Guarulhos2$V2[geral_Guarulhos2$V4< -23.25 & geral_Guarulhos2$V4> -23.55 & geral_Guarulhos2$V5< -46.3 & geral_Guarulhos2$V5> -46.6])
length(geral_Campinas2$V2[geral_Campinas2$V4< -22.7 & geral_Campinas2$V4> -23 & geral_Campinas2$V5< -46.8 & geral_Campinas2$V5> -47.3])
length(geral_DuqC2$V2[geral_DuqC2$V4< -22.45 & geral_DuqC2$V4> -22.8 & geral_DuqC2$V5< -43.1 & geral_DuqC2$V5> -43.5])
length(geral_Teresi2$V2[geral_Teresi2$V4< -4.8 & geral_Teresi2$V4> -5.6 & geral_Teresi2$V5< -42.4 & geral_Teresi2$V5> -43])
length(geral_Bel2$V2[geral_Bel2$V4< -1 & geral_Bel2$V4> -1.5 & geral_Bel2$V5< -48.2 & geral_Bel2$V5> -48.7])
length(geral_Goiania2$V2[geral_Goiania2$V4< -16.4 & geral_Goiania2$V4> -16.9 & geral_Goiania2$V5< -49 & geral_Goiania2$V5> -49.5])
length(geral_SaoLu2$V2[geral_SaoLu2$V4< -2.40 & geral_SaoLu2$V4> -2.80 & geral_SaoLu2$V5< -44.1 & geral_SaoLu2$V5> -44.5])
length(geral_SaoGo2$V2[geral_SaoGo2$V4< -22.7 & geral_SaoGo2$V4> -22.95 & geral_SaoGo2$V5< -42.85 & geral_SaoGo2$V5> -43.15])
length(geral_Maceio2$V2[geral_Maceio2$V4< -9.35 & geral_Maceio2$V4> -9.75 & geral_Maceio2$V5< -35.5 & geral_Maceio2$V5> -35.9])
length(geral_PorAle2$V2[geral_PorAle2$V4< -29.4 & geral_PorAle2$V4> -30.45 & geral_PorAle2$V5< -50.5 & geral_PorAle2$V5> -52])
length(geral_Nat2$V2[geral_Nat2$V4< -5.7 & geral_Nat2$V4> -5.9 & geral_Nat2$V5< -35.15 & geral_Nat2$V5> -35.3])
length(geral_NovIgua2$V2[geral_NovIgua2$V4< -22.5 & geral_NovIgua2$V4> -22.9 & geral_NovIgua2$V5< -43.3 & geral_NovIgua2$V5> -43.8])
length(geral_CampoGr2$V2[geral_CampoGr2$V4< -20 & geral_CampoGr2$V4> -21.75 & geral_CampoGr2$V5< -53.5 & geral_CampoGr2$V5> -55])
length(geral_SBC2$V2[geral_SBC2$V4< -23.65 & geral_SBC2$V4> -23.95 & geral_SBC2$V5< -46.4 & geral_SBC2$V5> -46.7])
length(geral_JP2$V2[geral_JP2$V4< -7.05 & geral_JP2$V4> -7.25 & geral_JP2$V5< -34.79 & geral_JP2$V5> -35])
length(geral_SA2$V2[geral_SA2$V4< -23.6 & geral_SA2$V4> -23.85 & geral_SA2$V5< -46.25 & geral_SA2$V5> -46.6])
length(geral_Osasco2$V2[geral_Osasco2$V4< -23.45 & geral_Osasco2$V4> -23.62 & geral_Osasco2$V5< -46.73 & geral_Osasco2$V5> -46.85])
length(geral_JG2$V2[geral_JG2$V4< -8.05 & geral_JG2$V4> -8.25 & geral_JG2$V5< -34.9 & geral_JG2$V5> -35.1])
length(geral_SJC2$V2[geral_SJC2$V4< -22.8 & geral_SJC2$V4> -23.3 & geral_SJC2$V5< -45.7 & geral_SJC2$V5> -46.2])
length(geral_RB2$V2[geral_RB2$V4< -21.05 & geral_RB2$V4> -21.37 & geral_RB2$V5< -47.6 & geral_RB2$V5> -48])
length(geral_Uberlan2$V2[geral_Uberlan2$V4< -18.6 & geral_Uberlan2$V4> -19.4 & geral_Uberlan2$V5< -47.8 & geral_Uberlan2$V5> -50])
length(geral_Contagem2$V2[geral_Contagem2$V4< -19.8 & geral_Contagem2$V4> -20 & geral_Contagem2$V5< -44 & geral_Contagem2$V5> -44.2])
length(geral_Sorocaba2$V2[geral_Sorocaba2$V4< -23.35 & geral_Sorocaba2$V4> -23.6 & geral_Sorocaba2$V5< -47.3 & geral_Sorocaba2$V5> -47.6])
length(geral_Aracaju2$V2[geral_Aracaju2$V4< -10.85 & geral_Aracaju2$V4> -11.2 & geral_Aracaju2$V5< -37 & geral_Aracaju2$V5> -37.2])
length(geral_FS2$V2[geral_FS2$V4< -11.9 & geral_FS2$V4> -12.41 & geral_FS2$V5< -38.8 & geral_FS2$V5> -39.2])
length(geral_Join2$V2[geral_Join2$V4< -26 & geral_Join2$V4> -26.45 & geral_Join2$V5< -48.7 & geral_Join2$V5> -43.7])
length(geral_JuizF2$V2[geral_JuizF2$V4< -21.5 & geral_JuizF2$V4> -22 & geral_JuizF2$V5< -43.1 & geral_JuizF2$V5> -49.2])
length(geral_Londri2$V2[geral_Londri2$V4< -23.1 & geral_Londri2$V4> -23.8 & geral_Londri2$V5< -50.8 & geral_Londri2$V5> -51.4])
length(geral_Nit2$V2[geral_Nit2$V4< -22.85 & geral_Nit2$V4> -23 & geral_Nit2$V5< -42.95 & geral_Nit2$V5> -43.15])
length(geral_Anan2$V2[geral_Anan2$V4< -1.2 & geral_Anan2$V4> -1.46 & geral_Anan2$V5< -48.3 & geral_Anan2$V5> -48.45])
length(geral_Belfor2$V2[geral_Belfor2$V4< -22.68 & geral_Belfor2$V4> -22.78 & geral_Belfor2$V5< -43.32 & geral_Belfor2$V5> -43.44])
length(geral_CampoGoy2$V2[geral_CampoGoy2$V4< -21.2 & geral_CampoGoy2$V4> -22.1 & geral_CampoGoy2$V5< -40.9 & geral_CampoGoy2$V5> -42])
length(geral_AparecGoi2$V2[geral_AparecGoi2$V4< -16.7 & geral_AparecGoi2$V4> -16.9 & geral_AparecGoi2$V5< -49.14 & geral_AparecGoi2$V5> -49.4])
length(geral_SJM2$V2[geral_SJM2$V4< -22.75 & geral_SJM2$V4> -22.82 & geral_SJM2$V5< -43.23 & geral_SJM2$V5> -43.42])
length(geral_PV2$V2[geral_PV2$V4< -8 & geral_PV2$V4> -10 & geral_PV2$V5< -62 & geral_PV2$V5> -67])
length(geral_Flo2$V2[geral_Flo2$V4< -27.3 & geral_Flo2$V4> -27.9 & geral_Flo2$V5< -48.3 & geral_Flo2$V5> -48.7])
length(geral_Maua2$V2[geral_Maua2$V4< -23.6 & geral_Maua2$V4> -23.72 & geral_Maua2$V5< -46.35 & geral_Maua2$V5> -46.56])
length(geral_CaxiasSul2$V2[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81])
length(geral_VV2$V2[geral_VV2$V4< -20.3 & geral_VV2$V4> -20.55 & geral_VV2$V5< -40.25 & geral_VV2$V5> -40.5])
length(geral_Santos2$V2[geral_Santos2$V4< -23.75 & geral_Santos2$V4> -24 & geral_Santos2$V5< -46.1 & geral_Santos2$V5> -46.45])
length(geral_Serra2$V2[geral_Serra2$V4< -20 & geral_Serra2$V4> -20.25 & geral_Serra2$V5< -40.15 & geral_Serra2$V5> -40.45])
length(geral_Macapa2$V2[geral_Macapa2$V4< 1.2 & geral_Macapa2$V4> -0.90 & geral_Macapa2$V5< -49.25 & geral_Macapa2$V5> -51.5])
length(geral_Mogi2$V2[geral_Mogi2$V4< -23.35 & geral_Mogi2$V4> -23.75 & geral_Mogi2$V5< -46 & geral_Mogi2$V5> -46.4])
length(geral_Diadema2$V2[geral_Diadema2$V4< -23.66 & geral_Diadema2$V4> -23.74 & geral_Diadema2$V5< -46.56 & geral_Diadema2$V5> -46.66])
length(geral_Betim2$V2[geral_Betim2$V4< -19.82 & geral_Betim2$V4> -20.05 & geral_Betim2$V5< -44.05 & geral_Betim2$V5> -44.35])
length(geral_Olinda2$V2[geral_Olinda2$V4< -7.94 & geral_Olinda2$V4> -8.04 & geral_Olinda2$V5< -34.82 & geral_Olinda2$V5> -34.92])
length(geral_Jundiai2$V2[geral_Jundiai2$V4< -23.05 & geral_Jundiai2$V4> -23.35 & geral_Jundiai2$V5< -46.75 & geral_Jundiai2$V5> -47.05])
length(geral_Pira2$V2[geral_Pira2$V4< -22.5 & geral_Pira2$V4> -22.9 & geral_Pira2$V5< -47.5 & geral_Pira2$V5> -48.1])
length(geral_MCl2$V2[geral_MCl2$V4< -16.1 & geral_MCl2$V4> -17.9 & geral_MCl2$V5< -43.6 & geral_MCl2$V5> -44.4])
length(geral_Cari2$V2[geral_Cari2$V4< -20.2 & geral_Cari2$V4> -20.4 & geral_Cari2$V5< -40.35 & geral_Cari2$V5> -40.6])
length(geral_Brasilia2$V2[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2])
length(geral_CaxiasSul2$V2[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81])


####################Cálculo da atualidade
remove(CG_t2)
remove(For_t2)
remove(SP_t2)
remove(RJ_t2)
remove(Bra_t2)
remove(Sal_t2)
remove(For_t2)
remove(BH_t2)
remove(Man_t2)
remove(Cu_t2)
remove(Re_t2)
remove(Ca_t2)
remove(Gu_t2)
remove(Te_t2)
remove(Bel_t2)
remove(Go_t2)
remove(SL_t2)
remove(SG_t2)
remove(Mac_t2)
remove(PA_t2)
remove(Na_t2)
remove(NI_t2)
remove(CGr_t2)
remove(SBC_t2)
remove(JP_t2)
remove(SA_t2)
remove(Osa_t2)
remove(JG_t2)
remove(SJRP_t2)
remove(SJC_t2)
remove(RP_t2)
remove(Ub_t2)
remove(Co_t2)
remove(So_t2)
remove(Ar_t2)
remove(FS_t2)
remove(Joi_t2)
remove(JF_t2)
remove(Lon_t2)
remove(Ni_t2)
remove(Ana_t2)
remove(BR_t2)
remove(CGo_t2)
remove(AGo_t2)
remove(SJM_t2)
remove(CS_t2)
remove(PV_t2)
remove(Flo_t2)
remove(Maua_t2)
remove(VV_t2)
remove(S_t2)
remove(Se_t2)
remove(Ma_t2)
remove(Mo_t2)
remove(Di_t2)
remove(Jun_t2)
remove(Bet_t2)
remove(Ol_t2)
remove(Pira_t2)
remove(MCl_t2)
remove(Cari_t2)
remove(DuqC_t2)
remove(Te_t2)

remove(CG2)
remove(SP2)
remove(RJ2)
remove(Bra2)
remove(Sal2)
remove(BH2)
remove(For2)
remove(Man2)
remove(Re2)
remove(Gu2)
remove(Ca2)
remove(DuqC2)
remove(Te2)
remove(Bel2)
remove(Go2)
remove(SL2)
remove(Mac2)
remove(PA2)
remove(Na2)
remove(Cu2)
remove(SG2)
remove(NI2)
remove(CGr2)
remove(SBC2)
remove(JP2)
remove(SA2)
remove(Osa2)
remove(JG2)
remove(SJRP2)
remove(SJC2)
remove(RP2)
remove(Uber2)
remove(Co2)
remove(So2)
remove(Ar2)
remove(FS2)
remove(Joi2)
remove(JF2)
remove(Lon2)
remove(Ni2)
remove(Ana2)
remove(BR2)
remove(CGo2)
remove(AGo2)
remove(SJM2)
remove(CS2)
remove(PV2)
remove(Flo2)
remove(Maua2)
remove(VV2)
remove(S2)
remove(Se2)
remove(Ma2)
remove(Mo2)
remove(Di2)
remove(Bet2)
remove(Ol2)
remove(Jun2)
remove(Pira2)
remove(MCl2)
remove(Cari2)
remove(Te2)

#######
CG2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCG.csv", header=F)
SP2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Paulo.csv", header=F)

RJ2 <- read.csv("C:/wamp/www/coletas/coleta3/Datas/arqRio_de_Janeiro.csv", header=F)

Bra2 <- read.csv("C:/wamp/www/coletas/coleta3/Datas/arqBrasilia.csv", header=F)

Sal2 <- read.csv("C:/wamp/www/coletas/coleta3/Datas/arqSalvador.csv", header=F)

BH2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqBelo_Horizonte.csv", header=F)
For2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqFortaleza.csv", header=F)
Man2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqManaus.csv", header=F)
Re2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqRecife.csv", header=F)
Gu2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqGuarulhos.csv", header=F)
Ca2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCampinas.csv", header=F)
DuqC2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqDuque_de_Caxias.csv", header=F)
Te2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqTeresina.csv", header=F)
Bel2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqBelim.csv", header=F)
Go2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqGoiania.csv", header=F)
SL2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Luis.csv", header=F)
Mac2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqMaceio.csv", header=F)
PA2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqPorto_Alegre.csv", header=F)
Na2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqNatal.csv", header=F)
Cu2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCuritiba.csv", header=F)
SG2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Goncalo.csv", header=F)
NI2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqNova_Iguacu.csv", header=F)
CGr2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCampo_Grande.csv", header=F)
SBC2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Bernardo_do_Campo.csv", header=F)
JP2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqJoao_Pessoa.csv", header=F)
SA2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSanto_Andre.csv", header=F)
Osa2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqOsasco.csv", header=F)
JG2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqJaboatao_dos_Guararapes.csv", header=F)
SJRP2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Jose_do_Rio_Preto.csv", header=F)
SJC2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Jose_dos_Campos.csv", header=F)
RP2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqRibeirao_Preto.csv", header=F)
Uber2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqUberlandia.csv", header=F)
Co2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqContagem.csv", header=F)
So2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSorocaba.csv", header=F)
Ar2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqAracaju.csv", header=F)
FS2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqFeira_de_Santana.csv", header=F)
Joi2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqJoinville.csv", header=F)
JF2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqJuiz_de_Fora.csv", header=F)
Lon2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqLondrina.csv", header=F)
Ni2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqNiteroi.csv", header=F)
Ana2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqAnanindeua.csv", header=F)
BR2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqBelford_Roxo.csv", header=F)
CGo2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCampos_dos_Goytacazes.csv", header=F)
AGo2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqAparecida_de_Goiania.csv", header=F)
SJM2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSao_Joao_de_Meriti.csv", header=F)
CS2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCaxias_do_Sul.csv", header=F)
PV2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqPorto_Velho.csv", header=F)
Flo2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqFlorianopolis.csv", header=F)
Maua2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqMaua.csv", header=F)
VV2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqVila_Velha.csv", header=F)
S2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSantos.csv", header=F)
Se2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqSerra.csv", header=F)
Ma2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqMacapa.csv", header=F)
Mo2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqMogi_das_Cruzes.csv", header=F)
Di2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqDiadema.csv", header=F)
Bet2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqBetim.csv", header=F)
Ol2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqOlinda.csv", header=F)
Jun2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqJundiai.csv", header=F)
Pira2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqPiracicaba.csv", header=F)
MCl2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqMontes_Claros.csv", header=F)
Cari2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqCariacica.csv", header=F)
Te2 <- read.csv("C:/wamp/www/coletas/coleta1/Datas/arqTeresina.csv", header=F)


a = apply(X=RJ2, MARGIN=2,FUN=function(x) as.character(x))
a = apply(X=RJ2, MARGIN=2,FUN=function(x) as.numeric(x))
RJ2 = as.data.frame(a)

b = apply(X=Bra2, MARGIN=2,FUN=function(x) as.character(x))
b = apply(X=Bra2, MARGIN=2,FUN=function(x) as.numeric(x))
Bra2 = as.data.frame(b)

c = apply(X=Sal2, MARGIN=2,FUN=function(x) as.character(x))
c = apply(X=Sal2, MARGIN=2,FUN=function(x) as.numeric(x))
Sal2 = as.data.frame(c)



CG_t2 <- t(CG2)
For_t2 <- t(For2)
SP_t2<- t(SP2)

RJ_t2 <- t(RJ2)

Bra_t2 <- t(Bra2)

Sal_t2 <- t(Sal2)

For_t2 <- t(For2)
BH_t2 <- t(BH2)
Man_t2 <- t(Man2)
Cu_t2 <- t(Cu2)
Re_t2 <- t(Re2)
Ca_t2 <- t(Ca2)
DuqC_t2 <- t(DuqC2)
Gu_t2 <- t(Gu2)
Te_t2 <- t(Te2)
Bel_t2 <- t(Bel2)
Go_t2 <- t(Go2)
SL_t2 <- t(SL2)
SG_t2 <- t(SG2)
Mac_t2 <- t(Mac2)
PA_t2 <- t(PA2)
Na_t2 <- t(Na2)
NI_t2 <- t(NI2)
CGr_t2 <- t(CGr2)
SBC_t2 <- t(SBC2)
JP_t2 <- t(JP2)
SA_t2 <- t(SA2)
Osa_t2 <- t(Osa2)
JG_t2 <- t(JG2)
SJRP_t2 <- t(SJRP2)
SJC_t2 <- t(SJC2)
RP_t2 <- t(RP2)
Ub_t2 <- t(Uber2)
Co_t2 <- t(Co2)
So_t2 <- t(So2)
Ar_t2 <- t(Ar2)
FS_t2 <- t(FS2)
Joi_t2 <- t(Joi2)
JF_t2 <- t(JF2)
Lon_t2 <- t(Lon2)
Ni_t2 <- t(Ni2)
Ana_t2 <- t(Ana2)
BR_t2 <- t(BR2)
CGo_t2 <- t(CGo2)
AGo_t2 <- t(AGo2)
SJM_t2 <- t(SJM2)
CS_t2 <- t(CS2)
PV_t2 <- t(PV2)
Flo_t2 <- t(Flo2)
Maua_t2 <- t(Maua2)
VV_t2 <- t(VV2)
S_t2 <- t(S2)
Se_t2 <- t(Se2)
Ma_t2 <- t(Ma2)
Mo_t2 <- t(Mo2)
Di_t2 <- t(Di2)
Jun_t2 <- t(Jun2)
Bet_t2 <- t(Bet2)
Ol_t2 <- t(Ol2)
Pira_t2 <- t(Pira2)
MCl_t2 <- t(MCl2)
Cari_t2 <- t(Cari2)
DC_t2 <- t(DC2)
Te_t2 <- t(Te2)

fix(CG_t2)
fix(SP_t2)

fix(RJ_t2)

fix(Bra_t2)

fix(Sal_t2)

fix(BH_t2)
fix(Man_t2)
fix(Cu_t2)
fix(Re_t2)
fix(Gu_t2)
fix(Ca_t2)
fix(DuqC_t2)
fix(Te_t2)
fix(Bel_t2)
fix(Go_t2)
fix(SL_t2)
fix(SG_t2)
fix(Mac_t2)
fix(PA_t2)
fix(Na_t2)
fix(NI_t2)
fix(SJRP_t2)
fix(JG_t2)
fix(Osa_t2)
fix(SA_t2)
fix(JP_t2)
fix(CGr_t2)
fix(SBC_t2)
fix(Ub_t2)
fix(RP_t2)
fix(SJC_t2)
fix(Co_t2)
fix(So_t2)
fix(Ar_t2)
fix(FS_t2)
fix(Joi_t2)
fix(JF_t2)
fix(Lon_t2)
fix(Ana_t2)
fix(Ni_t2)
fix(SJM_t2)
fix(CGo_t2)
fix(BR_t2)
fix(AGo_t2)
fix(CS_t2)
fix(VV_t2)
fix(Maua_t2)
fix(Flo_t2)
fix(PV_t2)
fix(Di_t2)
fix(S_t2)
fix(Ma_t2)
fix(Mo_t2)
fix(Jun_t2)
fix(Ol_t2)
fix(Bet_t2)
fix(Cari_t2)
fix(Pira_t2)
fix(MCl_t2)
fix(Se_t2)


boxplot(CG_t2)
boxplot(SP_t2)

boxplot(RJ_t2)

boxplot(Bra_t2)

boxplot(Sal_t2)

boxplot(SP_t2)
boxplot(For_t2)
boxplot(BH_t2)
boxplot(Man_t2)
boxplot(Cu_t2)
boxplot(Re_t2)
boxplot(Gu_t2)
boxplot(Ca_t2)
boxplot(DuqC_t2)
boxplot(Te_t2)
boxplot(Bel_t2)
boxplot(Go_t2)
boxplot(SL_t2)
boxplot(SG_t2)
boxplot(Mac_t2)
boxplot(PA_t2)
boxplot(Na_t2)
boxplot(NI_t2)
boxplot(CGr_t2)
boxplot(SBC_t2)
boxplot(JP_t2)
boxplot(SA_t2)
boxplot(Osa_t2)
boxplot(JG_t2)
boxplot(SJRP_t2)
boxplot(SJC_t2)
boxplot(RP_t2)
boxplot(Ub_t2)
boxplot(Co_t2)
boxplot(So_t2)
boxplot(Ar_t2)
boxplot(FS_t2)
boxplot(Joi_t2)
boxplot(JF_t2)
boxplot(Lon_t2)
boxplot(Ni_t2)
boxplot(Ana_t2)
boxplot(BR_t2)
boxplot(CGo_t2)
boxplot(AGo_t2)
boxplot(SJM_t2)
boxplot(CS_t2)
boxplot(PV_t2)
boxplot(Flo_t2)
boxplot(Maua_t2)
boxplot(VV_t2)
boxplot(S_t2)
boxplot(Se_t2)
boxplot(Ma_t2)
boxplot(Mo_t2)
boxplot(Di_t2)
boxplot(Jun_t2)
boxplot(Bet_t2)
boxplot(Ol_t2)
boxplot(Pira_t2)
boxplot(MCl_t2)
boxplot(Cari_t2)

mean(CG_t2, na.rm=T)
mean(SP_t2, na.rm=T)

mean(RJ_t2, na.rm=T)

mean(Bra_t2, na.rm=T)

mean(Sal_t2, na.rm=T)

mean(For_t2, na.rm=T)
mean(BH_t2, na.rm=T)
mean(Ma_t2, na.rm=T)
mean(Cu_t2, na.rm=T)
mean(Gu_t2, na.rm=T)
mean(Re_t2, na.rm=T)
mean(Ca_t2, na.rm=T)
mean(DuqC_t2, na.rm=T)
mean(Te_t2, na.rm=T)
mean(Bel_t2, na.rm=T)
mean(Go_t2, na.rm=T)
mean(SL_t2, na.rm=T)
mean(SG_t2, na.rm=T)
mean(Mac_t2, na.rm=T)
mean(PA_t2, na.rm=T)
mean(Na_t2, na.rm=T)
mean(NI_t2, na.rm=T)
mean(SA_t2, na.rm=T)
mean(JP_t2, na.rm=T)
mean(SBC_t2, na.rm=T)
mean(CGr_t2, na.rm=T)
mean(Osa_t2, na.rm=T)
mean(JG_t2, na.rm=T)
mean(SJRP_t2, na.rm=T)
mean(SJC_t2, na.rm=T)
mean(RP_t2, na.rm=T)
mean(Ub_t2, na.rm=T)
mean(Co_t2, na.rm=T)
mean(So_t2, na.rm=T)
mean(Ar_t2, na.rm=T)
mean(FS_t2, na.rm=T)
mean(Joi_t2, na.rm=T)
mean(JF_t2, na.rm=T)
mean(Lon_t2, na.rm=T)
mean(Ni_t2, na.rm=T)
mean(Ana_t2, na.rm=T)
mean(BR_t2, na.rm=T)
mean(CGo_t2, na.rm=T)
mean(AGo_t2, na.rm=T)
mean(SJM_t2, na.rm=T)
mean(CS_t2, na.rm=T)
mean(VV_t2, na.rm=T)
mean(PV_t2, na.rm=T)
mean(Flo_t2, na.rm=T)
mean(Maua_t2, na.rm=T)
mean(S_t, na.rm=T)
mean(Se_t2, na.rm=T)
mean(Ma_t2, na.rm=T)
mean(Mo_t, na.rm=T)
mean(Di_t2, na.rm=T)
mean(Jun_t2, na.rm=T)
mean(Bet_t2, na.rm=T)
mean(Ol_t2, na.rm=T)
mean(MCl_t2, na.rm=T)
mean(Pira_t2, na.rm=T)
mean(Cari_t2, na.rm=T)
mean(DC_t2, na.rm=T)

(length(Cari_t2[Cari_t2[,]> mean(Cari_t2, na.rm=T)])/length(Cari_t2))*100
(length(MCl_t2[MC_t2[,]> mean(MCl_t2, na.rm=T)])/length(MCl_t2))*100
(length(Pira_t2[Pira_t2[,]> mean(Pira_t2, na.rm=T)])/length(Pira_t2))*100
(length(VV_t2[VV_t2[,]> mean(VV_t2, na.rm=T)])/length(VV_t2))*100
(length(Maua_t2[Maua_t2[,]> mean(Maua_t2, na.rm=T)])/length(Maua_t2))*100
(length(Flo_t2[Flo_t2[,]> mean(Flo_t2, na.rm=T)])/length(Flo_t2))*100
(length(PV_t2[PV_t2[,]> mean(PV_t2, na.rm=T)])/length(PV_t2))*100
(length(CS_t2[CS_t2[,]> mean(CS_t2, na.rm=T)])/length(CS_t2))*100
(length(SJM_t2[SJM_t2[,]> mean(SJM_t2, na.rm=T)])/length(SJM_t2))*100
(length(AGo_t2[AGo_t2[,]> mean(AGo_t2, na.rm=T)])/length(AGo_t2))*100
(length(CGo_t2[CGo_t2[,]> mean(CGo_t2, na.rm=T)])/length(CGo_t2))*100
(length(BR_t2[BR_t2[,]> mean(BR_t2, na.rm=T)])/length(BR_t2))*100
(length(Ana_t2[Ana_t2[,]> mean(Ana_t2, na.rm=T)])/length(Ana_t2))*100
(length(Ni_t2[Ni_t2[,]> mean(Ni_t2, na.rm=T)])/length(Ni_t2))*100
(length(Lon_t2[Lon_t2[,]> mean(Lon_t2, na.rm=T)])/length(Lon_t2))*100
(length(JF_t2[JF_t2[,]> mean(JF_t2, na.rm=T)])/length(JF_t2))*100
(length(Joi_t2[Joi_t2[,]> mean(Joi_t2, na.rm=T)])/length(Joi_t2))*100
(length(FS_t2[FS_t2[,]> mean(FS_t2, na.rm=T)])/length(FS_t2))*100
(length(Ar_t2[Ar_t2[,]> mean(Ar_t2, na.rm=T)])/length(Ar_t2))*100
(length(So_t2[So_t2[,]> mean(So_t2, na.rm=T)])/length(So_t2))*100
(length(Co_t2[Co_t2[,]> mean(Co_t2, na.rm=T)])/length(Co_t2))*100
(length(Ub_t2[Ub_t2[,]> mean(Ub_t2, na.rm=T)])/length(Ub_t2))*100
(length(RP_t2[RP_t2[,]> mean(RP_t2, na.rm=T)])/length(RP_t2))*100
(length(SJC_t2[SJC_t2[,]> mean(SJC_t2, na.rm=T)])/length(SJC_t2))*100
(length(SJRP_t2[SJRP_t2[,]> mean(SJRP_t2, na.rm=T)])/length(SJRP_t2))*100
(length(NI_t2[NI_t2[,]> mean(NI_t2, na.rm=T)])/length(NI_t2))*100
(length(Na_t2[Na_t2[,]> mean(Na_t2, na.rm=T)])/length(Na_t2))*100
(length(PA_t2[PA_t2[,]> mean(PA_t2, na.rm=T)])/length(PA_t2))*100
(length(SG_t2[SG_t2[,]> mean(SG_t2, na.rm=T)])/length(SG_t2))*100
(length(Mac_t2[Mac_t2[,]> mean(Mac_t2, na.rm=T)])/length(Mac_t2))*100
(length(JG_t2[JG_t2[,]> mean(JG_t2, na.rm=T)])/length(JG_t2))*100
(length(Osa_t2[Osa_t2[,]> mean(Osa_t2, na.rm=T)])/length(Osa_t2))*100
(length(SA_t2[SA_t2[,]> mean(SA_t2, na.rm=T)])/length(SA_t2))*100
(length(JP_t2[JP_t2[,]> mean(JP_t2, na.rm=T)])/length(JP_t2))*100
(length(CGr_t2[CGr_t2[,]> mean(CGr_t2, na.rm=T)])/length(CGr_t2))*100
(length(SBC_t2[SBC_t2[,]> mean(SBC_t2, na.rm=T)])/length(SBC_t2))*100
(length(Ol_t2[Ol_t2[,]> mean(Ol_t2, na.rm=T)])/length(Ol_t2))*100
(length(Bet_t2[Bet_t2[,]> mean(Bet_t2, na.rm=T)])/length(Bet_t2))*10
(length(Jun_t2[Jun_t2[,]> mean(Jun_t2, na.rm=T)])/length(Jun_t2))*100
(length(Di_t2[Di_t2[,]> mean(Di_t2, na.rm=T)])/length(Di_t2))*100
(length(Mo_t[Mo_t[,]> mean(Mo_t, na.rm=T)])/length(Mo_t))*100
(length(Ma_t2[Ma_t2[,]> mean(Ma_t2, na.rm=T)])/length(Ma_t2))*100fix(Se_t2)
(length(Se_t2[Se_t2[,]> mean(Se_t2, na.rm=T)])/length(Se_t2))*100
(length(S_t2[S_t2[,]> mean(S_t2, na.rm=T)])/length(S_t2))*100
(length(SP_t2[SP_t2[,]> mean(SP_t2, na.rm=T)])/length(SP_t2))*100

(length(RJ_t2[RJ_t2[,]> mean(RJ_t2, na.rm=T)])/length(RJ_t2))*100

(length(Bra_t2[Bra_t2[,]> mean(Bra_t2, na.rm=T)])/length(Bra_t2))*100

(length(Sal_t2[Sal_t2[,]> mean(Sal_t2, na.rm=T)])/length(Sal_t2))*100

(length(SP_t[SP_t[,]> mean(SP_t, na.rm=T)])/length(SP_t2))*100
(length(For_t2[For_t2[,]> mean(For_t2, na.rm=T)])/length(For_t2))*100
(length(BH_t2[BH_t2[,]> mean(BH_t2, na.rm=T)])/length(BH_t2))*100
(length(Man_t2[Man_t2[,]> mean(Man_t2, na.rm=T)])/length(Ma_t2))*100
(length(Cu_t2[Cu_t2[,]> mean(Cu_t2, na.rm=T)])/length(Cu_t2))*100
(length(Re_t2[Re_t2[,]> mean(Re_t2, na.rm=T)])/length(Re_t2))*100
(length(Gu_t2[Gu_t2[,]> mean(Gu_t2, na.rm=T)])/length(Gu_t2))*100
(length(Ca_t2[Ca_t2[,]> mean(Ca_t2, na.rm=T)])/length(Ca_t2))*100
(length(DuqC_t2[DuqC_t2[,]> mean(DuqC_t2, na.rm=T)])/length(DuqC_t2))*100
(length(Te_t2[Te_t2[,]> mean(Te_t2, na.rm=T)])/length(Te_t2))*100
(length(Bel_t2[Bel_t2[,]> mean(Bel_t2, na.rm=T)])/length(Bel_t2))*100
(length(Go_t2[Go_t2[,]> mean(Go_t2, na.rm=T)])/length(Go_t2))*100
(length(SL_t2[SL_t2[,]> mean(SL_t2, na.rm=T)])/length(SL_t2))*100

for(i in 1:111) {
   colnames(SP_t2)[i]<- i
}

####################################################AKIIIIII

Bra_t2 = as.data.frame(Bra_t2)
Sal_t2 = as.data.frame(Sal_t2)
RJ_t2 = as.data.frame(RJ_t2)



for(i in 1:119) {
   colnames(Bra_t2)[i]<- i
}

for(i in 1:243) {
   colnames(Sal_t2)[i]<- i
}

for(i in 1:108) {
  colnames(RJ_t2)[i]<- i
}
############################################################

for(i in 1:203) {
   colnames(For_t2)[i]<- i
}

for(i in 1:234) {
   colnames(BH_t2)[i]<- i
}

for(i in 1:50) {
   colnames(Man_t2)[i]<- i
}

for(i in 1:68) {
   colnames(Cu_t2)[i]<- i
}

for(i in 1:68) {
   colnames(Re_t2)[i]<- i
}

for(i in 1:44) {
   colnames(Gu_t2)[i]<- i
}

for(i in 1:40) {
   colnames(Ca_t2)[i]<- i
}

for(i in 1:18) {
   colnames(DuqC_t2)[i]<- i
}

for(i in 1:653) {
   colnames(Te_t2)[i]<- i
}

for(i in 1:100) {
   colnames(Bel_t2)[i]<- i
}

for(i in 1:6) {
   colnames(Go_t2)[i]<- i
}

for(i in 1:38) {
   colnames(SL_t2)[i]<- i
}

for(i in 1:28) {
   colnames(SG_t2)[i]<- i
}

for(i in 1:95) {
   colnames(Mac_t2)[i]<- i
}

for(i in 1:98) {
   colnames(PA_t2)[i]<- i
}

for(i in 1:136) {
   colnames(Na_t2)[i]<- i
}

for(i in 1:98) {
   colnames(NI_t2)[i]<- i
}

for(i in 1:98) {
   colnames(CGr_t2)[i]<- i
}

for(i in 1:110) {
   colnames(SBC_t2)[i]<- i
}

for(i in 1:158) {
   colnames(JP_t2)[i]<- i
}

for(i in 1:109) {
   colnames(SA_t2)[i]<- i
}

for(i in 1:106) {
   colnames(Osa_t2)[i]<- i
}

for(i in 1:95) {
   colnames(JG_t2)[i]<- i
}

for(i in 1:84) {
   colnames(SJRP_t2)[i]<- i
}

for(i in 1:101) {
   colnames(SJC_t2)[i]<- i
}

for(i in 1:90) {
   colnames(RP_t2)[i]<- i
}

for(i in 1:90) {
   colnames(Ub_t2)[i]<- i
}

for(i in 1:143) {
   colnames(Co_t2)[i]<- i
}

for(i in 1:69) {
   colnames(So_t2)[i]<- i
}

for(i in 1:92) {
   colnames(Ar_t2)[i]<- i
}

for(i in 1:92) {
   colnames(FS_t2)[i]<- i
}

for(i in 1:99) {
   colnames(Joi_t2)[i]<- i
}

for(i in 1:89) {
   colnames(JF_t2)[i]<- i
}

for(i in 1:80) {
   colnames(Lon_t2)[i]<- i
}

for(i in 1:108) {
   colnames(Ni_t2)[i]<- i
}

for(i in 1:156) {
   colnames(Ana_t2)[i]<- i
}

for(i in 1:106) {
   colnames(BR_t2)[i]<- i
}

for(i in 1:69) {
   colnames(CGo_t2)[i]<- i
}

for(i in 1:116) {
   colnames(AGo_t2)[i]<- i
}

for(i in 1:111) {
   colnames(SJM_t2)[i]<- i
}

for(i in 1:86) {
   colnames(CS_t2)[i]<- i
}

for(i in 1:88) {
   colnames(PV_t2)[i]<- i
}

for(i in 1:108) {
   colnames(Flo_t2)[i]<- i
}

for(i in 1:111) {
   colnames(Maua_t2)[i]<- i
}

for(i in 1:59) {
   colnames(VV_t2)[i]<- i
}

for(i in 1:110) {
   colnames(S_t2)[i]<- i
}

for(i in 1:235) {
   colnames(Se_t2)[i]<- i
}

for(i in 1:119) {
   colnames(Ma_t2)[i]<- i
}

for(i in 1:128) {
   colnames(Mo_t2)[i]<- i
}

for(i in 1:109) {
   colnames(Di_t2)[i]<- i
}

for(i in 1:106) {
   colnames(Bet_t2)[i]<- i
}

for(i in 1:98) {
   colnames(Ol_t2)[i]<- i
}

for(i in 1:95) {
   colnames(Jun_t2)[i]<- i
}

for(i in 1:91) {
   colnames(Pira_t2)[i]<- i
}

for(i in 1:64) {
   colnames(MCl_t2)[i]<- i
}

for(i in 1:228) {
   colnames(Cari_t2)[i]<- i
}

for(i in 1:75) {
   colnames(CG_t2)[i]<- i
}

for(i in 1:72) {
   colnames(Se_t2)[i]<- i
}
colnames(Te_t2)

for(i in 1:38) {
   colnames(SL_t2)[i]<- i
}
colnames(SL_t2)

for(i in 1:38) {
   colnames(BH_t2)[i]<- i
}
colnames(BH_t2)


##Atualidade 
sprintf("i", CG_t2)
colnames(CG_t2)
for(i in 1:75) {
	sort(CG_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(CG_t2[5,], na.rm=T)

#######################################################################################

sprintf("i", RJ_t2)
colnames(RJ_t2)
for(i in 1:108) {
	sort(RJ_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(RJ_t2[5,], na.rm=T)

sprintf("i", Bra_t2)
colnames(Bra_t2)
for(i in 1:105) {
  sort(Bra_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Bra_t2[5,], na.rm=T)


sprintf("i", Sal_t2)
colnames(Sal_t2)
for(i in 1:102) {
  sort(Sal_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Sal_t2[5,], na.rm=T)

####################################################################################

sprintf("i", SP_t2)
colnames(SP_t2)
for(i in 1:111) {
	sort(SP_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SP_t2[5,], na.rm=T)

sprintf("i", For_t2)
colnames(For_t2)
for(i in 1:203) {
	sort(For_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(For_t2[5,], na.rm=T)

sprintf("i", BH_t2)
colnames(BH_t2)
for(i in 1:234) {
	sort(BH_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(BH_t2[5,], na.rm=T)

sprintf("i", Man_t2)
colnames(Man_t2)
for(i in 1:50) {
	sort(Man_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Man_t2[5,], na.rm=T)

sprintf("i", Cu_t2)
colnames(Cu_t2)
for(i in 1:68) {
	sort(Cu_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Cu_t2[5,], na.rm=T)

sprintf("i", Re_t2)
colnames(Re_t2)
for(i in 1:68) {
	sort(Re_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Re_t2[5,], na.rm=T)

sprintf("i", Gu_t2)
colnames(Gu_t2)
for(i in 1:44) {
	sort(Gu_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Gu_t2[5,], na.rm=T)

sprintf("i", Ca_t2)
colnames(Ca_t2)
for(i in 1:40) {
	sort(Ca_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ca_t2[5,], na.rm=T)

sprintf("i", DuqC_t2)
colnames(DuqC_t2)
for(i in 1:18) {
	sort(DuqC_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(DuqC_t2[5,], na.rm=T)

sprintf("i", Te_t2)
colnames(Te_t2)
for(i in 1:653) {
	sort(Te_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Te_t2[5,], na.rm=T)

sprintf("i", Bel_t2)
colnames(Bel_t2)
for(i in 1:100) {
	sort(Bel_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Bel_t2[5,], na.rm=T)

sprintf("i", Go_t2)
colnames(Go_t2)
for(i in 1:6) {
	sort(Go_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Go_t2[5,], na.rm=T)

sprintf("i", SL_t2)
colnames(SL_t2)
for(i in 1:38) {
	sort(SL_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SL_t2[5,], na.rm=T)

sprintf("i", SG_t2)
colnames(SG_t2)
for(i in 1:28) {
	sort(SG_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SG_t2[5,], na.rm=T)

sprintf("i", Mac_t2)
colnames(Mac_t2)
for(i in 1:95) {
	sort(Mac_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Mac_t2[5,], na.rm=T)

sprintf("i", PA_t2)
colnames(PA_t2)
for(i in 1:98) {
	sort(PA_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(PA_t2[5,], na.rm=T)

sprintf("i", Na_t2)
colnames(Na_t2)
for(i in 1:136) {
	sort(Na_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Na_t2[5,], na.rm=T)

sprintf("i", NI_t2)
colnames(NI_t2)
for(i in 1:98) {
	sort(NI_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(NI_t2[5,], na.rm=T)

sprintf("i", CGr_t2)
colnames(CGr_t2)
for(i in 1:98) {
	sort(CGr_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(CGr_t2[5,], na.rm=T)

sprintf("i", SBC_t2)
colnames(SBC_t2)
for(i in 1:110) {
	sort(SBC_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SBC_t2[5,], na.rm=T)

sprintf("i", JP_t2)
colnames(JP_t2)
for(i in 1:158) {
	sort(JP_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(JP_t2[5,], na.rm=T)

sprintf("i", SA_t2)
colnames(SA_t2)
for(i in 1:109) {
	sort(SA_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SA_t2[5,], na.rm=T)

sprintf("i", Osa_t2)
colnames(Osa_t2)
for(i in 1:106) {
	sort(Osa_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Osa_t2[5,], na.rm=T)

sprintf("i", JG_t2)
colnames(JG_t2)
for(i in 1:95) {
	sort(JG_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(JG_t2[5,], na.rm=T)

sprintf("i", SJRP_t2)
colnames(SJRP_t2)
for(i in 1:84) {
	sort(SJRP_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SJRP_t2[5,], na.rm=T)

sprintf("i", SJC_t2)
colnames(SJC_t2)
for(i in 1:101) {
	sort(SJC_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SJC_t2[5,], na.rm=T)

sprintf("i", RP_t2)
colnames(RP_t2)
for(i in 1:90) {
	sort(RP_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(RP_t2[5,], na.rm=T)

sprintf("i", Ub_t2)
colnames(Ub_t2)
for(i in 1:90) {
	sort(Ub_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ub_t2[5,], na.rm=T)

sprintf("i", Co_t2)
colnames(Co_t2)
for(i in 1:143) {
	sort(Co_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Co_t2[5,], na.rm=T)

sprintf("i", So_t2)
colnames(So_t2)
for(i in 1:69) {
	sort(So_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(So_t2[5,], na.rm=T)

sprintf("i", Ar_t2)
colnames(Ar_t2)
for(i in 1:92) {
	sort(Ar_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ar_t2[5,], na.rm=T)

sprintf("i", FS_t2)
colnames(FS_t2)
for(i in 1:92) {
	sort(FS_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(FS_t2[5,], na.rm=T)

sprintf("i", Joi_t2)
colnames(Joi_t2)
for(i in 1:99) {
	sort(Joi_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Joi_t2[5,], na.rm=T)

sprintf("i", JF_t2)
colnames(JF_t2)
for(i in 1:89) {
	sort(JF_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(JF_t2[5,], na.rm=T)

sprintf("i", Lon_t2)
colnames(Lon_t2)
for(i in 1:80) {
	sort(Lon_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Lon_t2[5,], na.rm=T)

sprintf("i", Ni_t2)
colnames(Ni_t2)
for(i in 1:108) {
	sort(Ni_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ni_t2[5,], na.rm=T)

sprintf("i", Ana_t2)
colnames(Ana_t2)
for(i in 1:156) {
	sort(Ana_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ana_t2[5,], na.rm=T)

sprintf("i", BR_t2)
colnames(BR_t2)
for(i in 1:106) {
	sort(BR_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(BR_t2[5,], na.rm=T)

sprintf("i", CGo_t2)
colnames(CGo_t2)
for(i in 1:69) {
	sort(CGo_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(CGo_t2[5,], na.rm=T)

sprintf("i", AGo_t2)
colnames(AGo_t2)
for(i in 1:116) {
	sort(AGo_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(AGo_t2[5,], na.rm=T)

sprintf("i", SJM_t2)
colnames(SJM_t2)
for(i in 1:111) {
	sort(SJM_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SJM_t2[5,], na.rm=T)

sprintf("i", CS_t2)
colnames(CS_t2)
for(i in 1:86) {
	sort(CS_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(CS_t2[5,], na.rm=T)

sprintf("i", PV_t2)
colnames(PV_t2)
for(i in 1:88) {
	sort(PV_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(PV_t2[5,], na.rm=T)

sprintf("i", Flo_t2)
colnames(Flo_t2)
for(i in 1:108) {
	sort(Flo_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Flo_t2[5,], na.rm=T)

sprintf("i", Maua_t2)
colnames(Maua_t2)
for(i in 1:111) {
	sort(Maua_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Maua_t2[5,], na.rm=T)

sprintf("i", VV_t2)
colnames(VV_t2)
for(i in 1:59) {
	sort(VV_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(VV_t2[5,], na.rm=T)

sprintf("i", S_t2)
colnames(S_t2)
for(i in 1:110) {
	sort(S_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(S_t2[5,], na.rm=T)

sprintf("i", Se_t2)
colnames(Se_t2)
for(i in 1:235) {
	sort(Se_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Se_t2[5,], na.rm=T)

sprintf("i", Ma_t2)
colnames(Ma_t2)
for(i in 1:119) {
	sort(Ma_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ma_t2[5,], na.rm=T)

sprintf("i", Mo_t2)
colnames(Mo_t2)
for(i in 1:128) {
	sort(Mo_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Mo_t2[5,], na.rm=T)

sprintf("i", Di_t2)
colnames(Di_t2)
for(i in 1:109) {
	sort(Di_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Di_t2[5,], na.rm=T)

sprintf("i", Bet_t2)
colnames(Bet_t2)
for(i in 1:106) {
	sort(Bet_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Bet_t2[5,], na.rm=T)

sprintf("i", Ol_t2)
colnames(Ol_t2)
for(i in 1:98) {
	sort(Ol_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Ol_t2[5,], na.rm=T)

sprintf("i", Jun_t2)
colnames(Jun_t2)
for(i in 1:95) {
	sort(Jun_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Jun_t2[5,], na.rm=T)

sprintf("i", Pira_t2)
colnames(Pira_t2)
for(i in 1:91) {
	sort(Pira_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Pira_t2[5,], na.rm=T)

sprintf("i", MCl_t2)
colnames(MCl_t2)
for(i in 1:64) {
	sort(MCl_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(MCl_t2[5,], na.rm=T)

sprintf("i", Cari_t2)
colnames(Cari_t2)
for(i in 1:228) {
	sort(Cari_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Cari_t2[5,], na.rm=T)


sprintf("i", Se_t2)
colnames(Se_t2)
for(i in 1:72) {
	sort(Se_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(Se_t2[5,], na.rm=T)

sprintf("i", SL_t2)
colnames(SL_t2)
for(i in 1:38) {
	sort(SL_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(SL_t2[5,], na.rm=T)

sprintf("i", For_t2)
colnames(For_t2)
for(i in 1:38) {
	sort(For_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(For_t2[5,], na.rm=T)

sprintf("i", BH_t2)
colnames(BH_t2)
for(i in 1:38) {
	sort(BH_t2[,i], decreasing = TRUE, na.last = NA)
}
mean(BH_t2[5,], na.rm=T)

########################criando os dados do InfoATT
##########quando conferir se o que fiz deu certo, não precisarei mais delimitar as coordenadas, ok?

library(xlsReadWrite)


mydata =  data.frame(V4 = geral_RJ2$V4[geral_RJ2$V4> -23.2 & geral_RJ2$V4< -22.5 & geral_RJ2$V5> -43.8 & geral_RJ2$V5< -43],V5 =geral_RJ2$V5[geral_RJ2$V4> -23.2 & geral_RJ2$V4< -22.5 & geral_RJ2$V5> -43.8 & geral_RJ2$V5< -43])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqRio_de_Janeiro.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta3/infoATT/arqRio_de_Janeiro.csv")

mydata =  data.frame(V4 = geral_Brasilia2$V4[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2],V5 =geral_Brasilia2$V5[geral_Brasilia2$V4> -16.2 & geral_Brasilia2$V5< -15.4 & geral_Brasilia2$V5> -48.4 & geral_Brasilia2$V5< -47.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBrasilia.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta3/infoATT/arqBrasilia.csv")

fix(geral_Salvador2)
mydata =  data.frame(V4 = geral_Salvador2$V4[geral_Salvador2$V4> -13.1 & geral_Salvador2$V4< -12.7 & geral_Salvador2$V5>-38.3  & geral_Salvador2$V5< -35.6],V5 = geral_Salvador2$V5[geral_Salvador2$V4> -13.1 & geral_Salvador2$V4< -12.7 & geral_Salvador2$V5>-38.3  & geral_Salvador2$V5< -35.6])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSalvador.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta3/infoATT/arqSalvador.csv")





mydata =  data.frame(V4 = geral_CG2$V4[geral_CG2$V4> -7.4 & geral_CG2$V4< -7.1 & geral_CG2$V5< -35.6  & geral_CG2$V5> -36.2],V5 = geral_CG2$V5[geral_CG2$V4> -7.4 & geral_CG2$V4< -7.1 & geral_CG2$V5< -35.6  & geral_CG2$V5> -36.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCG.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCG.csv")

mydata =  data.frame(V4 = geral_SP2$V4[geral_SP2$V4< -23.3 & geral_SP2$V4> -24.1 & geral_SP2$V5< -46.2   & geral_SP2$V5> -46.9],V5 = geral_SP2$V5[geral_SP2$V4< -23.3 & geral_SP2$V4> -24.1 & geral_SP2$V5< -46.2   & geral_SP2$V5> -46.9])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Paulo.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Paulo.csv")

mydata =  data.frame(V4 = geral_Fortaleza2$V4[geral_Fortaleza2$V4< -3.65 & geral_Fortaleza2$V4> -3.95 & geral_Fortaleza2$V5< -38.4   & geral_Fortaleza2$V5> -38.7],V5 = geral_Fortaleza2$V5[geral_Fortaleza2$V4< -3.65 & geral_Fortaleza2$V4> -3.95 & geral_Fortaleza2$V5< -38.4   & geral_Fortaleza2$V5> -38.7])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFortaleza.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFortaleza.csv")

mydata =  data.frame(V4 = geral_BH2$V4[geral_BH2$V4< -19.75 & geral_BH2$V4> -20.10 & geral_BH2$V5< -43.8  & geral_BH2$V5> -44.1],V5 = geral_BH2$V5[geral_BH2$V4< -19.75 & geral_BH2$V4> -20.10 & geral_BH2$V5< -43.8  & geral_BH2$V5> -44.1])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelo_Horizonte.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelo_Horizonte.csv")

mydata =  data.frame(V4 = geral_Manaus2$V4[geral_Manaus2$V4< -1.8 & geral_Manaus2$V4> -3.2 & geral_Manaus2$V5< -59  & geral_Manaus2$V5> -61],V5 = geral_Manaus2$V5[geral_Manaus2$V4< -1.8 & geral_Manaus2$V4> -3.2 & geral_Manaus2$V5< -59  & geral_Manaus2$V5> -61])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqManaus.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqManaus.csv")

mydata =  data.frame(V4 = geral_Curitiba2$V4[geral_Curitiba2$V4< -25.3 & geral_Curitiba2$V4> -25.65 & geral_Curitiba2$V5< -49.1 & geral_Curitiba2$V5> -49.4],V5 = geral_Curitiba2$V5[geral_Curitiba2$V4< -25.3 & geral_Curitiba2$V4> -25.65 & geral_Curitiba2$V5< -49.1 & geral_Curitiba2$V5> -49.4])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCuritiba.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCuritiba.csv")

mydata =  data.frame(V4 = geral_Recife2$V4[geral_Recife2$V4< -7.9 & geral_Recife2$V4> -8.2 & geral_Recife2$V5< -34.8 & geral_Recife2$V5> -35.1],V5 = geral_Recife2$V5[geral_Recife2$V4< -7.9 & geral_Recife2$V4> -8.2 & geral_Recife2$V5< -34.8 & geral_Recife2$V5> -35.1])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqRecife.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqRecife.csv")

mydata =  data.frame(V4 = geral_Guarulhos2$V4[geral_Guarulhos2$V4< -23.25 & geral_Guarulhos2$V4> -23.55 & geral_Guarulhos2$V5< -46.3 & geral_Guarulhos2$V5> -46.6],V5 = geral_Guarulhos2$V5[geral_Guarulhos2$V4< -23.25 & geral_Guarulhos2$V4> -23.55 & geral_Guarulhos2$V5< -46.3 & geral_Guarulhos2$V5> -46.6])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqGuarulhos.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqGuarulhos.csv")

mydata =  data.frame(V4 = geral_Campinas2$V4[geral_Campinas2$V4< -22.7 & geral_Campinas2$V4> -23 & geral_Campinas2$V5< -46.8 & geral_Campinas2$V5> -47.3],V5 = geral_Campinas2$V5[geral_Campinas2$V4< -22.7 & geral_Campinas2$V4> -23 & geral_Campinas2$V5< -46.8 & geral_Campinas2$V5> -47.3])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampinas.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampinas.csv")

mydata =  data.frame(V4 = geral_DuqC2$V4[geral_DuqC2$V4< -22.45 & geral_DuqC2$V4> -22.8 & geral_DuqC2$V5< -43.1 & geral_DuqC2$V5> -43.5],V5 = geral_DuqC2$V5[geral_DuqC2$V4< -22.45 & geral_DuqC2$V4> -22.8 & geral_DuqC2$V5< -43.1 & geral_DuqC2$V5> -43.5])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqDuque_de_Caxias.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqDuque_de_Caxias.csv")

mydata =  data.frame(V4 = geral_Teresi2$V4[geral_Teresi2$V4< -4.8 & geral_Teresi2$V4> -5.6 & geral_Teresi2$V5< -42.4 & geral_Teresi2$V5> -43],V5 = geral_Teresi2$V5[geral_Teresi2$V4< -4.8 & geral_Teresi2$V4> -5.6 & geral_Teresi2$V5< -42.4 & geral_Teresi2$V5> -43])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqTeresina.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqTeresina.csv")

mydata =  data.frame(V4 = geral_Bel2$V4[geral_Bel2$V4< -1 & geral_Bel2$V4> -1.5 & geral_Bel2$V5< -48.2 & geral_Bel2$V5> -48.7],V5 = geral_Bel2$V5[geral_Bel2$V4< -1 & geral_Bel2$V4> -1.5 & geral_Bel2$V5< -48.2 & geral_Bel2$V5> -48.7])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelem.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelem.csv")

mydata =  data.frame(V4 = geral_Goiania2$V4[geral_Goiania2$V4< -16.4 & geral_Goiania2$V4> -16.9 & geral_Goiania2$V5< -49 & geral_Goiania2$V5> -49.5],V5 = geral_Goiania2$V5[geral_Goiania2$V4< -16.4 & geral_Goiania2$V4> -16.9 & geral_Goiania2$V5< -49 & geral_Goiania2$V5> -49.5])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqGoiania.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqGoiania.csv")

mydata =  data.frame(V4 = geral_SaoLu2$V4[geral_SaoLu2$V4< -2.40 & geral_SaoLu2$V4> -2.80 & geral_SaoLu2$V5< -44.1 & geral_SaoLu2$V5> -44.5],V5 = geral_SaoLu2$V5[geral_SaoLu2$V4< -2.40 & geral_SaoLu2$V4> -2.80 & geral_SaoLu2$V5< -44.1 & geral_SaoLu2$V5> -44.5])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Luis.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Luis.csv")

mydata =  data.frame(V4 = geral_SaoGo2$V4[geral_SaoGo2$V4< -22.7 & geral_SaoGo2$V4> -22.95 & geral_SaoGo2$V5< -42.85 & geral_SaoGo2$V5> -43.15],V5 = geral_SaoGo2$V5[geral_SaoGo2$V4< -22.7 & geral_SaoGo2$V4> -22.95 & geral_SaoGo2$V5< -42.85 & geral_SaoGo2$V5> -43.15])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Goncalo.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Goncalo.csv")

mydata =  data.frame(V4 = geral_Maceio2$V4[geral_Maceio2$V4< -9.35 & geral_Maceio2$V4> -9.75 & geral_Maceio2$V5< -35.5 & geral_Maceio2$V5> -35.9],V5 = geral_Maceio2$V5[geral_Maceio2$V4< -9.35 & geral_Maceio2$V4> -9.75 & geral_Maceio2$V5< -35.5 & geral_Maceio2$V5> -35.9])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMaceio.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMaceio.csv")

fix(geral_PorAle2)
mydata =  data.frame(V4 = geral_PorAle2$V4[geral_PorAle2$V4< -29.4 & geral_PorAle2$V4> -30.45 & geral_PorAle2$V5< -50.5 & geral_PorAle2$V5> -52],V5 = geral_PorAle2$V5[geral_PorAle2$V4< -29.4 & geral_PorAle2$V4> -30.45 & geral_PorAle2$V5< -50.5 & geral_PorAle2$V5> -52])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqPorto_Alegre.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqPorto_Alegre.csv")

mydata =  data.frame(V4 = geral_Nat2$V4[geral_Nat2$V4< -5.7 & geral_Nat2$V4> -5.9 & geral_Nat2$V5< -35.15 & geral_Nat2$V5> -35.3],V5 = geral_Nat2$V5[geral_Nat2$V4< -5.7 & geral_Nat2$V4> -5.9 & geral_Nat2$V5< -35.15 & geral_Nat2$V5> -35.3])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNatal.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNatal.csv")

fix(geral_NovIgua2)
mydata =  data.frame(V4 = geral_NovIgua2$V4[geral_NovIgua2$V4< -22.5 & geral_NovIgua2$V4> -22.9 & geral_NovIgua2$V5< -43.3 & geral_NovIgua2$V5> -43.8],V5 = geral_NovIgua2$V5[geral_NovIgua2$V4< -22.5 & geral_NovIgua2$V4> -22.9 & geral_NovIgua2$V5< -43.3 & geral_NovIgua2$V5> -43.8])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNova_Iguacu.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNova_Iguacu.csv")

mydata =  data.frame(V4 = geral_CampoGr2$V4[geral_CampoGr2$V4< -20 & geral_CampoGr2$V4> -21.75 & geral_CampoGr2$V5< -53.5 & geral_CampoGr2$V5> -55],V5 = geral_CampoGr2$V5[geral_CampoGr2$V4< -20 & geral_CampoGr2$V4> -21.75 & geral_CampoGr2$V5< -53.5 & geral_CampoGr2$V5> -55])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampo_Grande.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampo_Grande.csv")

mydata =  data.frame(V4 = geral_SBC2$V4[geral_SBC2$V4< -23.65 & geral_SBC2$V4> -23.95 & geral_SBC2$V5< -46.4 & geral_SBC2$V5> -46.7],V5 = geral_SBC2$V5[geral_SBC2$V4< -23.65 & geral_SBC2$V4> -23.95 & geral_SBC2$V5< -46.4 & geral_SBC2$V5> -46.7])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Bernardo_do_Campo.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Bernardo_do_Campo.csv")

mydata =  data.frame(V4 = geral_JP2$V4[geral_JP2$V4< -7.05 & geral_JP2$V4> -7.25 & geral_JP2$V5< -34.79 & geral_JP2$V5> -35],V5 = geral_JP2$V5[geral_JP2$V4< -7.05 & geral_JP2$V4> -7.25 & geral_JP2$V5< -34.79 & geral_JP2$V5> -35])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJoao_Pessoa.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJoao_Pessoa.csv")

mydata =  data.frame(V4 = geral_SA2$V4[geral_SA2$V4< -23.6 & geral_SA2$V4> -23.85 & geral_SA2$V5< -46.25 & geral_SA2$V5> -46.6],V5 = geral_SA2$V5[geral_SA2$V4< -23.6 & geral_SA2$V4> -23.85 & geral_SA2$V5< -46.25 & geral_SA2$V5> -46.6])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSanto_Andre.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSanto_Andre.csv")

mydata =  data.frame(V4 = geral_Osasco2$V4[geral_Osasco2$V4< -23.45 & geral_Osasco2$V4> -23.62 & geral_Osasco2$V5< -46.73 & geral_Osasco2$V5> -46.85],V5 = geral_Osasco2$V5[geral_Osasco2$V4< -23.45 & geral_Osasco2$V4> -23.62 & geral_Osasco2$V5< -46.73 & geral_Osasco2$V5> -46.85])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqOsasco.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqOsasco.csv")

mydata =  data.frame(V4 = geral_JG2$V4[geral_JG2$V4< -8.05 & geral_JG2$V4> -8.25 & geral_JG2$V5< -34.9 & geral_JG2$V5> -35.1],V5 = geral_JG2$V5[geral_JG2$V4< -8.05 & geral_JG2$V4> -8.25 & geral_JG2$V5< -34.9 & geral_JG2$V5> -35.1])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJaboatao_dos_Guararapes.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJaboatao_dos_Guararapes.csv")

mydata =  data.frame(V4 = geral_SJC2$V4[geral_SJC2$V4< -22.8 & geral_SJC2$V4> -23.3 & geral_SJC2$V5< -45.7 & geral_SJC2$V5> -46.2],V5 = geral_SJC2$V5[geral_SJC2$V4< -22.8 & geral_SJC2$V4> -23.3 & geral_SJC2$V5< -45.7 & geral_SJC2$V5> -46.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Jose_dos_Campos.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Jose_dos_Campos.csv")

mydata =  data.frame(V4 = geral_RB2$V4[geral_RB2$V4< -21.05 & geral_RB2$V4> -21.37 & geral_RB2$V5< -47.6 & geral_RB2$V5> -48],V5 = geral_RB2$V5[geral_RB2$V4< -21.05 & geral_RB2$V4> -21.37 & geral_RB2$V5< -47.6 & geral_RB2$V5> -48])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqRibeirao_Preto.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqRibeirao_Preto.csv")

mydata =  data.frame(V4 = geral_Uberlan2$V4[geral_Uberlan2$V4< -18.6 & geral_Uberlan2$V4> -19.4 & geral_Uberlan2$V5< -47.8 & geral_Uberlan2$V5> -50],V5 = geral_Uberlan2$V5[geral_Uberlan2$V4< -18.6 & geral_Uberlan2$V4> -19.4 & geral_Uberlan2$V5< -47.8 & geral_Uberlan2$V5> -50])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqUberlandia.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqUberlandia.csv")

mydata =  data.frame(V4 = geral_Contagem2$V4[geral_Contagem2$V4< -19.8 & geral_Contagem2$V4> -20 & geral_Contagem2$V5< -44 & geral_Contagem2$V5> -44.2],V5 = geral_Contagem2$V5[geral_Contagem2$V4< -19.8 & geral_Contagem2$V4> -20 & geral_Contagem2$V5< -44 & geral_Contagem2$V5> -44.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqContagem.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqContagem.csv")

mydata =  data.frame(V4 = geral_Sorocaba2$V4[geral_Sorocaba2$V4< -23.35 & geral_Sorocaba2$V4> -23.6 & geral_Sorocaba2$V5< -47.3 & geral_Sorocaba2$V5> -47.6],V5 = geral_Sorocaba2$V5[geral_Sorocaba2$V4< -23.35 & geral_Sorocaba2$V4> -23.6 & geral_Sorocaba2$V5< -47.3 & geral_Sorocaba2$V5> -47.6])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSorocaba.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSorocaba.csv")

mydata =  data.frame(V4 = geral_Aracaju2$V4[geral_Aracaju2$V4< -10.85 & geral_Aracaju2$V4> -11.2 & geral_Aracaju2$V5< -37 & geral_Aracaju2$V5> -37.2],V5 = geral_Aracaju2$V5[geral_Aracaju2$V4< -10.85 & geral_Aracaju2$V4> -11.2 & geral_Aracaju2$V5< -37 & geral_Aracaju2$V5> -37.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAracaju.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAracaju.csv")

mydata =  data.frame(V4 = geral_FS2$V4[geral_FS2$V4< -11.9 & geral_FS2$V4> -12.41 & geral_FS2$V5< -38.8 & geral_FS2$V5> -39.2],V5 = geral_FS2$V5[geral_FS2$V4< -11.9 & geral_FS2$V4> -12.41 & geral_FS2$V5< -38.8 & geral_FS2$V5> -39.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFeira_de_Santana.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFeira_de_Santana.csv")

mydata =  data.frame(V4 = geral_Join2$V4[geral_Join2$V4< -26 & geral_Join2$V4> -26.45 & geral_Join2$V5< -48.7 & geral_Join2$V5> -43.7],V5 = geral_Join2$V5[geral_Join2$V4< -26 & geral_Join2$V4> -26.45 & geral_Join2$V5< -48.7 & geral_Join2$V5> -43.7])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJoinville.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJoinville.csv")

mydata =  data.frame(V4 = geral_JuizF2$V4[geral_JuizF2$V4< -21.5 & geral_JuizF2$V4> -22 & geral_JuizF2$V5< -43.1 & geral_JuizF2$V5> -49.2],V5 = geral_JuizF2$V5[geral_JuizF2$V4< -21.5 & geral_JuizF2$V4> -22 & geral_JuizF2$V5< -43.1 & geral_JuizF2$V5> -49.2])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJuiz_de_Fora.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJuiz_de_Fora.csv")

mydata =  data.frame(V4 = geral_Londri2$V4[geral_Londri2$V4< -23.1 & geral_Londri2$V4> -23.8 & geral_Londri2$V5< -50.8 & geral_Londri2$V5> -51.4],V5 = geral_Londri2$V5[geral_Londri2$V4< -23.1 & geral_Londri2$V4> -23.8 & geral_Londri2$V5< -50.8 & geral_Londri2$V5> -51.4])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqLondrina.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqLondrina.csv")

mydata =  data.frame(V4 = geral_Nit2$V4[geral_Nit2$V4< -22.85 & geral_Nit2$V4> -23 & geral_Nit2$V5< -42.95 & geral_Nit2$V5> -43.15],V5 = geral_Nit2$V5[geral_Nit2$V4< -22.85 & geral_Nit2$V4> -23 & geral_Nit2$V5< -42.95 & geral_Nit2$V5> -43.15])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNiteroi.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqNiteroi.csv")

mydata =  data.frame(V4 = geral_Anan2$V4[geral_Anan2$V4< -1.2 & geral_Anan2$V4> -1.46 & geral_Anan2$V5< -48.3 & geral_Anan2$V5> -48.45],V5 = geral_Anan2$V5[geral_Anan2$V4< -1.2 & geral_Anan2$V4> -1.46 & geral_Anan2$V5< -48.3 & geral_Anan2$V5> -48.45])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAnanindeua.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAnanindeua.csv")

mydata =  data.frame(V4 = geral_Belfor2$V4[geral_Belfor2$V4< -22.68 & geral_Belfor2$V4> -22.78 & geral_Belfor2$V5< -43.32 & geral_Belfor2$V5> -43.44],V5 = geral_Belfor2$V5[geral_Belfor2$V4< -22.68 & geral_Belfor2$V4> -22.78 & geral_Belfor2$V5< -43.32 & geral_Belfor2$V5> -43.44])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelford_Roxo.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBelford_Roxo.csv")

mydata =  data.frame(V4 = geral_CampoGoy2$V4[geral_CampoGoy2$V4< -21.2 & geral_CampoGoy2$V4> -22.1 & geral_CampoGoy2$V5< -40.9 & geral_CampoGoy2$V5> -42],V5 = geral_CampoGoy2$V5[geral_CampoGoy2$V4< -21.2 & geral_CampoGoy2$V4> -22.1 & geral_CampoGoy2$V5< -40.9 & geral_CampoGoy2$V5> -42])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampo_dos_Goytacazes.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCampo_dos_Goytacazes.csv")

mydata =  data.frame(V4 = geral_AparecGoi2$V4[geral_AparecGoi2$V4< -16.7 & geral_AparecGoi2$V4> -16.9 & geral_AparecGoi2$V5< -49.14 & geral_AparecGoi2$V5> -49.4],V5 = geral_AparecGoi2$V5[geral_AparecGoi2$V4< -16.7 & geral_AparecGoi2$V4> -16.9 & geral_AparecGoi2$V5< -49.14 & geral_AparecGoi2$V5> -49.4])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAparecida_de_Goiania.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqAparecida_de_Goiania.csv")

mydata =  data.frame(V4 = geral_SJM2$V4[geral_SJM2$V4< -22.75 & geral_SJM2$V4> -22.82 & geral_SJM2$V5< -43.23 & geral_SJM2$V5> -43.42],V5 = geral_SJM2$V5[geral_SJM2$V4< -22.75 & geral_SJM2$V4> -22.82 & geral_SJM2$V5< -43.23 & geral_SJM2$V5> -43.42])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Joao_de_Meriti.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSao_Joao_de_Meriti.csv")

mydata =  data.frame(V4 = geral_PV2$V4[geral_PV2$V4< -8 & geral_PV2$V4> -10 & geral_PV2$V5< -62 & geral_PV2$V5> -67],V5 = geral_PV2$V5[geral_PV2$V4< -8 & geral_PV2$V4> -10 & geral_PV2$V5< -62 & geral_PV2$V5> -67])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqPorto_Velho.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqPorto_Velho.csv")

mydata =  data.frame(V4 = geral_Flo2$V4[geral_Flo2$V4< -27.3 & geral_Flo2$V4> -27.9 & geral_Flo2$V5< -48.3 & geral_Flo2$V5> -48.7],V5 = geral_Flo2$V5[geral_Flo2$V4< -27.3 & geral_Flo2$V4> -27.9 & geral_Flo2$V5< -48.3 & geral_Flo2$V5> -48.7])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFlorianopolis.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqFlorianopolis.csv")

mydata =  data.frame(V4 = geral_Maua2$V4[geral_Maua2$V4< -23.6 & geral_Maua2$V4> -23.72 & geral_Maua2$V5< -46.35 & geral_Maua2$V5> -46.56],V5 = geral_Maua2$V5[geral_Maua2$V4< -23.6 & geral_Maua2$V4> -23.72 & geral_Maua2$V5< -46.35 & geral_Maua2$V5> -46.56])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMaua.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMaua.csv")

mydata =  data.frame(V4 = geral_CaxiasSul2$V4[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81],V5 = geral_CaxiasSul2$V5[geral_CaxiasSul2$V4< -28.8 & geral_CaxiasSul2$V4> -29.41 & geral_CaxiasSul2$V5< -50.8 & geral_CaxiasSul2$V5> -51.81])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCaxias_do_Sul.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCaxias_do_Sul.csv")

mydata =  data.frame(V4 = geral_VV2$V4[geral_VV2$V4< -20.3 & geral_VV2$V4> -20.55 & geral_VV2$V5< -40.25 & geral_VV2$V5> -40.5],V5 = geral_VV2$V5[geral_VV2$V4< -20.3 & geral_VV2$V4> -20.55 & geral_VV2$V5< -40.25 & geral_VV2$V5> -40.5])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqVila_Velha.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqVila_Velha.csv")

mydata =  data.frame(V4 = geral_Santos2$V4[geral_Santos2$V4< -23.75 & geral_Santos2$V4> -24 & geral_Santos2$V5< -46.1 & geral_Santos2$V5> -46.45],V5 = geral_Santos2$V5[geral_Santos2$V4< -23.75 & geral_Santos2$V4> -24 & geral_Santos2$V5< -46.1 & geral_Santos2$V5> -46.45])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSantos.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSantos.csv")

mydata =  data.frame(V4 = geral_Serra2$V4[geral_Serra2$V4< -20 & geral_Serra2$V4> -20.25 & geral_Serra2$V5< -40.15 & geral_Serra2$V5> -40.45],V5 = geral_Serra2$V5[geral_Serra2$V4< -20 & geral_Serra2$V4> -20.25 & geral_Serra2$V5< -40.15 & geral_Serra2$V5> -40.45])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSerra.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqSerra.csv")

mydata =  data.frame(V4 = geral_Macapa2$V4[geral_Macapa2$V4< 1.2 & geral_Macapa2$V4> -0.90 & geral_Macapa2$V5< -49.25 & geral_Macapa2$V5> -51.5],V5 = geral_Macapa2$V5[geral_Macapa2$V4< 1.2 & geral_Macapa2$V4> -0.90 & geral_Macapa2$V5< -49.25 & geral_Macapa2$V5> -51.5])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMacapa.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMacapa.csv")

mydata =  data.frame(V4 = geral_Mogi2$V4[geral_Mogi2$V4< -23.35 & geral_Mogi2$V4> -23.75 & geral_Mogi2$V5< -46 & geral_Mogi2$V5> -46.4],V5 = geral_Mogi2$V5[geral_Mogi2$V4< -23.35 & geral_Mogi2$V4> -23.75 & geral_Mogi2$V5< -46 & geral_Mogi2$V5> -46.4])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMogi_das_Cruzes.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMogi_das_Cruzes.csv")

mydata =  data.frame(V4 = geral_Diadema2$V4[geral_Diadema2$V4< -23.66 & geral_Diadema2$V4> -23.74 & geral_Diadema2$V5< -46.56 & geral_Diadema2$V5> -46.66],V5 = geral_Diadema2$V5[geral_Diadema2$V4< -23.66 & geral_Diadema2$V4> -23.74 & geral_Diadema2$V5< -46.56 & geral_Diadema2$V5> -46.66])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqDiadema.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqDiadema.csv")

mydata =  data.frame(V4 = geral_Betim2$V4[geral_Betim2$V4< -19.82 & geral_Betim2$V4> -20.05 & geral_Betim2$V5< -44.05 & geral_Betim2$V5> -44.35],V5 = geral_Betim2$V5[geral_Betim2$V4< -19.82 & geral_Betim2$V4> -20.05 & geral_Betim2$V5< -44.05 & geral_Betim2$V5> -44.35])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBetim.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqBetim.csv")

#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqOlinda.xls")
mydata =  data.frame(V4 = geral_Olinda2$V4[geral_Olinda2$V4< -7.94 & geral_Olinda2$V4> -8.04 & geral_Olinda2$V5< -34.82 & geral_Olinda2$V5> -34.92],V5 = geral_Olinda2$V5[geral_Olinda2$V4< -7.94 & geral_Olinda2$V4> -8.04 & geral_Olinda2$V5< -34.82 & geral_Olinda2$V5> -34.92])
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqOlinda.csv")

mydata =  data.frame(V4 = geral_Jundiai2$V4[geral_Jundiai2$V4< -23.05 & geral_Jundiai2$V4> -23.35 & geral_Jundiai2$V5< -46.75 & geral_Jundiai2$V5> -47.05],V5 = geral_Jundiai2$V5[geral_Jundiai2$V4< -23.05 & geral_Jundiai2$V4> -23.35 & geral_Jundiai2$V5< -46.75 & geral_Jundiai2$V5> -47.05])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJundiai.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJundiai.csv")

mydata =  data.frame(V4 = geral_Pira2$V4[geral_Pira2$V4< -22.5 & geral_Pira2$V4> -22.9 & geral_Pira2$V5< -47.5 & geral_Pira2$V5> -48.1],V5 = geral_Pira2$V5[geral_Pira2$V4< -22.5 & geral_Pira2$V4> -22.9 & geral_Pira2$V5< -47.5 & geral_Pira2$V5> -48.1])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJundiai.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqPiracicaba.csv")

mydata =  data.frame(V4 = geral_MCl2$V4[geral_MCl2$V4< -16.1 & geral_MCl2$V4> -17.9 & geral_MCl2$V5< -43.6 & geral_MCl2$V5> -44.4],V5 = geral_MCl2$V5[geral_MCl2$V4< -16.1 & geral_MCl2$V4> -17.9 & geral_MCl2$V5< -43.6 & geral_MCl2$V5> -44.4])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJundiai.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqMontes_Claros.csv")

mydata =  data.frame(V4 = geral_Cari2$V4[geral_Cari2$V4< -20.2 & geral_Cari2$V4> -20.4 & geral_Cari2$V5< -40.35 & geral_Cari2$V5> -40.6],V5 = geral_Cari2$V5[geral_Cari2$V4< -20.2 & geral_Cari2$V4> -20.4 & geral_Cari2$V5< -40.35 & geral_Cari2$V5> -40.6])
#write.xls(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqJundiai.xls")
write.table(mydata, "C:/wamp/www/coletas/coleta1/infoATT/arqCariacica.csv")