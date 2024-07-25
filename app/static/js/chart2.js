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
                    backgroundColor: [
                        'rgb(140, 55, 6)', //coklat (B)
                        'rgb(0, 0, 255)', // Biru (A)
                        'rgb(25, 83, 26)', //hijau (C)
                        'rgb(255, 204, 0)', //kuning (Lab)
                    ],
                    borderColor: [
                        'rgb(140, 55, 6)', //coklat (B)
                        'rgb(0, 0, 255)', // Biru (A)
                        'rgb(25, 83, 26)', //hijau (C)
                        'rgb(255, 204, 0)', //kuning (Lab)

                    ],
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'pie',
                data: data,
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                }
            };

            // render init block
            const myChart3 = new Chart(
                document.getElementById('myChart3'),
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
            var ruanganData = responseData.kapasitas_list.flatMap(function (elem) {
                return elem.Ruangan.map(function (ruangan) {
                    return {
                        Nama_Ruangan: ruangan.Nama_Ruangan,
                        Kapasitas: ruangan.Kapasitas
                    };
                });
            });

            // Urutkan berdasarkan kapasitas dari yang terbesar ke yang terkecil
            ruanganData.sort(function (a, b) {
                return b.Kapasitas - a.Kapasitas;
            });

            // Pisahkan kembali Nama_Ruangan dan Kapasitas setelah diurutkan
            var sortedNama_Ruangan = ruanganData.map(function (ruangan) {
                return ruangan.Nama_Ruangan;
            });

            var sortedKapasitas = ruanganData.map(function (ruangan) {
                return ruangan.Kapasitas;
            });

            // Warna tetap untuk backgroundColor dan borderColor
            var color = 'rgb(140, 55, 6)';

            // setup myChart 1
            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
                    backgroundColor: color, // Warna latar belakang
                    borderColor: color, // Warna border
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
                options: {
                    indexAxis: 'y', // Membuat tulisan menjadi horizontal
                    scales: {
                        x: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: true
                        }
                    }
                }
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
            var ruanganData = responseData.kapasitas_list.flatMap(function (elem) {
                return elem.Ruangan.map(function (ruangan) {
                    return {
                        Nama_Ruangan: ruangan.Nama_Ruangan,
                        Kapasitas: ruangan.Kapasitas
                    };
                });
            });

            // Urutkan berdasarkan kapasitas dari yang terbesar ke yang terkecil
            ruanganData.sort(function (a, b) {
                return b.Kapasitas - a.Kapasitas;
            });

            // Pisahkan kembali Nama_Ruangan dan Kapasitas setelah diurutkan
            var sortedNama_Ruangan = ruanganData.map(function (ruangan) {
                return ruangan.Nama_Ruangan;
            });

            var sortedKapasitas = ruanganData.map(function (ruangan) {
                return ruangan.Kapasitas;
            });

            // Warna tetap untuk backgroundColor dan borderColor
            var color = 'rgb(25, 83, 26)';

            // setup myChart 1
            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
                    backgroundColor: color, // Warna latar belakang
                    borderColor: color, // Warna border
                    borderWidth: 1
                }]
            };

            // config 
            const config = {
                type: 'bar',
                data: data,
                options: {
                    indexAxis: 'y', // Membuat tulisan menjadi horizontal
                    scales: {
                        x: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: true
                        }
                    }
                }
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

            // Warna tetap untuk backgroundColor dan borderColor
            var color = 'rgb(255, 204, 0)';

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    backgroundColor: color, // Warna latar belakang
                    borderColor: color, // Warna border
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

// # ******************************************** #
// #                 Function                     #
// #          Ascending & Descending              #
// # ******************************************** #

document.addEventListener("DOMContentLoaded", function () {
    var charts = ['kapasitas_fpmipa_a', 'kapasitas_fpmipa_b', 'kapasitas_fpmipa_c', 'kapasitas_fpmipa_lab'];
    var chartElements = ['myChart4', 'myChart5', 'myChart6', 'myChart7'];
    var chartInstances = [];
    var chartColors = [
        'rgb(0, 0, 255)',     // myChart4
        'rgb(140, 55, 6)',    // myChart5
        'rgb(25, 83, 26)',    // myChart6
        'rgb(255, 204, 0)'    // myChart7
    ];

    function fetchData(url, callback) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var responseData = JSON.parse(this.responseText);
                callback(responseData);
            }
        };
    }

    function getColor(value, index) {
        return chartColors[index];
    }

    function updateChart(order) {
        chartInstances.forEach(function (instance, index) {
            fetchData('http://127.0.0.1:54587/' + charts[index], function (responseData) {
                var Gedung = responseData.kapasitas_list.map(function (elem) {
                    return elem.Gedung;
                });

                var ruanganData = responseData.kapasitas_list.flatMap(function (elem) {
                    return elem.Ruangan.map(function (ruangan) {
                        return {
                            Nama_Ruangan: ruangan.Nama_Ruangan,
                            Kapasitas: ruangan.Kapasitas
                        };
                    });
                });

                ruanganData.sort(function (a, b) {
                    return order === "asc" ? a.Kapasitas - b.Kapasitas : b.Kapasitas - a.Kapasitas;
                });

                var sortedNama_Ruangan = ruanganData.map(function (ruangan) {
                    return ruangan.Nama_Ruangan;
                });

                var sortedKapasitas = ruanganData.map(function (ruangan) {
                    return ruangan.Kapasitas;
                });

                var backgroundColors = sortedKapasitas.map(function (value, idx) {
                    return getColor(value, index);
                });
                var borderColors = backgroundColors; // Sama dengan background color

                const data = {
                    labels: sortedNama_Ruangan,
                    datasets: [{
                        label: Gedung[0],
                        data: sortedKapasitas,
                        backgroundColor: backgroundColors,
                        borderColor: borderColors,
                        borderWidth: 1
                    }]
                };

                instance.data = data;
                instance.update();
            });
        });
    }

    chartElements.forEach(function (elementId, index) {
        fetchData('http://127.0.0.1:54587/' + charts[index], function (responseData) {
            var Gedung = responseData.kapasitas_list.map(function (elem) {
                return elem.Gedung;
            });

            var ruanganData = responseData.kapasitas_list.flatMap(function (elem) {
                return elem.Ruangan.map(function (ruangan) {
                    return {
                        Nama_Ruangan: ruangan.Nama_Ruangan,
                        Kapasitas: ruangan.Kapasitas
                    };
                });
            });

            ruanganData.sort(function (a, b) {
                return b.Kapasitas - a.Kapasitas;
            });

            var sortedNama_Ruangan = ruanganData.map(function (ruangan) {
                return ruangan.Nama_Ruangan;
            });

            var sortedKapasitas = ruanganData.map(function (ruangan) {
                return ruangan.Kapasitas;
            });

            var backgroundColors = sortedKapasitas.map(function (value, idx) {
                return getColor(value, index);
            });
            var borderColors = backgroundColors;

            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
                    backgroundColor: backgroundColors,
                    borderColor: borderColors,
                    borderWidth: 1
                }]
            };

            const config = {
                type: 'bar',
                data: data,
                options: {
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: true
                        }
                    }
                }
            };

            var ctx = document.getElementById(elementId).getContext('2d');
            var myChart = new Chart(ctx, config);
            chartInstances.push(myChart);
        });
    });

    document.getElementById('sortOrder').addEventListener('change', function () {
        var order = this.value;
        updateChart(order);
    });
});