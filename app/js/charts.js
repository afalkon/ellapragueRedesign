

// Devices Chart
google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);


function drawChart() {

    var element = document.getElementById('donutchart');
    var deviceData = element.getAttribute("data-attribute");
    var deviceData = JSON.parse(deviceData);
    
    var data = google.visualization.arrayToDataTable([
        ['', ''],
        ['Smartphones', Number(deviceData[0])],
        ['Tablets', Number(deviceData[1])],
        ['PC\'s', Number(deviceData[2])]
    ]);

    var options = {
        title: 'Устройства',
        pieHole: 0.3,
    };


    var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
    chart.draw(data, options);

    // Geo Chart
    google.charts.load('current', {
        'packages': ['geochart'],
    });
    google.charts.setOnLoadCallback(drawRegionsMap);

    function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
            ['Country', 'Popularity'],
            ['Germany', 50],
            ['Czech republic', 70],
            ['Israel', 25],
            ['France', 32]
        ]);

        var options = {
            region: '150'
        };

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
    }

    // Visitors Chart
    google.charts.load('current', { 'packages': ['line'] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('number', 'Day');
        data.addColumn('number', 'Unique visits');
        data.addColumn('number', 'Sessions');
        data.addColumn('number', 'Conversions');

        data.addRows([
            [1, 120, 80.8, 41.8],
            [2, 30.9, 69.5, 32.4],
            [3, 25.4, 57, 25.7],
            [4, 11.7, 18.8, 10.5],
            [5, 11.9, 17.6, 10.4],
            [6, 8.8, 13.6, 7.7],
            [7, 7.6, 12.3, 9.6]
        ]);

        var options = {
            chart: {
                title: 'Visits statistics',
                subtitle: 'Last 30 days'
            },
            width: 800,
            height: 250,
            axes: {
                x: {
                    0: { side: 'top' }
                }
            }
        };

        var chart = new google.charts.Line(document.getElementById('curve_chart'));

        chart.draw(data, google.charts.Line.convertOptions(options));
    }
}
