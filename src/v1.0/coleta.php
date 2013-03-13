<?
//https://api.foursquare.com/v2/venues/search?ll=-1.445,-48.4864&oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO
//pega o id
//https://api.foursquare.com/v2/venues/4dbdbe220cb691071cc14b56?oauth_token=P1LQG3K5XUNWDKP4MMACCF0MFWISHI4FMJ0L5PCZSKTOZXWO
//descobre as datas de todos os eventos

// 28 de junho de 2012 - 11 e meia = 1340883000
// 05 de julho de 2012 - 11 e meia = 1341487800
?>

<html>
<head>
<body>
<?php
	function Atualidade($localID,$iT,$cid){  
		$at = array();
		$fp = 'C:\wamp\www\coletas\coleta3\Atualidade_info\arq'.$cid.'-'.$iT.'-'.$localID.'.json';
		$cont = 0;
	
		$json = file_get_contents($fp,0,null,null); 
		$s = json_decode($json);
		
		$t = $s->{'response'}->{'venue'}->{'tips'}->{'groups'}[0]->{'items'};
		$total =$s->{'response'}->{'venue'}->{'tips'}->{'groups'}[0]->{'count'};
		echo "total = ".$total;
		
		foreach($t as $a => $b){
			$tmp = $b->{'createdAt'};
			$at[] = $tmp;
			echo '<br>'.$tmp.'</br>';
		}
		//fclose($fp);
		return $at;	
	}

	function search($optmp,$cid,$idtmp){
		$a = array();					
		$json = file_get_contents($optmp,0,null,null);
		$encoded = json_decode($json);
		
		$r = array();
		$m=array();$id=0;
				
		$r[0] = $encoded->{'results'}[0]->{'geo'}->{'coordinates'}[0];
		$r[1] = $encoded->{'results'}[0]->{'geo'}->{'coordinates'}[1];
		
		$page = 'C:\wamp\www\coletas\coleta3\ID_info\arq'.$cid.'-'.$r[0]."-".$r[1].'.json';
		$cont = 0;
				
		if ($r[0]!=null && $r[1]!=null){
			$id = null;
			$id = verificaVenueID($page);
			echo $id;
			
			if ($id!=null){
				$m = Atualidade ($id, $idtmp, $cid);
				//$a [] = $r[0];
				//$a [] = $r[1];
				//$a [] = $id;
			}
		}
		//fclose($json);
		return $m;
	}
			
	function verificaVenueID($page){
		//$fp = fopen($page, 'a+');
		$cont = 0;
	
		$json = file_get_contents($page,0,null,null); 
		$s = json_decode($json);
		
		$id = $s->{'response'}->{'groups'}[0]->{'items'}[0]->{'id'};
		echo $id;
		//fclose($fp);
		return $id;
	}
	
	
	$cidade = array("Rio_de_Janeiro","Brasilia","Salvador");
	//,"CG","Sao_Paulo","Fortaleza","Belo_Horizonte","Manaus","Curitiba","Recife","Guarulhos","Campinas","Duque_de_Caxias","Teresina","Belim","Goiania", "Sao_Luis","Sao_Goncalo", "Maceio","Porto_Alegre", "Natal","Campo_Grande", //"Sao_Bernardo_do_Campo","Joao_Pessoa", "Santo_Andre","Nova_Iguacu", "Osasco","Jaboatao_dos_Guararapes", "Sao_Jose_dos_Campos","Ribeirao_Preto", "Uberlandia","Contagem", //"Sorocaba","Aracaju","Feira_de_Santana","Cuiab","Joinville","Juiz_de_Fora","Londrina","Niteroi","Ananindeua","Belford_Roxo","Campos_dos_Goytacazes","Aparecida_de_Goiania","Sao_Joao_de_Meriti","Caxias_do_Sul","Porto_Velho","//Florianopolis","Maua","Vila_Velha","Santos","Serra","Sao_Jose_do_Rio_Preto","Macapa","Mogi_das_Cruzes","Diadema","Betim","Olinda","Jundiai","Carapicuiba","Piracicaba","Montes_Claros","Maria","Cariacica");
	
	for ($j=0;$j<3;$j++){
		$fp = fopen('C:\wamp\www\coletas\coleta3\Datas\arq'.$cidade[$j].'.csv', 'a+');
		
		for ($i=0;$i<168;$i++){
			$x = $i +1;
			$file = 'C:\wamp\www\coletas\coleta3\med_coleta3\arq'.$cidade[$j].'_ ('.$x.').json';
		
			if(file_get_contents($file,0,null,null)){
				$info = search($file,$cidade[$j],$j);
				//echo "<br> info - ".$info."</br>";
				if($info!=null)
					fputcsv($fp,$info);
			}else break;		
		}
		fclose($fp);
	}
?>
</body>
</html>