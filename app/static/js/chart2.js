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
                        'rgb(255, 0, 0)', //merah
                        'rgb(0, 0, 255)', //biru
                        'rgb(0, 255, 0)', //hijau
                        'rgb(255, 255, 0)', //kuning
                        'rgb(153, 102, 255)', //default
                        'rgb(255, 159, 64)' //default
                    ],
                    borderColor: [
                        'rgb(255, 99, 132)',
                        'rgb(54, 162, 235)',
                        'rgb(255, 206, 86)',
                        'rgb(75, 192, 192)',
                        'rgb(153, 102, 255)',
                        'rgb(255, 159, 64)'
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(133, 11, 11)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(232, 62, 62)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(237, 98, 29)';
                } else if (value >= 61 && value <= 100) {
                    return 'rgb(243, 232, 78)';
                }
                return 'rgb(155, 236, 0)'; // Warna default jika nilai tidak sesuai rentang
            }

            var backgroundColors = Kapasitas.map(getColor);
            var borderColors = Kapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    backgroundColor: backgroundColors, // Warna latar belakang
                    borderColor: borderColors, // Warna border
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(133, 11, 11)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(232, 62, 62)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(237, 98, 29)';
                } else if (value >= 61 && value <= 100) {
                    return 'rgb(243, 232, 78)';
                }
                return 'rgb(155, 236, 0)'; // Warna default jika nilai tidak sesuai rentang
            }

            var backgroundColors = Kapasitas.map(getColor);
            var borderColors = Kapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    backgroundColor: backgroundColors, // Warna latar belakang
                    borderColor: borderColors, // Warna border
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(133, 11, 11)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(232, 62, 62)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(237, 98, 29)';
                } else if (value >= 61 && value <= 100) {
                    return 'rgb(243, 232, 78)';
                }
                return 'rgb(155, 236, 0)'; // Warna default jika nilai tidak sesuai rentang
            }

            var backgroundColors = Kapasitas.map(getColor);
            var borderColors = Kapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    backgroundColor: backgroundColors, // Warna latar belakang
                    borderColor: borderColors, // Warna border
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(133, 11, 11)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(232, 62, 62)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(237, 98, 29)';
                } else if (value >= 61 && value <= 100) {
                    return 'rgb(243, 232, 78)';
                }
                return 'rgb(155, 236, 0)'; // Warna default jika nilai tidak sesuai rentang
            }

            var backgroundColors = Kapasitas.map(getColor);
            var borderColors = Kapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: Kapasitas,
                    backgroundColor: backgroundColors, // Warna latar belakang
                    borderColor: borderColors,
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