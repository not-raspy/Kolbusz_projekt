<?php
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$baza = new Funkcje($pdo);
	$row = $baza->getRepertuar($_POST['Film']);
	//$row2 = $baza->getGodzina($row);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Informacje o $row</title>
</head>
<body>
<?php
	
	foreach($row as $film){
		echo "<h3><a href=informacje.php>".$film['TytulFilmu']."</a></h3>";
		//echo "<a href=rezerwacja.php>Zarezerwuj miejsce!</a>";
	}
?>

</body>
</html>