<?php
    $mysqli= new mysqli("localhost", "root", "", "questionnaire");
    $mysqli->query("SET NAMES 'utf8'");

    $JSONResult = array();


    $query = "SELECT * FROM astre_ips";
    $resultUsers = $mysqli->query($query);
    while($result = $resultUsers -> fetch_row()){
        $score = 0;
        //Linux et Linux+Windows
        $poids = -5;
        $poidsCombo = -4;
        switch ($result[14]) {
          case "Tout le temps":
            $score = $score + (2*$poids);
            break;
          case "Régulièrement":
            $score = $score + (1*$poids);
            break;
          case "Un peu":
            $score = $score + (0.5*$poids);
            break;
          default:
            break;
        }
        //Mac et Mac+Windows
        $poids = 8;
        $poidsCombo = 5;
        switch ($result[15]) {
          case "Tout le temps":
            $score = $score + (2*$poids);
            break;
          case "Régulièrement":
            $score = $score + (1*$poids);
            break;
          case "Un peu":
            $score = $score + (0.5*$poids);
            break;
          default:
            break;
      }
      // Linux + Windows
      if(($result[14]=="Tout le temps" || $result[14]=="Régulièrement") && ($result[16]=="Tout le temps" || $result[16]=="Régulièrement")){
        $score+= -4;
      }
      // Mac + Windows
      if(($result[15]=="Tout le temps" || $result[15]=="Régulièrement") && ($result[16]=="Tout le temps" || $result[16]=="Régulièrement")){
        $score+= 5;
      }
      // Apple + Mac
      if(($result[6]=="Apple") && ($result[16]=="Tout le temps" || $result[16]=="Régulièrement")){
        $score+= 3;
      }


      // ACTIVITES
      //retouche = 13
      $poids = 1;
      switch ($result[13]) {
        case "Tout le temps":
          $score = $score + (2*$poids);
          break;
        case "Régulièrement":
          $score = $score + (1*$poids);
          break;
        case "Un peu":
          $score = $score + (0.5*$poids);
          break;
        default:
          break;
    }

    //CAO = 18
    $poids = -2;
    switch ($result[18]) {
      case "Tout le temps":
        $score = $score + (2*$poids);
        break;
      case "Régulièrement":
        $score = $score + (1*$poids);
        break;
      case "Un peu":
        $score = $score + (0.5*$poids);
        break;
      default:
        break;
    }

  //jeu video = 22
  $poids = 1;
  switch ($result[22]) {
    case "Tout le temps":
      $score = $score + (2*$poids);
      break;
    case "Régulièrement":
      $score = $score + (1*$poids);
      break;
    case "Un peu":
      $score = $score + (0.5*$poids);
      break;
    default:
      break;
  }

  //logo = 19
  $poids = 1;
  switch ($result[19]) {
    case "Tout le temps":
      $score = $score + (2*$poids);
      break;
    case "Régulièrement":
      $score = $score + (1*$poids);
      break;
    case "Un peu":
      $score = $score + (0.5*$poids);
      break;
    default:
      break;
}

//robot = 20
$poids = -3;
switch ($result[20]) {
  case "Tout le temps":
    $score = $score + (2*$poids);
    break;
  case "Régulièrement":
    $score = $score + (1*$poids);
    break;
  case "Un peu":
    $score = $score + (0.5*$poids);
    break;
  default:
    break;
}

//appli mobile = colonne 21
$poids = 3;
switch ($result[21]) {
  case "Tout le temps":
    $score = $score + (2*$poids);
    break;
  case "Régulièrement":
    $score = $score + (1*$poids);
    break;
  case "Un peu":
    $score = $score + (0.5*$poids);
    break;
  default:
    break;
}

//systeme electronique = colonne 24
$poids = -3;
switch ($result[24]) {
  case "Tout le temps":
    $score = $score + (2*$poids);
    break;
  case "Régulièrement":
    $score = $score + (1*$poids);
    break;
  case "Un peu":
    $score = $score + (0.5*$poids);
    break;
  default:
    break;
}
  print_r($score);
  echo "<br/>";
}

?>
