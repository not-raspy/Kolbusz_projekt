<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA Compatible" content="IE=edge,chrome=1"/>
	<title>Wybierz dzień</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
	<h1>
		Na jaki dzień tygodnia chcesz zobaczyć repertuar? 
	</h1>
	<form method="POST" action="filmy.php" >
		<select name="DzienTygodnia">
			<option>Poniedziałek</option>
			<option>Wtorek</option>
			<option>Środa</option>
			<option>Czwartek</option>
			<option>Piątek</option>
			<option>Sobota</option>
			<option>Niedziela</option>
		</select>
		<button type="submit"> Potwierdź</button>
	</form>
</body>
</html>
