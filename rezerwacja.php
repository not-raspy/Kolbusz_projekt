<?php
	require_once "connect.php";
	require_once "funkcjeBazy.php";
	$baza = new Funkcje($pdo);

	//sesje trzeba ogarnąć
	$row = $baza->getRezerwacja($_POST['Tytuly']);
	setcookie("Tytuly", $_POST['Tytuly'], time()+2*24*3600)
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo "Rezerwujesz na ".$_POST['Tytuly'];?> </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>
<div style="width: 100%; height: 100%; overflow: hidden; border:10px solid #ccc;">
	<form method='POST' class='text-center justify-content-center' style='margin-left:auto;margin-right:auto;' action='daneRezerwacji.php'>
	<h1 id='Tytuly' name='Tytuly' class='display-4 text-center my-4 py-5'><?php echo $_POST['Tytuly'];?></h1>
	<h2 class='text-center my-1 py-1'>Wybierz miejsce: </h2>
	<h3 class='text-center my-1 py-1'>(Ekran jest u góry)</h3>
	
	<table style='margin-left: auto; margin-right: auto;' class='border border-dark'>
<?php 
	for($i=1;$i<=4;$i++){
		echo "<tr>";
		for($j=1;$j<=6;$j++){
				if($baza->checkMiejsce($i, $j, $row)){ //zajete
					echo "

						<td name='Miejsce'
					class='text-white bg-danger' style='margin: 10px; padding:10px;' id='td".$i.$j."' >R: ".$i." M: ".$j."</td>";
				}
				else{ //wolne
					echo "

					<td name='Miejsce'
					class='text-white bg-success' style='margin: 10px; padding:10px;' id='td".$i." ".$j."' ><label><input onclick='disability()' type='checkbox' name='checkbox[]' id='".$i.$j."' value='R: ".$i." M: ".$j."'> R:".$i." M:".$j."</label></td>";
				}
			}
		echo "</tr>";
	}
?>
</table><br>
<button type = 'submit' id='baton' class='text-center btn btn-primary ' disabled>Zarezerwuj</button></form>
<br>
</div>
<script>
function disability(){
	document.getElementById("baton").disabled=true;
	for(var i=1;i<=4;i++){
		for(var j=1;j<=6;j++){
			if(document.getElementById(i+""+j).checked){
				document.getElementById("baton").disabled=false;
				return;
			}
		}
	}
	
	return;
}
</script>
</body>
</html>