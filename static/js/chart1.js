var xmlhttp = new XMLHttpRequest();
var url = "http://127.0.0.1:54587/data_dosen";
xmlhttp.open("GET", url, true);
xmlhttp.send();
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
        // console.log(Total)

        const ctx = document.getElementById('myChart');

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

// var xmlhttp = new XMLHttpRequest();
// var url = "http://127.0.0.1:54587/data_dosen";
// xmlhttp.open("GET", url, true);
// xmlhttp.send();
// xmlhttp.onreadystatechange = function () {
//     if (this.readyState == 4 && this.status == 200) {
//         var data = JSON.parse(this.responseText);
//         // console.log(data);
//         Dosen = data.dosen_list.map(function (elem) {
//             return elem.Dosen;
//         })
//         Total = data.dosen_list.map(function (elem) {
//             return elem.Total;
//         })
//         // console.log(Total)

//         const ctx = document.getElementById('myChart');

//         new Chart(ctx, {
//             type: 'bar',
//             data: {
//                 labels: Dosen,
//                 datasets: [{
//                     axis: 'y',
//                     label: 'Total',
//                     data: Total,
//                     borderWidth: 1
//                 }]
//             },
//             options: {
//                 indexAxis: 'y',
//                 scales: {
//                     x: {
//                         beginAtZero: true
//                     }
//                 },
//                 plugins: {
//                     scrollbar: {
//                         autoHide: true,
//                         mode: 'y',
//                         min: 0,
//                         max: 1500 // Sesuaikan dengan jumlah maksimum data Anda
//                     }
//                 }
//             }
//         });

//     }
// }
