function renderProportion(nb_ips, nb_astre, nb_neutre){
    Highcharts.chart('container', {

        chart: {
            type: 'item'
        },
    
        title: {
            text: 'Proportion de Astre et d\'IPS'
        },
    
        subtitle: {
            text: ''
        },
    
        legend: {
            labelFormat: '{name} <span style="opacity: 0.4">{y}</span>'
        },
    
        series: [{
            name: 'Nombre d\'étudiants',
            keys: ['name', 'y', 'color', 'label'],
            data: [
                ['ASTRE', nb_astre, '#95CEFF', 'Nombre d\'ASTRE'],
                ['Neutre', nb_neutre, '#990000', 'Nombre de personne neutre'],
                ['IPS', nb_ips, '#5C5C61', 'Nombre d\'IPS']
                
             
            ],
            dataLabels: {
                enabled: true,
                format: '{point.label}'
            },
    
            // Circular options
            center: ['50%', '88%'],
            size: '170%',
            startAngle: -100,
            endAngle: 100
        }]
    });
    
}
