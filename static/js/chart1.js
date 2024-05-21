xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        var data = JSON.parse(this.responseText);
        // console.log(data);
        Dosen = data.dosen_list.map(function (elem) {
            return elem.Dosen;
        })
        Total = data.dosen_list.map(function (elem) {
            return elem.Total;
        })

        const ctx = document.getElementById('myChart');

        const chartContainer = document.querySelector('.chart');
        const maxHeight = 500; // Tentukan tinggi maksimum elemen chart di sini

        // Tambahkan scrollbar vertikal jika konten melebihi tinggi maksimum
        if (chartContainer.scrollHeight > maxHeight) {
            chartContainer.style.overflowY = 'auto';
            chartContainer.style.maxHeight = maxHeight + 'px';
        }

        // setup 
        const data = {
            labels: Dosen,
            datasets: [{
                label: 'Weekly Sales',
                data: Total,
                backgroundColor: [
                    'rgba(255, 26, 104, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(0, 0, 0, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 26, 104, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(0, 0, 0, 1)'
                ],
                borderWidth: 1
            }]
        };

        // config 
        const config = {
            type: 'bar',
            data: data2,
            options: {
                maintainAspectRatio: false,
                indexAxis: 'y',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        };

        // render init block
        const myChart = new Chart(
            document.getElementById('myChart'),
            config2
        );

        const subbox = document.querySelector('.subbox');

        subbox.style.height = '300px';
        if (myChart.data.labels.length > 7) {
            const newHeight = 300 + ((myChart.data.labels.length - 7) * 20);
            subbox.style.height = '${newHeight}px';

        }


        // Instantly assign Chart.js version
        const chartVersion = document.getElementById('chartVersion');
        chartVersion.innerText = Chart.version;
    }
}
