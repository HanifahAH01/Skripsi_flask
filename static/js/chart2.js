document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_all";
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var responseData = JSON.parse(this.responseText);
            var Gedung = responseData.kapasitas_list.map(function (elem) {
                return elem.Gedung;
            });

            // Ekstrak nama ruangan dan kapasitas menggunakan flatMap
            var Nama_Ruangan = responseData.kapasitas_list.flatMap(function (elem) {
                return elem.Ruangan.map(function (ruangan) {
                    return ruangan.Nama_Ruangan;
                });
            });

            var Kapasitas = responseData.kapasitas_list.flatMap(function (elem) {
                return elem.Ruangan.map(function (ruangan) {
                    return ruangan.Kapasitas;
                });
            });

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup myChart 1
            const data = {
                labels: Gedung,
                datasets: [{
                    label: 'Total Ruangan',
                    data: Jumlah_Total_Ruangan,
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'pie',
                data: data,
            };

            // render init block
            const myChart3 = new Chart(
                document.getElementById('myChart3'),
                config
            );
        }
    }
});