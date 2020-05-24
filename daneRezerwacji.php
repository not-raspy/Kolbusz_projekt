<?php
	
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$wszystko_OK = true; 
	
	$baza = new Funkcje($pdo);
	$row2 = $baza->listReservation();
	
	?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo "Rezerwujesz na ".$_COOKIE['Tytuly'];?> </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>
<form method='POST' class='text-center justify-content-center' style='margin-left:auto;margin-right:auto;' action='dodajRezerwacje.php'>
<div style="width: 100%; height: 100%; overflow: hidden; border:10px solid #ccc;">

	<h1 id='Tytuly' name='Tytuly' class='display-4 text-center my-3 py-3'><?php echo $_COOKIE['Tytuly'];?></h1>
	<h1 class='text-center my-1 py-1'>Podaj dane rezerwacji: </h1>
<br>
	
		<h2 class='text-center my-1 py-1'>Imię i nazwisko:<br>
			<input type="text" name="imieNazwisko">
		</h2>
		<h2 class='text-center my-1 py-1'>
			Numer telefonu: <br>
			<input type="text" name="telefon">
		</h2>
		<h2 class='text-center my-1 py-1'>
			Adres e-mail: <br>
			<input type="text" name="email">
		</h2>
		<h4 class='text-center'>Rezerwowane miejsca to: <br><br>
<?php
foreach ($row2 as $value ) {
    echo "<p class='btn btn-success mx-2'>".$value."</p>"; 
}
?>
</h4>
	
<h4 class='text-center'>
<input type = 'submit' class='text-center btn btn-primary ' value='Zarezerwuj! '></h4>
</div></form>

</body>
</html>