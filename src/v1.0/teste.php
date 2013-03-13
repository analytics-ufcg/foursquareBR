<?php
function NumC($name){  
    $jsonurl = "https://api.foursquare.com/v2/users/search?twitter=".$name."&oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO&v=20120504";
    $json = file_get_contents($jsonurl);
    $json_output = json_decode($json);
	
	//estrou trantando o json com um string e fazendo a pesquisa	
    $pos = strpos($json, "count");
	$optmp = $json[$pos+7];
	return $optmp;
}

function definirCat($id){
//https://api.foursquare.com/v2/venues/categories?id_str=220588896826830848&oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO&v=20120717
}

function search($optmp,$cid){
	$a = array();
	$fp = fopen('./arq'.$cid.'.csv', 'a+');
	$cont = 0;
	
	$json = file_get_contents($optmp,0,null,null); // Faremos o PHP interpretar e reconhecer o JSON que foi lido
	$encoded = json_decode($json);
	$var = $encoded->{'results'}; // codificando o array de resultados
	set_time_limit(0);
	
	$a[]=$cid;//dependendo da cidade eu mudo o nome
		
	foreach ($var as $in => $val){
		foreach ($val as $i => $v){
			if($i == "geo" && $v!=null){
				foreach($v as $b => $c){
					if ($b == "coordinates"){
						$a[]=$c[0];
						$a[]=$c[1];
					}
				}
			}elseif($i=="from_user" && $v!=null){
				$op = NumC($v);
				//echo "op= ".$op ."-----";
				$a[] = $op;
			}elseif(($i=="created_at") || ($i == "from_user_id_str")||($i == "id_str")){
					$a[]=$v;
					//criar uma nova fun��o para descobrir a categoria do lugar	 definirCat($i);				
			}else{
				if (($i=="entities") || ($i == "metadata") ||($i =="to_user_name")){
					echo "";
				}		
			}
		}
		fputcsv($fp,$a);
		$a=null;
		$a[]=$cid;
	}
	fclose($fp);
}

	$cidade = array("Rio_de_Janeiro","Brasilia","Salvador","CG","Sao_Paulo","Fortaleza","Belo_Horizonte","Manaus","Curitiba","Recife","Guarulhos","Campinas","Duque_de_Caxias","Teresina","Belim","Goiania", "Sao_Luis","Sao_Goncalo", "Maceio","Porto_Alegre", "Natal","Campo_Grande", "Sao_Bernardo_do_Campo","Joao_Pessoa", "Santo_Andre","Nova_Iguacu", "Osasco","Jaboatao_dos_Guararapes", "Sao_Jose_dos_Campos","Ribeirao_Preto", "Uberlandia","Contagem", "Sorocaba","Aracaju","Feira_de_Santana","Cuiaba","Joinville","Juiz_de_Fora","Londrina","Niteroi","Ananindeua","Belford_Roxo","Campos_dos_Goytacazes","Aparecida_de_Goiania","Sao_Joao_de_Meriti","Caxias_do_Sul","Porto_Velho","Florianopolis","Maua","Vila_Velha","Santos","Serra","S�o_Jose_do_Rio_Preto","Macapa","Mogi_das_Cruzes","Diadema","Betim","Olinda","Jundiai","Carapicuiba","Piracicaba","Montes_Claros","Maringa","Cariacica");
	
	for ($j=0;$j<64;$j++){
		for ($i=0;$i<163;$i++){
			$x = $i +1;
			$file = './med/arq'.$cidade[$j].'_ ('.$x.').json';
			//echo $file;
			if(file_get_contents($file,0,null,null)){
				search($file,$cidade[$j]);
			}else break;		
		}
	}
	
//ok - pegar a data = created_at ok
//ok - id do usu�rio
//ok - pegar a posi��o do lugar = coordinates ok
//ok - id do local
//ok - num de checkins e tips por usu�rio https://api.foursquare.com/v2/users/search?twitter= <name> &oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO&v=20120504

//verificar se o usu�rio j� esteve no local P(x)
//verificar a quantidade de vezes que o usu�rio j� esteve no local P(x)
//pegar a categoria(olhar o name) ... https://api.foursquare.com/v2/venues/categories?oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO&v=<ID do local>
//verificar sobre aquele local o que � novo  o que � velho 
//saber as listas em que o local foi citado presente : https://api.foursquare.com/v2/venues/4989af90f964a5207f521fe3/listed?oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO&v=<ID do local>
?>