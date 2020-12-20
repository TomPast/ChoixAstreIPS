function update(){
    var poids = [];

    //Récupération de tous les poids (par les sliders)
    poids.push(+document.getElementById('indPrepa').value);
    poids.push(+document.getElementById('indTOEIC').value);
    poids.push(+document.getElementById('indEnsimelec').value);
    poids.push(+document.getElementById('indTrublions').value);
    poids.push(+document.getElementById('indAssos').value);
    poids.push(+document.getElementById('indMusique').value);

    poids.push(+document.getElementById('indNavigateur').value);
    poids.push(+document.getElementById('indAssembleur').value);
    poids.push(+document.getElementById('indHTML').value);
    poids.push(+document.getElementById('indJava').value);
    poids.push(+document.getElementById('indArduino').value);
    poids.push(+document.getElementById('indHTMLAndroid').value);

    poids.push(+document.getElementById('indRobotCap').value);
    poids.push(+document.getElementById('indCodeblock').value);
    poids.push(+document.getElementById('indAndroid').value);
    poids.push(+document.getElementById('indIntelliJ').value);
    poids.push(+document.getElementById('indLabView').value);
    poids.push(+document.getElementById('indUnity').value);
    poids.push(+document.getElementById('indUnreal').value);

    poids.push(+document.getElementById('indIonic').value);
    poids.push(+document.getElementById('indJV').value);
    poids.push(+document.getElementById('indLogo').value);
    poids.push(+document.getElementById('indRobot').value);
    poids.push(+document.getElementById('indAppli').value);

    poids.push(+document.getElementById('indSE').value);
    poids.push(+document.getElementById('indLinuxWind').value);
    poids.push(+document.getElementById('indMacWind').value);
    poids.push(+document.getElementById('indAppleMac').value);

    //Calcul des scores pour chacun des étudiants
    var result = [];
    var result_ips = new Array(Object.keys(coeffs).length).fill(0);
    var result_astre = new Array(Object.keys(coeffs).length).fill(0);
    let nb_ips = 0;
    let nb_astre = 0;
    let nb_neutre = 0;


    let nb_ligne = 0;
    Object.keys(coeffs).forEach(user =>{
        let score = 0;
        for (let i = 0; i < 28; i++) {
            score += coeffs[user][i] * poids[i];
        }
        
        if(score > 0){
            nb_ips++;
            result_ips[nb_ligne] = score;
        }else if(score <0){
            nb_astre++;
            result_astre[nb_ligne] = score;
        }else{
            nb_neutre++;
        }
        result.push({
            name : user,
            data : score
        })
        nb_ligne++;
    })

    //Actualisation des graphiques avec les nouveaux résultats
    renderProportion(nb_ips, nb_astre, nb_neutre);
    renderDetail(Object.keys(coeffs),result_ips, result_astre);
}

update();