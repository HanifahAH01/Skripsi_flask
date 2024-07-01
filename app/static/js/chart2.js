// My chart 3 ( Diagram Pie Kapsitas Per Gedung )
document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_all";  // pastikan port sesuai dengan app Flask
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var responseData = JSON.parse(this.responseText);
            var Gedung = responseData.kapasitas_list.map(function (elem) {
                return elem.Gedung;
            });

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup chart data
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

// My Chart 4 ( Diagram Bar Kapasitas Gedung A )
document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_fpmipa_a";
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

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
            };

            // render init block
            const myChart4 = new Chart(
                document.getElementById('myChart4'),
                config
            );
        }
    }
});

// My Chart 4 ( Diagram Bar Kapasitas Gedung B )
document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_fpmipa_b";
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

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
            };

            // render init block
            const myChart5 = new Chart(
                document.getElementById('myChart5'),
                config
            );
        }
    }
});

// My Chart 6 ( Diagram Bar Kapasitas Gedung c )
document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_fpmipa_c";
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

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
            };

            // render init block
            const myChart6 = new Chart(
                document.getElementById('myChart6'),
                config
            );
        }
    }
});

// My Chart 7 ( Diagram Bar Kapasitas Bangunan Praktek Botani )
document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kapasitas_fpmipa_lab";
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

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
            };

            // render init block
            const myChart7 = new Chart(
                document.getElementById('myChart7'),
                config
            );
        }
    }
});