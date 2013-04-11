A pasta src contém 3 pastas:

1- coleta-byAline
    Scripts em R e PHP utilizado para realizar a coleta dos dados do Foursquare e Twitter, e para o cálculo das métricas utilizadas.
2- nova-coleta
    Scripts em R que cálcula as métricas utilizadas. Implementado pelo grupo FoursquareBR.
3- processing
    Todo o ambiente de desenvolvimento usado para criar o site. No caso, tudo foi feito no processing. Tudo está dividido em 4 partes.
	3.1- SitePrimeiraPag: Projeto responsável pela criação da página inicial
	3.2- Main: Projeto responsável pela criação da pagina que responde a primeira pergunta.
	3.3- GraficoDeLinhasInfluencias: Projeto responsável pela criação da página que responde a segunda pergunta.
	3.4- web-export: contém as versões pra web(javascript) de todos os projetos 3.1,3.2 e 3.3. É o conteúdo dessa pasta que é enviado para o servidor.


A pasta data contém todos os arquivos necessários para a execução dos scripts citados em 1 e 2.