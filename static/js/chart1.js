// document.addEventListener("DOMContentLoaded", function () {
//     var xmlhttp = new XMLHttpRequest();
//     var url = "http://127.0.0.1:54587/data_dosen";
//     xmlhttp.open("GET", url, true);
//     xmlhttp.send();
//     xmlhttp.onreadystatechange = function () {
//         if (this.readyState == 4 && this.status == 200) {
//             var data = JSON.parse(this.responseText);
//             var Dosen = data.dosen_list.map(function (elem) {
//                 return elem.Dosen;
//             });
//             var Total = data.dosen_list.map(function (elem) {
//                 return elem.Total;
//             });

//             const ctx = document.getElementById('myChart').getContext('2d');

//             new Chart(ctx, {
//                 type: 'bar',
//                 data: {
//                     labels: Dosen,
//                     datasets: [{
//                         axis: 'y',
//                         label: 'Total',
//                         data: Total,
//                         borderWidth: 1,
//                         barThickness: 20
//                     }]
//                 },
//                 options: {
//                     indexAxis: 'y',
//                     scales: {
//                         x: {
//                             beginAtZero: true
//                         }
//                     }
//                 }
//             });
//         }
//     }
// });

document.addEventListener("DOMContentLoaded", function () {
    var xmlhttp = new XMLHttpRequest();
    var url = "http://127.0.0.1:54587/dosen_chart";
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

            // setup myChart 1
            const data1 = {
                labels: dosen,
                datasets: [{
                    label: 'Total',
                    data: Total,
                    backgroundColor: [
                        'rgba(255, 26, 104, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(0, 0, 0, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 26, 104, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(0, 0, 0, 1)'
                    ],
                    borderWidth: 1
                },
                    // {
                    //     label: 'Total',
                    // }
                ]
            };

            // config 
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

            // render init block for myChart 1
            const myChart = new Chart(
                document.getElementById('myChart'),
                config1
            );

            // setup myChart 2
            const data2 = {
                labels: [],
                datasets: [{
                    label: 'Total',
                    data: myChart.data.datasets[0].data,
                    backgroundColor: [
                        'rgba(255, 26, 104, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(0, 0, 0, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 26, 104, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(0, 0, 0, 1)'
                    ],
                    borderWidth: 1
                }]
            };

            // config 2
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

            // render init block for myChart 2
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