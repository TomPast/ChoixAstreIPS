<?php
    include "connect.php";
    $mysqli= new mysqli($servername, $username, $password, $database);
    $mysqli->query("SET NAMES 'utf8'");


    $query = "SELECT * FROM astre_ips";
    $nb_ips = 0;
    $nb_astre = 0;

    $coeffs = array();
    $resultUsers = $mysqli->query($query);
    while($result = $resultUsers -> fetch_row()){
        $score = 0;
        $coeffUser = array_fill(0, 28, 0);
        //Parcours
        if($result[3] == "Prepa BL"){
            $score += 10;
            $coeffUser[0] = 1;
        }
        $score = 0;

        //TOEIC
        if(strpos($result[4], 'Oui')!== false ||$result[4]!='Non'){
            $score += 2;
            $coeffUser[1] = 1;
        }
        
        //Association ENSIMElec
        if(strpos($result[5], 'ENSIM\'Elec')!== false){
            $score += -2;
            $coeffUser[2] = 1;
        }

        //Association Trublions du plateau
        if(strpos($result[5], 'Trublions du Plateau')!== false){
            $score += -1;
            $coeffUser[3] = 1;
        }

        //Beaucoup d'associations (> 4)
        if(substr_count($result[5], ';') > 4){
            $score += 5;
            $coeffUser[4] = 1;
        }

        //Conservatoire ou musique
        if(strpos($result[8], 'musique')!== false || strpos($result[8], 'Conservatoire')!== false){
            $score += 2;
            $coeffUser[5] = 1;
        }
        
        //Navigateur
        switch($result[10]){
            case "Safari":
                $coeffUser[6] = 1;
                $score += 4;
                break;
            case "Edge" :
                $coeffUser[6] = -0.75;
                $score += -3;
                break;
        }

        //Assembleur
        if(strpos($result[11], 'Assembleur')!== false){
            $coeffUser[7] = 1;
            $score += -5;
        }

        //HTML
        if(strpos($result[11], 'HTML5')!== false){
            $coeffUser[8] = 1;
            $score += 3;
        }

        //Java
        if(strpos($result[11], 'Java')!== false){
            $coeffUser[9] = 1;
            $score += 3;
        }


        $poidsArduino = -2;
        switch($result[12]){
            case "Jamais":
                break;
            case "Un peu":
                $coeffUser[10] = 0.5;
                $score += 0.5 * $poidsArduino;
                break;
            case "Régulièrement":
                $coeffUser[10] = 1;
                $score += 1 * $poidsArduino;
                break;
            case "Tout le temps":
                $coeffUser[10] = 2;
                $score += 2 * $poidsArduino;
                break;
        }


        $poids = 5;
        //Android ou Ionic + HTML
        if(strpos($result[11], 'HTML5')!== false && ($result[12]=="Régulièrement" || $result[12]=="Tout le temps" || $result[38] == "J'aime bien"|| $result[38] == "Je suis fan")){
            $score += $poids;
            $coeffUser[11] = 1;
        }
        
        $poids = 6;
        //Robot + Capteur
        if(($result[21]=="Régulièrement" || $result[21]=="Tout le temps")&&($result[25]=="Régulièrement" || $result[25]=="Tout le temps")){
            $coeffUser[12] = 1;
            $score += -$poids;
        }

        
        //Codeblock
        $poids = 1;
        switch($result[28]){
            case "J'aime bien":
                $score += -$poids;
                $coeffUser[13] = 0.5;
                break;
            case "Je n'aime pas":
                $score += $poids;
                $coeffUser[13] = -0.5;
                break;
            case "Je suis fan":
                $score += -(2*$poids);
                $coeffUser[13] = 1;
                break;
        }

        //Android
        $poids = 4;
        switch($result[29]){
            case "Je suis fan":
                $score += $poids;
                $coeffUser[14] = 1;
                break;
            case "J'aime bien":
                $score += $poids/2;
                $coeffUser[14] = 0.5;
                break;
            case "Je n'aime pas":
                $score += -($poids/2);
                $coeffUser[14] = -0.5;
                break;   
        }

        //IntelliJ
        $poids = 2;
        switch($result[31]){
            case "Je suis fan":
                $score += $poids;
                $coeffUser[15] = 1;
                break;
            case "J'aime bien":
                $score += $poids/2;
                $coeffUser[15] = 0.5;
                break;
            case "Je n'aime pas":
                $score += -($poids/2);
                $coeffUser[15] = -0.5;
                break;   
        }

        //LabView
        $poids = 5;
        switch($result[32]){
            case "Je suis fan":
                $score += -$poids;
                $coeffUser[16] = 1;
                break;
            case "J'aime bien":
                $coeffUser[16] = 0.5;
                $score += -($poids/2);
                break;
            case "Je n'aime pas":
                $coeffUser[16] = -0.2;
                $score += 1;
                break;   
        }

        //Unity
        $poids = 2;
        switch($result[33]){
            case "Je suis fan":
                $coeffUser[17] = 1;
                $score += $poids;
                break;
            case "J'aime bien":
                $coeffUser[17] = 0.5;
                $score += $poids/2;
                break;
            case "Je n'aime pas":
                $coeffUser[17] = -0.5;
                $score += -($poids/2);
                break;   
        }

        //Unreal
        $poids = 1;
        switch($result[34]){
            case "Je suis fan":
                $coeffUser[18] = 1;
                $score += 2;
                break;
            case "J'aime bien":
                $coeffUser[18] = 0.5;
                $score += 1;
                break;
            case "Je n'aime pas":
                $coeffUser[18] = -0.5;
                $score += -1;
                break;   
        }

        //Ionic
        $poids = 1;
        switch($result[38]){
            case "Je suis fan":
                $score += 5*$poids;
                $coeffUser[19] = 1;
                break;
            case "J'aime bien":
                $score += 3*$poids;
                $coeffUser[19] = 0.5;
                break;
            case "Je n'aime pas":
                $score += -2*$poids;
                $coeffUser[19] = -0.3;
                break;   
        }

        
        //jeu video = 22
        $poids = 1;
        switch ($result[23]) {
            case "Tout le temps":
                $score = $score + (2*$poids);
                $coeffUser[20] = 1;
                break;
            case "Régulièrement":
                $score = $score + (1*$poids);
                $coeffUser[20] = 0.5;
                break;
            case "Un peu":
                $score = $score + (0.5*$poids);
                $coeffUser[20] = 0.25;
                break;
            default:
            break;
        }

        //logo = 19
        $poids = 1;
        switch ($result[20]) {
            case "Tout le temps":
            $score = $score + (2*$poids);
            $coeffUser[21] = 1;
            break;
            case "Régulièrement":
            $score = $score + (1*$poids);
            $coeffUser[21] = 0.5;
            break;
            case "Un peu":
            $score = $score + (0.5*$poids);
            $coeffUser[21] = 0.25;
            break;
            default:
            break;
        }

        //robot = 20
        $poids = -3;
        switch ($result[21]) {
        case "Tout le temps":
            $score = $score + (2*$poids);
            $coeffUser[22] = 1;
            break;
        case "Régulièrement":
            $score = $score + (1*$poids);
            $coeffUser[22] = 0.5;
            break;
        case "Un peu":
            $score = $score + (0.5*$poids);
            $coeffUser[22] = 0.25;
            break;
        default:
            break;
        }

        //appli mobile = colonne 21
        $poids = 3;
        switch ($result[22]) {
        case "Tout le temps":
            $score = $score + (2*$poids);
            $coeffUser[23] = 1;
            break;
        case "Régulièrement":
            $score = $score + (1*$poids);
            $coeffUser[23] = 0.5;

            break;
        case "Un peu":
            $score = $score + (0.5*$poids);
            $coeffUser[23] = 0.25;

            break;
        default:
            break;
        }

        //systeme electronique = colonne 24
        $poids = -4;
        switch ($result[25]) {
        case "Tout le temps":
            $score = $score + (2*$poids);
            $coeffUser[24] = 1;

            break;
        case "Régulièrement":
            $score = $score + (1*$poids);
            $coeffUser[24] = 0.5;

            break;
        case "Un peu":
            $score = $score + (0.5*$poids);
            $coeffUser[24] = 0.25;

            break;
        default:
            break;
        }

        // Linux + Windows
        if(($result[14]=="Tout le temps" || $result[14]=="Régulièrement") && ($result[16]=="Un peu" || $result[16]=="Jamais")){
            $coeffUser[25] = 1;
            $score+= -4;
        }
        // Mac + Windows
        if(($result[15]=="Tout le temps" || $result[15]=="Régulièrement") && ($result[16]=="Tout le temps" ||  $result[16]=="Régulièrement")){
            $score+= 5;
            $coeffUser[26] = 1;
        }
        // Apple + Mac
        if(($result[6]=="Apple") && ($result[15]=="Tout le temps" || $result[15]=="Régulièrement"|| $result[15]=="Un peu")){
            $score+= 3;
            $coeffUser[27] = 1;
        }

     

        $coeffs[$result[1]] = $coeffUser;

    }
 
?>
