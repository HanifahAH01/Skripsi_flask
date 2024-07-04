document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/dosen_chart";  // Pastikan URL ini sesuai dengan endpoint Flask Anda
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            var dosen = data.dosen_list.map(function (elem) {
                return elem.Dosen;
            });
            var Total = data.dosen_list.map(function (elem) {
                return elem.Total;
            });

            // Tentukan warna berdasarkan nilai
            function getColor(value) {
                if (value >= 1 && value <= 20) {
                    return 'rgb(155, 236, 0)';
                } else if (value >= 21 && value <= 40) {
                    return 'rgb(243, 232, 78)';
                } else if (value >= 41 && value <= 60) {
                    return 'rgb(237, 98, 29)';
                } else if (value >= 61 && value <= 80) {
                    return 'rgb(231, 30, 30)';
                } else if (value >= 81 && value <= 100) {
                    return 'rgb(186, 14, 14)';
                }
                return 'rgba(0, 0, 0, 0.2)';
            }

            var backgroundColors = Total.map(getColor);
            var borderColors = Total.map(getColor); // Sama dengan background color

            // Setup Chart 1
            const data1 = {
                labels: dosen,
                datasets: [{
                    label: 'Total',
                    data: Total,
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
                    plugins: {
                        legend: {
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
                    },
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true,
                            grid: {
                                drawTicks: false,
                                drawBoeder: false
                            },
                            ticks: {
                                display: false
                            }
                        }
                    }
                }
            };

            // Render Chart 1
            const myChart = new Chart(
                document.getElementById('myChart'),
                config1
            );

            // Setup Chart 2
            const data2 = {
                labels: [],
                datasets: [{
                    label: 'Total',
                    data: myChart.data.datasets[0].data,
                    backgroundColor: backgroundColors,
                    borderColor: borderColors,
                    borderWidth: 1
                }]
            };

            // Config Chart 2
            const config2 = {
                type: 'bar',
                data: data2,
                options: {
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            right: 19,
                            left: 125
                        }
                    },
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true,
                            afterFit: ((context) => {
                                console.log(context)
                                context.height += 30
                            })
                        },
                        y: {
                            afterFit: ((context) => {
                                console.log(context.width)
                                context.width += myChart.chartArea.left
                            }),
                            grid: {
                                drawTicks: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            };

            // Render Chart 2
            const myChart2 = new Chart(
                document.getElementById('myChart2'),
                config2
            );

            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (myChart.data.labels.length > 7) {
                const newHeight = 300 + ((myChart.data.labels.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
        }
    }
});
