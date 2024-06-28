// My chart 3 ( Diagram Pie Kapsitas Per Gedung )
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

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup myChart 1
            const data4 = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung,
                    data: Kapasitas,
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
            const config4 = {
                type: 'bar',
                data: data4,
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
            const myChart4 = new Chart(
                document.getElementById('myChart4'),
                config4
            );

            // setup myChart 2
            const data5 = {
                labels: [],
                datasets: [{
                    label: "Gedung",
                    data: myChart4.responseData.datasets[0].responseData,
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
            const config5 = {
                type: 'bar',
                data: data5,
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
            const myChart5 = new Chart(
                document.getElementById('myChart5'),
                config5
            );

            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (myChart5.responseData.labels.length > 7) {
                const newHeight = 300 + ((myChart5.responseData.labels.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
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

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup myChart 1
            const data6 = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung,
                    data: Kapasitas,
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
            const config6 = {
                type: 'bar',
                data: data6,
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
            const myChart6 = new Chart(
                document.getElementById('myChart6'),
                config6
            );

            // setup myChart 2
            const data7 = {
                labels: [],
                datasets: [{
                    label: "Gedung",
                    data: myChart6.responseData.datasets[0].responseData,
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
            const config7 = {
                type: 'bar',
                data: data7,
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
            const myChart7 = new Chart(
                document.getElementById('myChart7'),
                config7
            );

            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (myChart7.responseData.labels.length > 7) {
                const newHeight = 300 + ((myChart7.responseData.labels.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
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

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup myChart 1
            const data8 = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung,
                    data: Kapasitas,
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
            const config8 = {
                type: 'bar',
                data: data8,
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
            const myChart8 = new Chart(
                document.getElementById('myChart8'),
                config8
            );

            // setup myChart 2
            const data9 = {
                labels: [],
                datasets: [{
                    label: "Gedung",
                    data: myChart8.responseData.datasets[0].responseData,
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
            const config9 = {
                type: 'bar',
                data: data9,
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
            const myChart9 = new Chart(
                document.getElementById('myChart9'),
                config9
            );

            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (myChart9.responseData.labels.length > 7) {
                const newHeight = 300 + ((myChart9.responseData.labels.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
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

            var Jumlah_Total_Ruangan = responseData.kapasitas_list.map(function (elem) {
                return elem.Jumlah_Total_Ruangan;
            });

            // setup myChart 1
            const data10 = {
                labels: Nama_Ruangan,
                datasets: [{
                    label: Gedung,
                    data: Kapasitas,
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
            const config10 = {
                type: 'bar',
                data: data10,
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
            const myChart10 = new Chart(
                document.getElementById('myChart10'),
                config10
            );

            // setup myChart 2
            const data11 = {
                labels: [],
                datasets: [{
                    label: "Gedung",
                    data: myChart11.responseData.datasets[0].responseData,
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
            const config11 = {
                type: 'bar',
                data: data11,
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
            const myChart11 = new Chart(
                document.getElementById('myChart11'),
                config11
            );

            const scrollBoxBody = document.querySelector('.scrollBoxBody');
            if (myChart11.responseData.labels.length > 7) {
                const newHeight = 300 + ((myChart11.responseData.labels.length - 7) * 20);
                scrollBoxBody.style.height = `${newHeight}px`;
            }
        }
    }
});