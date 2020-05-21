<?php
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$baza = new Funkcje($pdo);
	$row = $baza->getRepertuar($_POST['DzienTygodnia']);
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo "Filmy na ".$_POST['DzienTygodnia'];?> </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>
<div style="width: 100%; height: 100%; overflow: hidden; border:10px solid #ccc;">

<?php
	
	foreach($row as $film){
		echo "<h3 class='display-4 text-center py-5 my-4'>".$film['TytulFilmu']." </h3>
	<nav class = 'nav justify-content-center nav-pills flex-column flex-md-row'>
		<a class = 'nav-link active' href='#opis' data-toggle='tab'> Opis filmu </a>
		<a class = 'nav-link' href='#info' data-toggle='tab'> Informacje o filmie </a>
		<a class = 'nav-link' href='#obsada' data-toggle='tab'> Obsada i reżyseria </a>
		<a class = 'nav-link' href='#rezerwacja' data-toggle='tab'> Zarezerwuj miejsce już teraz! </a>
	</nav>
	<div class='tab-content py-5'>
		<div class='tab-pane active' id='opis'>".$film['OpisFilmu']." </div>
		<div class='tab-pane' id='info'>Ograniczenia wiekowe: ".$film['Ogr_wiekowe']."<br>Czas trwania: ".$film['czas_trwania']." min <br>Kraj Produkcji: ".$film['Produkcja']."<br>Rok produkcji: ".$film['Data_Prod']." </div>
		<div class='tab-pane' id='obsada'>Obsada: ".$film['Obsada']."<br> Reżyseria: ".$film['Reżyseria']." </div>
		<div class='tab-pane' id='rezerwacja'>Godzina seansu:" .$film['GodzinaSeansu']. "<br><form method='POST' action='rezerwacja.php'>
		<button type = 'submit'>Rezerwuj teraz! </button>". "</div>
	</div>



	";
}
?>
<div class="tab-content py-5">
	<div class="tab-pane active" id="opis"> </div>
	<div class="tab-pane" id="info"> </div>
	<div class="tab-pane" id="obsada"> </div>
	<div class="tab-pane" id="rezerwacja"> </div>
</div>


</div>
</body>
</html>