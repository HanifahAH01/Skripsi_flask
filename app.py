from flask import Flask, render_template
from flask_mysqldb import MySQL
from Dosen import Data_Dosen
from Jadwal import Jadwal
from db import create_table_dosen, create_table_jadwal, create_table_kapasitas_ruangan, create_real_table_jadwal, insert_data_dosen,insert_data_jadwal,insert_data_kapasitas_ruangan, insert_real_data_jadwal

import json


# Inisiasi Object Flask
app = Flask(__name__)

# Config Database
app.config['MYSQL_HOST']= 'localhost'
app.config['MYSQL_USER']= 'root'
app.config['MYSQL_PASSWORD']= ''
app.config['MYSQL_DB']= 'db_tskrip'
mysql = MySQL(app)

# Scraping URL
fakultas = 'D'

url1 = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)
url2 = 'https://siak.upi.edu/jadwal/dosensks'

# Create and Instert Database
create_table_dosen()
create_table_kapasitas_ruangan()
create_table_jadwal()
create_real_table_jadwal()

insert_data_dosen()
insert_data_kapasitas_ruangan()
insert_data_jadwal()
insert_real_data_jadwal()

# Fungsi Untuk mengakses setiap Halaman Website

# Home
@app.route("/")
def index():
    return render_template("Home.html")

# Dashboard
@app.route("/dashboard")
def Dashboard():
    return render_template("Dashboard.html")

@app.route("/report")
def report():
    return render_template("Report.html")

@app.route("/laporan")
def laporan():
    return render_template("Laporan.html")

# Kapasitas
@app.route('/kapasitas')
def kapasitas_():

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM kapasitas_ruangan")
    userDetails = cur.fetchall()
    cur.close()
    
    return render_template('Kapasitas.html', userDetails=userDetails)

# Dosen
@app.route("/dosen")
def dosen():
    # Mendapatkan instance dari kelas Data_Dosen
    scraper = Data_Dosen(url=url2)
    # Mendapatkan list kode khusus
    list_kode_khusus = scraper.get_list_kode_khusus()

    # Mengambil data dosen dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM jdw_dosen")
    userDetails = cur.fetchall()
    cur.close()

    # Mengambil data dosen dengan kode khusus dari database
    query_kode_khusus = "SELECT * FROM jdw_dosen WHERE KODE IN ({})".format(
        ", ".join(["'{}'".format(kode) for kode in list_kode_khusus])
    )
    cur = mysql.connection.cursor()
    cur.execute(query_kode_khusus)
    userDetailsKhusus = cur.fetchall()
    cur.close()

    return render_template('Dosen.html', userDetails=userDetails, userDetailsKhusus=userDetailsKhusus, list_kode_khusus=list_kode_khusus)

# Ruangan
@app.route("/ruangan")
def ruangan():
    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM real_jadwal")
    jadwal_records = cur.fetchall()
    cur.close()
    
    # Proses data untuk menggabungkan judul yang sama
    # grouped_records = {}
    # for record in jadwal_records:
    #     judul = record[1]  # Anggap judul berada di indeks 1
    #     if judul not in grouped_records:
    #         grouped_records[judul] = [record]
    #     else:
    #         grouped_records[judul].append(record)

    # Kelompokkan data jadwal berdasarkan nama ruangan
    # grouped_jadwal = {}
    # for record in jadwal_records:
    #     ruangan = record[1]
    #     if ruangan in grouped_jadwal:
    #         grouped_jadwal[ruangan].append(record)
    #     else:
    #         grouped_jadwal[ruangan] = [record]

    return render_template("Ruangkelas.html", grouped_jadwal=jadwal_records)
    
    # Kirim data yang telah diproses ke templat HTML
    # return render_template("Ruangkelas.html", jadwal=grouped_jadwal)

# Menjalankan aplikasi
if __name__ == "__main__":
    app.run(debug=True, port=120123)