document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/booking_all"; // Sesuaikan dengan URL endpoint booking_all dari Flask
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var responseData = JSON.parse(this.responseText);

            // Mengambil data dari responseData
            var bookingList = responseData.booking_list;

            // Objek untuk menyimpan total penggunaan per ruangan
            var ruanganUsage = {};

            // Menghitung total penggunaan per ruangan
            bookingList.forEach(function (booking) {
                var namaRuangan = booking.Nama_Ruangan;
                if (!ruanganUsage[namaRuangan]) {
                    ruanganUsage[namaRuangan] = {
                        Nama_Ruangan: namaRuangan,
                        Total_Penggunaan: 0
                    };
                }
                ruanganUsage[namaRuangan].Total_Penggunaan = booking.Total_Penggunaan;
            });

            // Mengambil nama ruangan dan total penggunaan ke dalam array
            var namaRuangan = Object.keys(ruanganUsage);
            var totalPenggunaanRuangan = namaRuangan.map(function (ruangan) {
                return ruanganUsage[ruangan].Total_Penggunaan;
            });

            // Membuat data untuk chart
            var data = {
                labels: namaRuangan, // Label pada sumbu X
                datasets: [{
                    label: 'Total Penggunaan Ruangan',
                    data: totalPenggunaanRuangan, // Data total penggunaan
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }]
            };

            // Konfigurasi chart
            var config = {
                type: 'line', // Ubah ke bar chart untuk visualisasi yang lebih mudah
                data: data,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            };

            // Membuat chart menggunakan Chart.js
            var myChart8 = new Chart(
                document.getElementById('myChart8'), // Sesuaikan dengan ID elemen tempat chart ditampilkan
                config
            );
        }
    };
});

document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/booking_all"; // Sesuaikan dengan URL endpoint booking_all dari Flask
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
            if (this.status == 200) {
                var responseData = JSON.parse(this.responseText);

                // Mengambil data dari responseData
                var bookingList = responseData.booking_list;

                // Objek untuk menyimpan frekuensi penggunaan per hari
                var dayUsage = {
                    'Senin': 0,
                    'Selasa': 0,
                    'Rabu': 0,
                    'Kamis': 0,
                    'Jumat': 0,
                    'Sabtu': 0,
                    'Minggu': 0
                };

                // Menghitung frekuensi penggunaan per hari
                bookingList.forEach(function (booking) {
                    var namaHari = booking.Hari; // Asumsikan 'Hari' adalah field dalam bookingList yang berisi nama hari
                    if (dayUsage.hasOwnProperty(namaHari)) {
                        dayUsage[namaHari] += 1; // Tambahkan 1 untuk setiap kejadian
                    }
                });

                // Mengambil nama hari dan total frekuensi penggunaan ke dalam array
                var namaHari = Object.keys(dayUsage);
                var totalPenggunaanHari = namaHari.map(function (hari) {
                    return dayUsage[hari];
                });

                // Membuat data untuk chart
                var dataHari = {
                    labels: namaHari, // Label pada sumbu X
                    datasets: [{
                        label: 'Frekuensi Penggunaan per Hari',
                        data: totalPenggunaanHari, // Data frekuensi penggunaan per hari
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                };

                // Konfigurasi chart
                var configHari = {
                    type: 'line', // Line chart untuk visualisasi frekuensi penggunaan per hari
                    data: dataHari,
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true,
                                ticks: {
                                    precision: 0, // Menampilkan hanya angka bulat
                                    callback: function (value) {
                                        if (Number.isInteger(value)) {
                                            return value;
                                        }
                                    }
                                }
                            }
                        }
                    }
                };

                // Membuat chart menggunakan Chart.js
                var myChart9 = new Chart(
                    document.getElementById('myChart9'), // Sesuaikan dengan ID elemen tempat chart ditampilkan
                    configHari
                );
            } else {
                console.error('Error fetching data: ' + this.statusText);
            }
        }
    };
});

document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/kelas_prodi_data";
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var responseData = JSON.parse(this.responseText);

            var kelasProdiList = responseData.kelas_prodi_list;

            var dataKelasProdi = {
                datasets: [{
                    label: 'Jumlah per Program Studi',
                    data: kelasProdiList.map(function (kelasProdi) {
                        return {
                            x: kelasProdi.program_studi, // Menggunakan 'program_studi' sebagai nilai sumbu X
                            y: kelasProdi.jumlah,         // Menggunakan 'jumlah' sebagai nilai sumbu Y
                            z: kelasProdi.span,
                            r: kelasProdi.jumlah * 5      // Radius gelembung
                        };
                    }),
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            };

            var configKelasProdi = {
                type: 'bubble',
                data: dataKelasProdi,
                options: {
                    scales: {
                        x: {
                            type: 'category',
                            labels: kelasProdiList.map(function (kelasProdi) {
                                return kelasProdi.program_studi; // Label sumbu X
                            }),
                            ticks: {
                                autoSkip: true,   // Mengaktifkan auto-skip untuk mengurangi label yang ditampilkan
                                maxTicksLimit: 60, // Membatasi jumlah maksimal label yang ditampilkan
                                maxRotation: 0,   // Rotasi maksimal 0 derajat
                                minRotation: 0,   // Rotasi minimal 0 derajat
                                padding: 20       // Jarak antar label
                            }
                        },
                        y: {
                            beginAtZero: true, // Memastikan sumbu Y dimulai dari 0
                            ticks: {
                                precision: 0,
                                callback: function (value) {
                                    if (Number.isInteger(value)) {
                                        return value;
                                    }
                                }
                            }
                        }
                    },
                    plugins: {
                        tooltip: {
                            callbacks: {
                                label: function (tooltipItem) {
                                    var item = tooltipItem.raw;
                                    return `Ruangan: ${item.z}, Program Studi: ${item.x}, Jumlah: ${item.y}`;
                                }
                            }
                        }
                    }
                }
            };


            var myChartHari = new Chart(
                document.getElementById('myChartHari'),
                configKelasProdi
            );
        } else if (this.readyState == 4) {
            console.error('Error fetching data: ' + this.statusText);
        }
    };
});
