function render(nb_ips, nb_astre, nb_neutre){
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
                ['IPS', nb_ips, '#BE3075', 'Nombre d\'IPS'],
                ['Neutre', nb_neutre, '#0000FF', 'Nombre de personne neutre'],
                ['ASTRE', nb_astre, '#FFFFF', 'Nombre d\'ASTRE'],
             
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
