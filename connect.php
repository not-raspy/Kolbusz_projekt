<?php
	$host = "localhost";
    $db_user = "root";
    $db_pass = "";
    $db_name = "repertuar";

    try
    {
        $pdo = new PDO('mysql:host='. $host .';dbname='.$db_name, $db_user, $db_pass);
    }
    catch (Exception $e)
    {
        exit('Error Connecting To DataBase');
    }
?>