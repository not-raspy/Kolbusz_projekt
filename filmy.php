<?php
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$baza = new Funkcje($pdo);
	$row = $baza->getRepertuar($_POST['DzienTygodnia']);
	$row2 = $baza->getTytul();
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo "Filmy na ".$_POST['DzienTygodnia'];?> </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body style='margin-left: 10%;margin-right: 10%' class='text-center'>
<div style="width: 100%; height: 100%; overflow: hidden;">


<h5 class='display-6 text-center py-5 my-4'>Wybierz film na który chcesz dokonać rezerwację: </h5> 

<?php	
echo "<h5><form method='POST' class='text-center justify-content-center' style='margin-left:auto;margin-right:auto;' action='rezerwacja.php'><select name='Tytuly'>";
foreach($row as $tytul){
				echo "<option>".$tytul['TytulFilmu']."</option>";
}
echo "</select><br>
		<button type = 'submit' class='text-center btn btn-primary '>Rezerwuj teraz! </button></form></h5>";



	foreach($row as $film){
		echo "<div class='border'><h3 class='display-4 text-center py-5 my-4' id='tytul'>".$film['TytulFilmu']." </h3>
		<h4 class='display-5 text-center py-5 my-4'>Godzina seansu:" .$film['GodzinaSeansu']."</h4>
		
		
	<nav class = 'nav justify-content-center nav-pills flex-row flex-md-row'>
		<a class = 'nav-link hidden' href='#opis' data-toggle='tab' onclick='opis(".$film['ID_seansu'].")'> Opis filmu </a>
		<a class = 'nav-link hidden' href='#info' data-toggle='tab' onclick='info(".$film['ID_seansu'].")'> Informacje o filmie </a>
		<a class = 'nav-link hidden' href='#obsada' data-toggle='tab' onclick='obsada(".$film['ID_seansu'].")'> Obsada i reżyseria </a>
	</nav>
	<div class='tab-content py-5'>
		<div class='tab-pane hidden' id='opis".$film['ID_seansu']."'>".$film['OpisFilmu']." </div>
		<div class='tab-pane hidden' id='info".$film['ID_seansu']."'>Ograniczenia wiekowe: ".$film['Ogr_wiekowe']."<br>Czas trwania: ".$film['czas_trwania']." min <br>Kraj Produkcji: ".$film['Produkcja']."<br>Rok produkcji: ".$film['Data_Prod']." </div>
		<div class='tab-pane hidden' id='obsada".$film['ID_seansu']."'>Obsada: ".$film['Obsada']."<br> Reżyseria: ".$film['Reżyseria']." </div>
	</div></div>";
}
?>
<script>
function opis(id) {
  var opis = document.getElementById('opis'+id);
  var info = document.getElementById('info'+id);
  var obsada = document.getElementById('obsada'+id);
  
  opis.style.display = 'block';
  info.style.display = 'none';
  obsada.style.display = 'none';
  
}

function info(id) {
  var opis = document.getElementById('opis'+id);
  var info = document.getElementById('info'+id);
  var obsada = document.getElementById('obsada'+id);
  
  opis.style.display = 'none';
  info.style.display = 'block';
  obsada.style.display = 'none';

  
}

function obsada(id) {
  var opis = document.getElementById('opis'+id);
  var info = document.getElementById('info'+id);
  var obsada = document.getElementById('obsada'+id);

  opis.style.display = 'none';
  info.style.display = 'none';
  obsada.style.display = 'block';
  
}

function rezerwacja(id) {
  var opis = document.getElementById('opis'+id);
  var info = document.getElementById('info'+id);
  var obsada = document.getElementById('obsada'+id);
  
  opis.style.display = 'none';
  info.style.display = 'none';
  obsada.style.display = 'none';
  
}
</script>
</div>
</body>
</html>