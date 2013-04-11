<html>
<head>
<body>

<?php
//https://api.foursquare.com/v2/venues/search?ll=-1.445,-48.4864&oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO
//pega o id
//https://api.foursquare.com/v2/venues/4dbdbe220cb691071cc14b56?oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO

	function Atualidade($localID, $nome){
	// 05 de julho de 2012 - 11 e meia = 1341487800
	// 28 de junho de 2012 - 11 e meia = 1340883000

		$cont=0;
		$pg = "https://api.foursquare.com/v2/venues/".$localID."?&client_id=SHACZDD1XHKWCNFQRHTD4O3EY4TFZ4SURTC0HP5D2TT4EIAU&client_secret=UTPUREFF2F31OOSCVPA31VSMFXEEHBQUOVTCZ115Q5ANMIST";
		echo $pg;
		$at = array();
		
		
		$curl = curl_init($pg);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		$json = curl_exec($curl);
		curl_close($curl);
		$fp = fopen('C:\wamp\www\coletas\coleta3\Atualidade_info\arq'.$nome.'.json', 'w');
		fwrite($fp, $json);
		fclose($fp);

		$s = json_decode($json);
		$t = $s->{'response'}->{'venue'}->{'tips'}->{'groups'}[0]->{'items'};
		$total =$s->{'response'}->{'venue'}->{'tips'}->{'groups'}[0]->{'count'};
		echo "total = ".$total;
		$at[0] = $total;

		foreach ($t as $a => $b){
			echo "<br>".$b->{'createdAt'}."</br>";
			$tmp= $b->{'createdAt'};

			if($tmp<"1341487800"){
				//vou considerar uma informação atualizada se tiver no máximo um mês de duração (28/05)
				if ($tmp > "1338204600"){ // tem menos de 1 mês de duração
					$cont++;
				}
			}
		}

 		if ($total == 0){
			$at[1] = -1;
		}else{
			echo "count= ".$cont;
			$at[1] = $cont/$total;
		}
		echo "at = ". $at[1];
		return $at ;
	}



	function search($optmp,$cid, $num){
		$a = array();
		$json = file_get_contents($optmp,0,null,null); // Faremos o PHP interpretar e reconhecer o JSON que foi lido
		$encoded = json_decode($json);

		$r = array();
		$m=array();$id=0;

		$r[0] = $encoded->{'results'}[0]->{'geo'}->{'coordinates'}[0];
		$r[1] = $encoded->{'results'}[0]->{'geo'}->{'coordinates'}[1];
		echo "<br>".$r[0]."===".$r[1]."</br>";

		$page = "https://api.foursquare.com/v2/venues/search?ll=".$r[0].",".$r[1]."&client_id=SHACZDD1XHKWCNFQRHTD4O3EY4TFZ4SURTC0HP5D2TT4EIAU&client_secret=UTPUREFF2F31OOSCVPA31VSMFXEEHBQUOVTCZ115Q5ANMIST";
		echo "<br><br>".$page."</br></br>";

		if ($r[0]!=null && $r[1]!=null){
			//descobre ID
			$na = $cid.'-'.$r[0].'-'.$r[1];
			$id = verificaVenueID($page,$na); //verifica Venue_ID
			echo "<br>id da ll = ".$id . "</br>";

			//descobre a taxa de Atualidade para cada linha
			if ($id!=null){
//				$id = "4dbdbe220cb691071cc14b56";
				$nam = $cid.'-'.$num.'-'.$id;
				echo $nam;
				$m = Atualidade ($id, $nam);
				echo "<br>taxa de atualidade- ". $m."</br>";
				$a [] = $r[0];
				$a [] = $r[1];
				$a [] = $id;
				$a [] = $m[0];
				$a [] = $m[1];
			}
		}

		return $a;
	}

	function verificaVenueID($page,$n){
		$curl = curl_init($page);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 0);
		$json1 = curl_exec($curl);
		echo "tipo ------>".gettype($json1);
		curl_close($curl);

		$fp = fopen('C:\wamp\www\coletas\coleta3\ID_info\arq'.$n.'.json', 'w');
		fwrite($fp, $json1);
		fclose($fp);
		$s = json_decode($json1);
		$id = $s->{'response'}->{'groups'}[0]->{'items'}[0]->{'id'};
		echo $id;
		return $id;
	}

		$cidade = array("Rio_de_Janeiro","Brasilia","Salvador");
		//,"CG","Sao_Paulo","Fortaleza","Belo_Horizonte","Manaus","Curitiba","Recife","Guarulhos","Campinas","Duque_de_Caxias","Teresina","Belim","Goiania", "Sao_Luis","Sao_Goncalo", "Maceio","Porto_Alegre", //"Natal","Campo_Grande", "Sao_Bernardo_do_Campo","Joao_Pessoa", "Santo_Andre","Nova_Iguacu", "Osasco","Jaboatao_dos_Guararapes", "Sao_Jose_dos_Campos","Ribeirao_Preto", "Uberlandia","Contagem", //"Sorocaba","Aracaju","Feira_de_Santana","Cuiab","Joinville","Juiz_de_Fora","Londrina","Niteroi","Ananindeua","Belford_Roxo","Campos_dos_Goytacazes","Aparecida_de_Goiania","Sao_Joao_de_Meriti","Caxias_do_Sul","Porto_Velh//o","Florianopolis","Maua","Vila_Velha","Santos","Serra","Sao_Joao_do_Rio_Preto","Macapa","Mogi_das_Cruzes","Diadema","Betim","Olinda","Jundiai","Carapicuiba","Piracicaba","Montes_Claros","Maringa","Cariacica");

	for ($j=0;$j<3;$j++){
		$fp = fopen('C:\wamp\www\coletas\coleta3\atualidade\arq'.$cidade[$j].'.csv', 'a+');

		for ($i=0;$i<168;$i++){
			$x = $i +1;
			$file = 'C:\wamp\www\coletas\coleta3\med_coleta3\arq'.$cidade[$j].'_ ('.$x.').json';

			if(file_get_contents($file,0,null,null)){
				$info = search($file,$cidade[$j],$j);
				echo "<br> info - ".$info."</br>";
				if($info!=null)
					fputcsv($fp,$info);
			}else break;
		}
		fclose($fp);
	}
?>
</body>
</html>
