A pasta src cont�m 3 pastas:

1- coleta-byAline
    Scripts em R e PHP utilizado para realizar a coleta dos dados do Foursquare e Twitter, e para o c�lculo das m�tricas utilizadas.
2- nova-coleta
    Scripts em R que c�lcula as m�tricas utilizadas. Implementado pelo grupo FoursquareBR.
3- processing
    Todo o ambiente de desenvolvimento usado para criar o site. No caso, tudo foi feito no processing. Tudo est� dividido em 4 partes.
	3.1- SitePrimeiraPag: Projeto respons�vel pela cria��o da p�gina inicial
	3.2- Main: Projeto respons�vel pela cria��o da pagina que responde a primeira pergunta.
	3.3- GraficoDeLinhasInfluencias: Projeto respons�vel pela cria��o da p�gina que responde a segunda pergunta.
	3.4- web-export: cont�m as vers�es pra web(javascript) de todos os projetos 3.1,3.2 e 3.3. � o conte�do dessa pasta que � enviado para o servidor.


A pasta data cont�m todos os arquivos necess�rios para a execu��o dos scripts citados em 1 e 2.