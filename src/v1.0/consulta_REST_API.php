<?php

function search($optmp, $i,$time){
	$total =0;
	$curl = curl_init($optmp);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	$json = curl_exec($curl);
	curl_close($curl);
		
	// Faremos o PHP interpretar e reconhecer o JSON que foi lido
	$encoded = json_decode($json);
	$fp = fopen('./arq'.$i.'_'.$time.'.json', 'w');
	fwrite($fp, $json);	
	fclose($fp);
	$var = $encoded->{'results'}; // codificando o array de resultados
	set_time_limit(0);
	
	foreach ($var as $in => $val){
		foreach ($val as $i => $v){
			if (($i=="entities") || ($i == "metadata") || ($i == "geo") ||($i =="to_user_namf")) {
				echo "implementsar o for each aqui" ;
			}
			else
				echo $i . " = " . $v . '<br>';		 
		}
		echo "";//'<br>';
		//echo '<br>----------<br>';
		$total = $in;
	}
	return $total;
}

	$op = array(
/*São Paulo*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.54894,-46.63882,100km&show-user=true&include_entities=true&rpp=200",
/*Rio de Janeiro*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.90354,-43.20959,100km&show-user=true&include_entities=true&rpp=200",
/*Salvador*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-12.97038,-38.51238,100km&show-user=true&include_entities=true&rpp=200",
/*Brasília*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-15.78015,-47.92917,50km&show-user=true&include_entities=true&rpp=200",
/*Fortaleza*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-3.71839,-38.54339,50km&show-user=true&include_entities=true&rpp=200",
/*Belo Horizonte*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-19.91907,-43.93857,50km&show-user=true&include_entities=true&rpp=200",
/*Manaus*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-3.10641,-60.02643,50km&show-user=true&include_entities=true&rpp=200",
/*Curitiba*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-25.42836,-49.27325,50km&show-user=true&include_entities=true&rpp=200",
/*Recife*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-8.0542867,-34.88126,50km&show-user=true&include_entities=true&rpp=200",
/*Porto Alegre*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-30.02770,-51.22873,50km&show-user=true&include_entities=true&rpp=200",
/*Belém*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-1.45502,-48.50237,50km&show-user=true&include_entities=true&rpp=200",
/*Goiânia*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-16.67772,-49.26763,50km&show-user=true&include_entities=true&rpp=200",
/*Guarulhos*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.46345,-46.53345,50km&show-user=true&include_entities=true&rpp=200",
/*Campinas*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.90710,-47.06324,50km&show-user=true&include_entities=true&rpp=200",
/*São Luís*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-2.53073,-44.30683,50km&show-user=true&include_entities=true&rpp=200",
/*São Gonçalo*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.82710,-43.05438,50km&show-user=true&include_entities=true&rpp=200",
/*Maceió*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-9.66625,-35.73510,50km&show-user=true&include_entities=true&rpp=200",
/*Duque de Caxias*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.78682,-43.31311,50km&show-user=true&include_entities=true&rpp=200",
/*Teresina*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-5.08921,-42.80163,50km&show-user=true&include_entities=true&rpp=200",
/*Natal*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-57.9448,-35.21095,50km&show-user=true&include_entities=true&rpp=200",
/*Nova Iguaçu*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.75976,-43.45155,50km&show-user=true&include_entities=true&rpp=200",
/*Campo Grande*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-20.44351,-54.64776,50km&show-user=true&include_entities=true&rpp=200",
/*SãoBernardodoCampo*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.68958,-46.56474,50km&show-user=true&include_entities=true&rpp=200",
/*João Pessoa*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-7.11532,-34.86105,50km&show-user=true&include_entities=true&rpp=200",
/*Santo André*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.65531,-46.53209,50km&show-user=true&include_entities=true&rpp=200",
/*Osasco*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.53169,-46.78992,50km&show-user=true&include_entities=true&rpp=200",
/*JaboatãodosGuararapes*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-8.11208,-35.01540,50km&show-user=true&include_entities=true&rpp=200",
/*São José dos Campos*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.17908,-45.88725,50km&show-user=true&include_entities=true&rpp=200",
/*Ribeirão Preto*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-21.17666,-47.82076,50km&show-user=true&include_entities=true&rpp=200",
/*Uberlândia*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-18.91130,-48.26219,50km&show-user=true&include_entities=true&rpp=200",
/*Contagem*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-19.93856,-44.05294,50km&show-user=true&include_entities=true&rpp=200",
/*Sorocaba*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.50623,-47.45591,50km&show-user=true&include_entities=true&rpp=200",
/*Aracaju*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-10.90954,-37.07477,50km&show-user=true&include_entities=true&rpp=200",
/*Feira de Santana*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-12.25546,-38.95429,50km&show-user=true&include_entities=true&rpp=200",
/*Cuiabá*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-15.59892,-56.09489,50km&show-user=true&include_entities=true&rpp=200",
/*Joinville*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-26.30509,-48.84609,50km&show-user=true&include_entities=true&rpp=200",
/*Juiz de Fora*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-21.76501,-43.34882,50km&show-user=true&include_entities=true&rpp=200",
/*Londrina*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.29273,-51.17321,50km&show-user=true&include_entities=true&rpp=200",
/*Niterói*/			"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.88077,-43.10433,50km&show-user=true&include_entities=true&rpp=200",
/*Ananindeua*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-1.36683,-48.37218,50km&show-user=true&include_entities=true&rpp=200",
/* Belford Roxo*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.76424,-43.39916,50km&show-user=true&include_entities=true&rpp=200",
/*CamposdosGoytacazes*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-21.75447,-41.32441,50km&show-user=true&include_entities=true&rpp=200",
/*Aparecida de Goiânia*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-16.81009,-49.23967,50km&show-user=true&include_entities=true&rpp=200",
/*São João de Meriti*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.80381,-43.37265,50km&show-user=true&include_entities=true&rpp=200",
/*Caxias do Sul*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-29.16782,-51.17938,50km&show-user=true&include_entities=true&rpp=200",
/*Porto Velho*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-8.76183,-63.90196,50km&show-user=true&include_entities=true&rpp=200",
/*Florianópolis*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-27.59690,-48.54945,50km&show-user=true&include_entities=true&rpp=200",
/*Mauá*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.66874,-46.46140,50km&show-user=true&include_entities=true&rpp=200",
/*Vila Velha*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-20.96184,-40.29284,50km&show-user=true&include_entities=true&rpp=200",
/*Santos*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.96184,-46.33225,50km&show-user=true&include_entities=true&rpp=200",
/*Serra*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-20.12870,-40.30827,50km&show-user=true&include_entities=true&rpp=200",
/*SãoJosédoRioPreto*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-20.82018,-49.37968,50km&show-user=true&include_entities=true&rpp=200",
/*Macapá*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=0.03446,-51.06656,50km&show-user=true&include_entities=true&rpp=200",
/*Mogi das Cruzes*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.52475,-46.18713,50km&show-user=true&include_entities=true&rpp=200",
/*Diadema*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.68649,-46.62411,50km&show-user=true&include_entities=true&rpp=200",
/*CG*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-7.2039527,-35.8948967,50km&show-user=true&include_entities=true&rpp=200",
/*Betim*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-19.96757,-44.19914,50km&show-user=true&include_entities=true&rpp=200",
/*Olinda*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-8.00937,-34.85528,50km&show-user=true&include_entities=true&rpp=200",
/*Jundiaí*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.18645,-46.88445,50km&show-user=true&include_entities=true&rpp=200",
/*Carapicuíba*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.51922,-46.83674,50km&show-user=true&include_entities=true&rpp=200",
/*Piracicaba*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-22.72498,-47.64760,50km&show-user=true&include_entities=true&rpp=200",
/*Montes Claros*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-16.73686,-43.86525,50km&show-user=true&include_entities=true&rpp=200",
/*Maringá*/		"http://search.twitter.com/search.json?q=4sq.com&geocode=-23.42730,-51.93750,50km&show-user=true&include_entities=true&rpp=200",
/*Cariacica*/	"http://search.twitter.com/search.json?q=4sq.com&geocode=-20.26605,-40.42181,50km&show-user=true&include_entities=true&rpp=200"
	);
	
	$opS = array("São_Paulo","Rio_de_Janeiro","Salvador","Brasília","Fortaleza","Belo_Horizonte","Manaus","Curitiba","Recife","Porto_Alegre","Belém","Goiânia","Guarulhos","Campinas","São_Luís","São_Gonçalo","Maceió","Duque_de_Caxias","Teresina","Natal","Nova_Iguaçu","Campo_Grande","São_Bernardo_do_Campo","João_Pessoa","Santo_André","Osasco","Jaboatão_dos_Guararapes","São_José_dos_Campos","Ribeirão_Preto","Uberlândia","Contagem","Sorocaba","Aracaju","Feira_de_Santana","Cuiabá","Joinville","Juiz_de_Fora","Londrina","Niterói","Ananindeua","Belford_Roxo","Campos_dos_Goytacazes","Aparecida_de_Goiânia","São_João_de_Meriti","Caxias_do_Sul","Porto_Velho","Florianópolis","Mauá","Vila_Velha","Santos","Serra","São_José_do_Rio_Preto","Macapá","Mogi_das_Cruzes","Diadema","CG","Betim","Olinda","Jundiaí","Carapicuíba","Piracicaba","Montes_Claros","Maringá","Cariacica");
	
	$time_ini= strtotime('now');
	$time_fim= $time_ini;
		
	for(;;){
		for ($i=0; $i<64;$i++){
			echo "<br>".$opS[$i]."</br>";
			$total = search($op[$i],$opS[$i],$time_fim);		
			//echo "Resultados obtidos= ". $total. "<br>";	
		}
		
		sleep(3600); //60 min * 60 seg		
		
		if ($time_ini <= strtotime('-7 days')){ //mudar para 7 dias
			break;
		}else{
			$time_fim=strtotime('now');
			//echo $time_fim.'<br>';
			$i = 0;
		}
	
	}
	
	
	echo "stop the medition";
?>
