<?php

function densCobCid($co, $lo, $lf, $ci, $cf){
	$lat= array();
	$long = array();
	$min= array();
	$max = array();
	$quadrante = array();
	
	foreach ($co as $i) {
		if ($i[0]<$lo && $i[0]>$lf && $i[1]<$ci && $i[1]>$cf){
			$lat[] = $i[0]; //latitude mínima
			$long[] = $i[1]; //longitude mínima
		}
	}
	
    $max[0] = max($lat); //latitude máxima
	$min[0] = min($lat); //latitude mínima
    $max[1] = max($long); //longitude máxima
	$min[1] = min($long); //longitude mínima
	
	echo "<br>lat-min = ".$min[0]." lat-max = ".$max[0]." lon-min = ".$min[1]." lon-max = ".$max[1];

	$lat=NULL;
	$long=NULL; //zerar lat e long;	

	$tmp0=0;

	for ($n=$min[0];$n<$max[0];$n=$n+0.008983){ //latitude (linha)
		for ($m=$min[1];$m<$max[1];$m=$m+0.015060){ //longitude (coluna)
			$li= intval(-1*$n/0.008983);
			$col= intval(-1*$m/0.015060);
			//echo "<br>".$li.",".$col;
			$quadrante[$li][$col]=0;
			$tmp0++; //numero de quadrantes
		}
	}
	echo "<br>tmp0 (Num Quadrantes) : ".$tmp0;
	
	$tmp1=0;
	foreach ($co as $i) {	
		if ($i[0]<$lo && $i[0]>$lf && $i[1]<$ci && $i[1]>$cf){
			$linha = intval(-1*$i[0]/0.008983);  //latitude (linha)
			$coluna = intval(-1*$i[1]/0.015060); //longitude (coluna)	
			//echo "linha= ".$linha."  coluna= ".$coluna;
			if($quadrante[$linha][$coluna] == 0) 
				$tmp1++; //número de valores com valor maior que 1
			$quadrante[$linha][$coluna] = $quadrante[$linha][$coluna] + 1 ;
		}
	}
	echo "<br>tmp1 (Num de valores com no mínimo 1) : ".$tmp1;
	
	$sum =0;
	$cobertura = 0;
		
	for ($n=$min[0];$n<$max[0];$n=$n+0.008983){ //latitude (linha)
		for ($m=$min[1];$m<$max[1];$m=$m+0.015060){ //longitude (coluna)
			$li= intval(-1*$n/0.008983);
			$col= intval(-1*$m/0.015060);
			if ($quadrante[$linha][$coluna] > 0){
				$sum = $sum + $quadrante[$linha][$coluna];
			}
		}
	}
		
	$max[0]=NULL;$max[1]=NULL;
	$min[0]=NULL;$min[1]=NULL;//zerar max e min	
	
	echo "<br> soma: ". $sum ;
	echo "<br> tmp0: ". $tmp0 ;
	echo "<br> tmp1: ". $tmp1 ;

	//verificar densidade
	$a[] = $sum/$tmp0; //gravar isso em um csv
	
	
	echo "<br>total". count($quadrante);
	
	//verificar cobertura
	$a[] = 100*($tmp1/$tmp0);

	return $a;
}

function lerCoordinates($cid){
	echo "<br>". $cid;
	$coor = array();
	$arq = fopen('C:/wamp/www/coletas/coleta3/infoATT/arq'.$cid.'.csv', 'r');
	
	$la="";$lo="";
	$row=0;
	$data[]=array();
	
	//$j=0;
	
	 while (($data = fgetcsv($arq, 1024, " ")) !== FALSE) {
		foreach($data as $l => $c){
			if ($c!="Long" && $c!="NA" && $c!="Lat"){
				//echo "<br>l= ".$l." , c=". $c;
				$pos = strpos($c,'-');
				if ($l==1){
					$la = substr($c,$pos,8);
					$la = $newstr = str_replace(",", ".", $la);
					$la = $newstr = str_replace("-", "", $la);
					$la = -1 * $la;
				}elseif($l==2){
					$lo = substr($c,$pos,8);
					$lo = $newstr = str_replace(",", ".", $lo);
					$lo = $newstr = str_replace("-", "", $lo);
					$lo = -1 * $lo;
					//echo "<br>la= ".$la." , lo=". $lo;
				}
			}
		}

		$coor[]= array($la,$lo);		
		$la="";$lo="";
		
		//$j++;
		//if ($j==25) break;
	}
 	fclose($arq);
	return $coor;	
}


