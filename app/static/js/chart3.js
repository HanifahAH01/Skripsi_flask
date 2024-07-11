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
