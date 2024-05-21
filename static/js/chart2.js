// // const ctx = document.getElementById('myChart2');
// const ctx = document.getElementById('myChart2');

// new Chart(ctx, {
//     type: 'bar',
//     data: {
//         labels: ['Red', 'Blue', 'Yellow', 'Bluefhn', 'Purple', 'Orange'],
//         datasets: [{
//             label: '# of Votes',
//             data: [12, 19, 3, 5, 2, 3],
//             borderWidth: 1
//         }]
//     },
//     options: {
//         scales: {
//             y: {
//                 beginAtZero: true
//             }
//         }
//     }
// });

xmlhttp.onreadystatechange = function() {
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

        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: Dosen,
                datasets: [{
                    axis: 'y',
                    label: 'Total',
                    data: Total,
                    borderWidth: 1,
                    barThickness: 20 
                }]
            },
            options: {
                indexAxis: 'y',
                scales: {
                    x: {
                        beginAtZero: true
                    }
                }
            }
        });
    }
}