################# main ####################
	$coordenadas = array();
	$arqf = fopen('C:/wamp/www/coletas/coleta3/DensCobCid.csv', 'a+');
	
	$cidade = array("Rio_de_Janeiro","Brasilia","Salvador");//,"CG","Sao_Paulo","Fortaleza","Belo_Horizonte", //7
	//"Manaus","Curitiba","Recife","Guarulhos","Campinas","Duque_de_Caxias","Teresina","Belim","Goiania", //9
	//"Sao_Luis","Sao_Goncalo","Maceio","Porto_Alegre","Natal","Nova_Iguacu","Campo_Grande", //7
	//"Sao_Bernardo_do_Campo","Joao_Pessoa","Santo_Andre","Osasco","Jaboatao_dos_Guararapes", //5
	//"Sao_Jose_dos_Campos","Ribeirao_Preto","Uberlandia","Contagem","Sorocaba","Aracaju","Feira_de_Santana", //7
	//"Cuiaba","Joinville","Juiz_de_Fora","Londrina","Niteroi","Ananindeua","Belford_Roxo","Campos_dos_Goytacazes",
	//"Aparecida_de_Goiania","Sao_Joao_de_Meriti","Caxias_do_Sul","Porto_Velho","Florianopolis","Maua",
	//"Vila_Velha","Santos","Serra","Sao_Jose_do_Rio_Preto","Macapa","Mogi_das_Cruzes","Diadema","Betim",
	//"Olinda","Jundiai","Carapicuiba","Piracicaba","Montes_Claros","Maringa","Cariacica");
	
	$lai = array("-22.5","-15.4","-12.7");//,"-7.1","-23.3","-3.65","-19.75",
	//"-1.8","-25.3","-7.9","-23.25","-22.7","-22.45","-4.8","-1","-16.4",
	//"-2.40","-22.7","-9.35","-29.4","-5.7","-22.5","-20",
	//"-23.65", "-7.05", "-23.6","-23.45","-8.05",
	//"-22.8","-21.05", "-18.6","-19.8", "-23.35", "-10.85", "-11.9",
	//"", "-26", "-21.5","-23.1","-22.85", "-1.2", "-22.68", "-21.2",
	//"-16.7","-22.75","-28.8", "-8","-27.3", "-23.6",
	//"-20.3", "-23.75","-20", "", "1.2", "-23.35", "-23.66","-19.82",
	//"-7.94", "-23.05","", "-22.5", "-16.1", "", "-20.2");
	
	$laf = array("-23.2","-16.2","-13.1");//,"-7.4","-24.1","-3.95","-20.10",
	//"-3.2","-25.65","-8.2","-23.55","-23","-22.8","-5.6","-1.5","-16.9",
	//"-2.80","-22.95","-9.75","-30.45","-5.9","-22.9","-21.75",
	//"-23.95", "-7.25", "-23.85","-23.62","-8.25",
	//"-23.3","-21.37", "-19.4","-20", "-23.6", "-11.2", "-12.41",
	//"", "-26.45", "-22","-23.8","-23", "-1.46", "-22.78", "-22.1",
	//"-16.9", "-22.82", "-29.41", "-10", "-27.9", "-23.72",
	//"-20.55","-24", "-20.25", "", "-0.90","-23.75", "-23.74", "-20.05",
	//"-8.04", "-23.35", "","-22.9", "-17.9", "", "-20.4");
	
	$loi = array("-43","-47.2","-38.3");//,"-35.6","-46.2","-38.4","-43.8",
	//"-59","-49.1","-34.8","-46.3","-46.8","-43.1","-42.4","-48.2","-49",
	//"-44.1","-42.85","-35.5","-50.5","-35.15","-43.3","-53.5",
	//"-46.4", "-34.79", "-46.25","-46.73","-34.9",
	//"-45.7","-47.6", "-47.8", "-44", "-47.3", "-37", "-38.8",
	//"", "-48.7", "-43.1","-50.8","-42.95", "-48.3", "-43.32", "-40.9",
	///"-49.14", "-43.23", "-50.8", "-62", "-48.3", "-46.35",
	//"-40.25","-46.1","-40.15", "", "-49.25", "-46", "-46.56", "-44.05",
	//"-34.82", "-46.75", "", "-47.5", "-43.6", "", "-40.35");
	
	$lof = array("-43.8","-48.4","-38.8");//,"-36.2","-46.9","-38.7","-44.1",
	//"-61","-49.4","-35.1","-46.6","-47.3","-43.5","-43","-48.7","-49.5",
	//"-44.5","-43.15","-35.9","-52","-35.3","-43.8","-55",
	//"-46.7", "-35", "-46.6","-46.85","-35.1",
	//"-46.2","-48", "-50", "-44.2", "-47.6", "-37.2", "-39.2",
	//"","-49.2", "-43.7","-51.4","-43.15", "-48.45", "-43.44", "-42",
	///"-49.4", "-43.42", "-51.81", "-67", "-48.7", "-46.56",
	//"-40.5", "-46.45", "-40.45", "", "-51.5", "-46.4", "-46.66","-44.35",
	//"-34.92", "-47.05", "", "-48.1", "-44.4", "", "-40.6");
	
	//$j=0;
	// criar um loop que leia os arquivos das cidades
	
	for($i=0;$i<3;$i++){
		$a[] = $cidade[$i];
		$coordenadas = lerCoordinates($cidade[$i]); //cria uma função que leia todas a latitudes e longitudes de uma cidade (armazenará em um array bidimensional)
		$d = densCobCid($coordenadas,$lai[$i], $laf[$i], $loi[$i],$lof[$i]); 
		echo "<br>densidade= ".$d[0]; //gravar no csv (tem que ser as colunas do arq separadas)
		echo "<br>cobertura= ".$d[1]; //gravar no csv
		$a[] =$d[0];
		$a[] =$d[1];
		fputcsv($arqf, $a);
		$a = null;
		//$j++;
		//if ($j==25) break;
	}
	fclose($arqf);
	?>