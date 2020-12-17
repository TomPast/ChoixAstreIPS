<?php
    $mysqli= new mysqli("localhost", "root", "", "astreips");

    $JSONResult = array();

    $query = "SELECT * FROM 'astre_ips'";
    $resultUsers = $mysqli->query($query);
    while($result = $resultUsers -> fetch_row()){
        console.log($result[0]);
    }
?>
