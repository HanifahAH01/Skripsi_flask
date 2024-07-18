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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(10, 58, 252)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(14, 104, 239)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(0, 153, 255)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(0, 204, 255)';
                } else if (value >= 81 && value >= 100) {
                    return 'rgb(0, 255, 255)';
                }
            }

            var backgroundColors = sortedKapasitas.map(getColor);
            var borderColors = sortedKapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(169, 66, 6)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(196, 80, 13)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(229, 102, 28)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(255, 132, 61)';
                } else if (value >= 81 && value >= 100) {
                    return 'rgb(246, 139, 77)';
                }
            }

            var backgroundColors = sortedKapasitas.map(getColor);
            var borderColors = sortedKapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
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

            // Tentukan warna berdasarkan nilai kapasitas
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(57, 104, 55)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(73, 123, 69)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(94, 137, 90)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(121, 174, 114)';
                } else if (value >= 81 && value >= 100) {
                    return 'rgb(155, 194, 148)';
                }
            }

            var backgroundColors = sortedKapasitas.map(getColor);
            var borderColors = sortedKapasitas.map(getColor); // Sama dengan background color

            // setup myChart 1
            const data = {
                labels: sortedNama_Ruangan,
                datasets: [{
                    label: Gedung[0],
                    data: sortedKapasitas,
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
                    return 'rgb(255, 239, 205)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(237, 206, 139)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(250, 207, 120)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(240, 193, 93)';
                } else if (value >= 81 && value >= 100) {
                    return 'rgb(237, 182, 0)';
                }
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