<?php
session_start();
class Funkcje{

    function __construct($pdo){
        $this-> pdo = $pdo;
    }
function getRepertuar($dzien){
    $filmy = "SELECT DISTINCT * FROM tb_info_o_filmie INNER JOIN tbczasmiejsce ON tbczasmiejsce.ID_tytulu = tb_info_o_filmie.ID_tytulu WHERE tbczasmiejsce.DzienTyg = '".$dzien."'";
    $log = $this->pdo->prepare($filmy);
    $log->execute();
    $row = $log->fetchAll();
    return $row;
}
}
?>