document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/dosen_chart";  // Sesuaikan dengan endpoint Flask Anda
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var responseData = JSON.parse(this.responseText);
            var dosenData = responseData.dosen_list.map(function (elem) {
                return {
                    Dosen: elem.Dosen,
                    Total: elem.Total
                };
            });

            // Urutkan berdasarkan total nilai dari yang terbesar ke yang terkecil
            dosenData.sort(function (a, b) {
                return b.Total - a.Total;
            });

            // Pisahkan kembali Dosen dan Total setelah diurutkan
            var sortedDosen = dosenData.map(function (elem) {
                return elem.Dosen;
            });

            var sortedTotal = dosenData.map(function (elem) {
                return elem.Total;
            });

            // Tentukan warna berdasarkan nilai total
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(255, 255, 19)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(255, 210, 11)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(255, 139, 20)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(255, 93, 12)';
                } else if (value >= 81 && value <= 100) {
                    return 'rgb(255, 70, 6)';
                }
                return 'rgb(255, 21, 0)';
            }

            var backgroundColors = sortedTotal.map(getColor);
            var borderColors = sortedTotal.map(getColor); // Sama dengan background color

            // Setup Chart 1
            const data1 = {
                labels: sortedDosen,
                datasets: [{
                    label: 'Total',
                    data: sortedTotal,
                    backgroundColor: backgroundColors,
                    borderColor: borderColors,
                    borderWidth: 1
                }]
            };

            // Config Chart 1
            const config1 = {
                type: 'bar',
                data: data1,
                options: {
                    indexAxis: 'y', // Membuat tulisan menjadi horizontal
                    scales: {
                        x: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: true,
                            labels: {
                                usePointStyle: true,
                                pointStyle: 'rectRounded'
                            }
                        }
                    },
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            right: 4
                        }
                    }
                }
            };

            // Render Chart 1
            const myChart = new Chart(
                document.getElementById('myChart'),
                config1
            );

            // Atur tinggi scrollBoxBody jika lebih dari 7 labels
            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (sortedDosen.length > 7) {
                const newHeight = 300 + ((sortedDosen.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
        }
    };
});
