// Data dari Flask dirender langsung ke dalam JavaScript
var userDetailsKhusus = JSON.parse('{{ userDetailsKhusus | tojson | safe }}');

// Ambil nama dosen dan jumlah total dari setiap baris data
var dataKhusus = userDetailsKhusus.map(function (dsn) {
    return { name: dsn[3], value: dsn[6] + dsn[9] + dsn[12] }; // Mengambil penambahan dari kolom Jumlah
});

// Buat treemap dengan D3.js
var width = 1900;
var height = 1500;

var svgKhusus = d3.select("#treemapContainerKhusus")
    .append("svg")
    .attr("width", width)
    .attr("height", height);

var treemapKhusus = d3.treemap()
    .size([width, height])
    .padding(1);

var rootKhusus = d3.hierarchy({ children: dataKhusus })
    .sum(function (d) { return d.value; });

treemapKhusus(rootKhusus);

svgKhusus.selectAll("rect")
    .data(rootKhusus.leaves())
    .enter()
    .append("rect")
    .attr("x", function (d) { return d.x0; })
    .attr("y", function (d) { return d.y0; })
    .attr("width", function (d) { return d.x1 - d.x0; })
    .attr("height", function (d) { return d.y1 - d.y0; })
    .style("fill", function (d) {
        // Tentukan warna berdasarkan nilai total
        if (d.value >= 150) {
            return "darkred"; // Warna merah tua
        } else if (d.value >= 75) {
            return "lightcoral"; // Warna merah muda
        } else if (d.value >= 50) {
            return "navy"; // Warna biru tua
        } else {
            return "lightblue"; // Warna biru muda
        }
    });

svgKhusus.selectAll("text")
    .data(rootKhusus.leaves())
    .enter()
    .append("text")
    .attr("x", function (d) {
        var textLength = d.data.name.length;
        var maxWidth = d.x1 - d.x0 - 10; // Biarkan sedikit ruang di tepi
        if (textLength * 6 > maxWidth) { // Misalnya, setiap karakter memiliki lebar sekitar 6px
            return d.x0 + 5; // Geser teks ke sisi kiri kotak
        } else {
            return d.x0 + (d.x1 - d.x0) / 2; // Tengah horisontal kotak
        }
    })
    .attr("y", function (d) {
        return d.y0 + (d.y1 - d.y0) / 2; // Tengah vertikal kotak
    })
    .text(function (d) {
        var textLength = d.data.name.length;
        var maxWidth = d.x1 - d.x0 - 10; // Biarkan sedikit ruang di tepi
        if (textLength * 6 > maxWidth) { // Misalnya, setiap karakter memiliki lebar sekitar 6px
            return d.data.name.substring(0, Math.floor(maxWidth / 6)) + '...'; // Potong teks dan tambahkan tanda elipsis
        } else {
            return d.data.name; // Teks lengkap jika muat dalam kotak
        }
    })
    .attr("font-size", "12px")
    .attr("fill", "white")
    .attr("text-anchor", function (d) {
        var textLength = d.data.name.length;
        var maxWidth = d.x1 - d.x0 - 10; // Biarkan sedikit ruang di tepi
        if (textLength * 6 > maxWidth) { // Misalnya, setiap karakter memiliki lebar sekitar 6px
            return "start"; // Anchor ke awal teks
        } else {
            return "middle"; // Tengah untuk teks yang cukup singkat
        }
    })
    .attr("alignment-baseline", "middle")

