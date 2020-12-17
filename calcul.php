<?php
    $mysqli= new mysqli("localhost", "root", "", "astreips");
    $mysqli->query("SET NAMES 'utf8'");
    $JSONResult = array();

    $query = "SELECT * FROM astre_ips";
    $resultUsers = $mysqli->query($query);
    while($result = $resultUsers -> fetch_row()){
        $score = 0;
        
        //Parcours
        if($result[3] == "Prepa BL"){
            $score += 10;
        }

        //TOEIC
        if(strpos($result[4], 'Oui')!== false ||$result[4]!='Non'){
            $score += 2;
        }
        
        //Association ENSIMElec
        if(strpos($result[5], 'ENSIM\'Elec')!== false){
            $score += -3;
            
        }

        //Association Trublions du plateau
        if(strpos($result[5], 'Trublions du Plateau')!== false){
            $score += -2;
        }

        //Beaucoup d'associations (> 4)
        if(substr_count($result[5], ';') > 4){
            $score += 5;
        }

        //Conservatoire ou musique
        if(strpos($result[8], 'musique')!== false || strpos($result[8], 'Conservatoire')!== false){
            $score += 2;

        }
        
        //Navigateur
        switch($result[10]){
            case "Safari":
                $score += 4;
                break;
            case "Edge" :
                $score += -3;
                break;
        }

        //Assembleur
        if(strpos($result[11], 'Assembleur')!== false){
            $score += -5;
        }

        //HTML
        if(strpos($result[11], 'HTML5')!== false){
            $score += 3;
        }

        //Java
        if(strpos($result[11], 'Java')!== false){
            $score += 3;
        }

        //C++
        if(strpos($result[11], 'C++')!== false){
            $score += -3;
        }

        $poidsArduino = -3;
        switch($result[12]){
            case "Jamais":
                break;
            case "Un peu":
                $score += 0.5 * $poidsArduino;
                break;
            case "Régulièrement":
                $score += 1 * $poidsArduino;
                break;
            case "Tout le temps":
                $score += 2 * $poidsArduino;
                break;
        }

        //Android ou Ionic + HTML
        if(strpos($result[11], 'HTML5')!== false && ($result[12]=="Régulièrement" || $result[12]=="Tout le temps" || $result[38] == "J'aime bien")){
            $score += 5;
        }

        //Robot + Capteur
        if(($result[21]=="Régulièrement" || $result[21]=="Tout le temps")&&($result[25]=="Régulièrement" || $result[25]=="Tout le temps")){
            $score += -6;
        }

        
        //Codeblock
        switch($result[28]){
            case "J'aime bien":
                $score += -1;
                break;
            case "Je n'aime pas":
                $score += +1;
                break;
            case "Je suis fan":
                $score += +2;
                break;
        }

        //Android
        switch($result[29]){
            case "Je suis fan":
                $score += +4;
                break;
            case "J'aime bien":
                $score += +2;
                break;
            case "Je n'aime pas":
                $score += -2;
                break;   
        }

        //IntelliJ
        switch($result[31]){
            case "Je suis fan":
                $score += +2;
                break;
            case "J'aime bien":
                $score += +1;
                break;
            case "Je n'aime pas":
                $score += -1;
                break;   
        }

        //LabView
        switch($result[32]){
            case "Je suis fan":
                $score += -5;
                break;
            case "J'aime bien":
                $score += -3;
                break;
            case "Je n'aime pas":
                $score += +1;
                break;   
        }

        //Unity
        switch($result[33]){
            case "Je suis fan":
                $score += +2;
                break;
            case "J'aime bien":
                $score += +1;
                break;
            case "Je n'aime pas":
                $score += -1;
                break;   
        }

        //Unreal
        switch($result[34]){
            case "Je suis fan":
                $score += +2;
                break;
            case "J'aime bien":
                $score += +1;
                break;
            case "Je n'aime pas":
                $score += -1;
                break;   
        }

        //Ionic
        switch($result[38]){
            case "Je suis fan":
                $score += +5;
                break;
            case "J'aime bien":
                $score += +3;
                break;
            case "Je n'aime pas":
                $score += -2;
                break;   
        }

        
        echo $score;
        echo "<br>";
    }


?>
