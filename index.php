<?php include "calcul.php";?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choix Astre IPS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/item-series.js"></script>
    <script type="text/javascript">
		var coeffs = <?php echo json_encode($coeffs);?>;
	</script>
</head>
<body>
    <div class="container">
        <div class="py-5 text-center">
        
            <img class="d-block mx-auto mb-4" src="img/logo.svg" alt="" width="300" >
            <p class="lead">Vous trouverez ci-dessous le résultat de nos hypothèses concernant le choix ASTRE/IPS. Vous pourrez modifier les poids de chaque hypothèse en bougeant les curseurs. Plus la valeur est positive plus la personne aura de chances d'aller en IPS, à l'inverse, plus la valeur est négative plus celle-ci aura de chances d'aller en ASTRE. Pour réinitialiser les poids, rechargez la page.</p>
        </div>
    </div>
   
    <form class="row justify-content-center">
        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Prépa BL</label>
            <input type="range" class="form-control-range"  name="indPrepa" id="indPrepa" min="-15" max="15" value="10" onchange="update()" oninput="indPrepaOut.value = indPrepa.value">
            <output name="indPrepaOut" id="indPrepaOut">10</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">TOEIC</label>
            <input type="range" class="form-control-range"  name="indTOEIC" id="indTOEIC" min="-15" max="15" value="2" onchange="update()" oninput="indTOEICOut.value = indTOEIC.value">
            <output name="indTOEICOut" id="indTOEICOut">2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">ENSIMElec</label>
            <input type="range" class="form-control-range"  name="indEnsimelec" id="indEnsimelec" min="-15" max="15" value="-2" onchange="update()" oninput="indEnsimelecOut.value = indEnsimelec.value">
            <output name="indEnsimelecOut" id="indEnsimelecOut">-2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Trublions du plateau</label>
            <input type="range" class="form-control-range"  name="indTrublions" id="indTrublions" min="-15" max="15" value="-1" onchange="update()" oninput="indTrublionsOut.value = indTrublions.value">
            <output name="indTrublionsOut" id="indTrublionsOut">-1</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Beaucoup d'associations (>4)</label>
            <input type="range" class="form-control-range"  name="indAssos" id="indAssos" min="-15" max="15" value="5" onchange="update()" oninput="indAssosOut.value = indAssos.value">
            <output name="indAssosOut" id="indAssosOut">5</output>
        </div>
        
        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Conservatoire ou musique</label>
            <input type="range" class="form-control-range"  name="indMusique" id="indMusique" min="-15" max="15" value="2" onchange="update()" oninput="indMusiqueOut.value = indMusique.value">
            <output name="indMusiqueOut" id="indMusiqueOut">2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Navigateur</label>
            <input type="range" class="form-control-range"  name="indNavigateur" id="indNavigateur" min="-15" max="15" value="4" onchange="update()" oninput="indNavigateurOut.value = indNavigateur.value">
            <output name="indNavigateurOut" id="indNavigateurOut">4</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Assembleur</label>
            <input type="range" class="form-control-range"  name="indAssembleur" id="indAssembleur" min="-15" max="15" value="-5" onchange="update()" oninput="indAssembleurOut.value = indAssembleur.value">
            <output name="indAssembleurOut" id="indAssembleurOut">-5</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">HTML</label>
            <input type="range" class="form-control-range"  name="indHTML" id="indHTML" min="-15" max="15" value="3" onchange="update()" oninput="indHTMLOut.value = indHTML.value">
            <output name="indHTMLOut" id="indHTMLOut">3</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Java</label>
            <input type="range" class="form-control-range"  name="indJava" id="indJava" min="-15" max="15" value="3" onchange="update()" oninput="indJavaOut.value = indJava.value">
            <output name="indJavaOut" id="indJavaOut">3</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Arduino</label>
            <input type="range" class="form-control-range"  name="indArduino" id="indArduino" min="-15" max="15" value="-3" onchange="update()" oninput="indArduinoOut.value = indArduino.value">
            <output name="indArduinoOut" id="indArduinoOut">-3</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">HTML ET (Android ou IONIC)</label>
            <input type="range" class="form-control-range"  name="indHTMLAndroid" id="indHTMLAndroid" min="-15" max="15" value="5" onchange="update()" oninput="indHTMLAndroidOut.value = indHTMLAndroid.value">
            <output name="indHTMLAndroidOut" id="indHTMLAndroidOut">5</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Robot et capteur</label>
            <input type="range" class="form-control-range"  name="indRobotCap" id="indRobotCap" min="-15" max="15" value="-6" onchange="update()" oninput="indRobotCapOut.value = indRobotCap.value">
            <output name="indRobotCapOut" id="indRobotCapOut">-6</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Codeblock</label>
            <input type="range" class="form-control-range"  name="indCodeblock" id="indCodeblock" min="-15" max="15" value="-2" onchange="update()" oninput="indCodeblockOut.value = indCodeblock.value">
            <output name="indCodeblockOut" id="indCodeblockOut">-2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Android</label>
            <input type="range" class="form-control-range"  name="indAndroid" id="indAndroid" min="-15" max="15" value="4" onchange="update()" oninput="indAndroidOut.value = indAndroid.value">
            <output name="indAndroidOut" id="indAndroidOut">4</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">IntelliJ</label>
            <input type="range" class="form-control-range"  name="indIntelliJ" id="indIntelliJ" min="-15" max="15" value="2" onchange="update()" oninput="indIntelliJOut.value = indIntelliJ.value">
            <output name="indIntelliJOut" id="indIntelliJOut">2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">LabView</label>
            <input type="range" class="form-control-range"  name="indLabView" id="indLabView" min="-15" max="15" value="-5" onchange="update()" oninput="indLabViewOut.value = indLabView.value">
            <output name="indLabViewOut" id="indLabViewOut">-5</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Unity</label>
            <input type="range" class="form-control-range"  name="indUnity" id="indUnity" min="-15" max="15" value="2" onchange="update()" oninput="indUnityOut.value = indUnity.value">
            <output name="indUnityOut" id="indUnityOut">2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Unreal</label>
            <input type="range" class="form-control-range"  name="indUnreal" id="indUnreal" min="-15" max="15" value="2" onchange="update()" oninput="indUnrealOut.value = indUnreal.value">
            <output name="indUnrealOut" id="indUnrealOut">2</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Ionic</label>
            <input type="range" class="form-control-range"  name="indIonic" id="indIonic" min="-15" max="15" value="5" onchange="update()" oninput="indIonicOut.value = indIonic.value">
            <output name="indIonicOut" id="indIonicOut">5</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Jeux Vidéos</label>
            <input type="range" class="form-control-range"  name="indJV" id="indJV" min="-15" max="15" value="3" onchange="update()" oninput="indJVOut.value = indJV.value">
            <output name="indJVOut" id="indJVOut">3</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Création de logo</label>
            <input type="range" class="form-control-range"  name="indLogo" id="indLogo" min="-15" max="15" value="1" onchange="update()" oninput="indLogoOut.value = indLogo.value">
            <output name="indLogoOut" id="indLogoOut">1</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Robot</label>
            <input type="range" class="form-control-range"  name="indRobot" id="indRobot" min="-15" max="15" value="-6" onchange="update()" oninput="indRobotOut.value = indRobot.value">
            <output name="indRobotOut" id="indRobotOut">-6</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Création d'appli mobile</label>
            <input type="range" class="form-control-range"  name="indAppli" id="indAppli" min="-15" max="15" value="3" onchange="update()" oninput="indAppliOut.value = indAppli.value">
            <output name="indAppliOut" id="indAppliOut">3</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Système électronique</label>
            <input type="range" class="form-control-range"  name="indSE" id="indSE" min="-15" max="15" value="-7" onchange="update()" oninput="indSEOut.value = indSE.value">
            <output name="indSEOut" id="indSEOut">-7</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Linux et peu Windows</label>
            <input type="range" class="form-control-range"  name="indLinuxWind" id="indLinuxWind" min="-15" max="15" value="-4" onchange="update()" oninput="indLinuxWindOut.value = indLinuxWind.value">
            <output name="indLinuxWindOut" id="indLinuxWindOut">-4</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Mac et Windows</label>
            <input type="range" class="form-control-range"  name="indMacWind" id="indMacWind" min="-15" max="15" value="5" onchange="update()" oninput="indMacWindOut.value = indMacWind.value">
            <output name="indMacWindOut" id="indMacWindOut">5</output>
        </div>

        <div class="form-group col-4 col-md-2 mx-2 text-center">
            <label for="formControlRange">Apple et Mac</label>
            <input type="range" class="form-control-range"  name="indAppleMac" id="indAppleMac" min="-15" max="15" value="3" onchange="update()" oninput="indAppleMacOut.value = indAppleMac.value">
            <output name="indAppleMacOut" id="indAppleMacOut">3</output>
        </div>
    </form>

    <figure class="highcharts-figure">
        <div id="container"></div>

    </figure>
    
    <figure class="highcharts-figure">
        <div id="container2" style="height: 900px; "></div>

    </figure>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="js/DetailChart.js"></script>
    <script src="js/ProportionChart.js"></script>
    <script src="js/calc.js"></script>
</body>
</html>