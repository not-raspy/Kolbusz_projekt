<?php
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$baza = new Funkcje($pdo);
	
	$baza->addReservation($_COOKIE["Tytuly"]);
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo "Rezerwujesz na ".$_COOKIE["Tytuly"];?> </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body class='text-center'>
<div style="width: 100%; height: 100%; overflow: hidden; border:10px solid #ccc;">
	<h1 class='text-center my-1 py-1'>Rezerwacja zakończona pomyślnie!  </h1>
	<a class='text-center btn btn-primary' href="/repertuar/index.php">Powrót</a>
</body>
</html>