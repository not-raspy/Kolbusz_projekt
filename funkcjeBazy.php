<?php

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
function getFilm($seans){
    $filmy = "SELECT DISTINCT * FROM tbczasmiejsce INNER JOIN tb_info_o_filmie ON tb_info_o_filmie.ID_tytulu = tbczasmiejsce.ID_tytulu WHERE tb_info_o_filmie.TytulFilmu = '".$seans."'";
    $log = $this->pdo->prepare($filmy);
    $log->execute();
    $row = $log->fetchAll();
    return $row;
}
function getTytul(){
    $filmy = "SELECT DISTINCT TytulFilmu FROM tbczasmiejsce INNER JOIN tb_info_o_filmie ON tb_info_o_filmie.ID_tytulu = tbczasmiejsce.ID_tytulu";
    $log = $this->pdo->prepare($filmy);
    $log->execute();
    $row2 = $log->fetchAll();
    return $row2;
}
function getRezerwacja($tytul){
    $filmy = "SELECT * FROM tbrezerwacje INNER JOIN tb_info_o_filmie ON tb_info_o_filmie.ID_tytulu = tbrezerwacje.ID_tytulu WHERE tb_info_o_filmie.TytulFilmu = '".$tytul."'";
    $log = $this->pdo->prepare($filmy);
    $log->execute();
    $row = $log->fetchAll();
    return $row;
}
function checkMiejsce($rzad, $miejsce, $tabela){
    foreach($tabela as $row){
        if($row['Rzad'] == $rzad && $row['Miejsce'] == $miejsce){
            return true; 
        }
    }
    return false;
}
function listReservation(){
    $checkboxes = isset($_POST['checkbox']) ? $_POST['checkbox'] : array();
    setcookie("checkboxes", serialize($checkboxes), time()+2*24*3600);
    return $checkboxes;
}
function addReservation($tytul){
    $row = $this->getRezerwacja($tytul);
    $data = unserialize($_COOKIE['checkboxes']);
    foreach($data as $value){
        $sql = "INSERT INTO tbrezerwacje (ID_rezerwacji, ID_seansu, ID_tytulu,AdresEmail,Telefon, ImieNazwisko, Miejsce, Rzad) 
            VALUES (NULL,'".$row[0]['ID_seansu']."','".$row[0]['ID_tytulu']."','".$_POST['email']."','".$_POST['telefon']."','".$_POST['imieNazwisko']."','".$value[3]."', '".$value[8]."')";
            $this->pdo->prepare($sql)->execute();
            
    }
}
}
?>