import os
from flask import Flask, render_template, send_from_directory
from flask_mysqldb import MySQL
from Dosen import Data_Dosen
from Jadwal import Jadwal
from db import create_table_dosen, create_table_jadwal, create_table_kapasitas_ruangan, create_real_table_jadwal, insert_data_dosen, insert_data_jadwal, insert_data_kapasitas_ruangan, insert_real_data_jadwal

# Inisiasi Object Flask
app = Flask(__name__)

# Config Database
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'db_tskrip'
mysql = MySQL(app)

# Scraping URL
fakultas = 'D'

url1 = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)
url2 = 'https://siak.upi.edu/jadwal/dosensks'

# Create and Insert Database
create_table_dosen()
create_table_kapasitas_ruangan()
create_table_jadwal()
create_real_table_jadwal()

insert_data_dosen()
insert_data_kapasitas_ruangan()
insert_data_jadwal()
insert_real_data_jadwal()

# Fungsi Untuk mengakses setiap Halaman Website

# Welcome
@app.route("/")
def index():
    return render_template("Welcome.html")

# Login
@app.route("/login")
def login():
    return render_template("login.html")

# Admin
@app.route("/admin")
def admin():
    return render_template("Admin.html")

# Admin
@app.route("/diagram")
def diagram():
    return render_template("Diagram.html")

@app.route("/data_dosen")
def get_data_dosen():
    return send_from_directory(os.getcwd(), 'data_dosen.json')

# Add Data
@app.route("/adddata")
def adddata():
    return render_template("AddData.html")

# Home
@app.route("/home")
def home():
    return render_template("Home.html")

# Dashboard
@app.route("/dashboard")
def Dashboard():
    return render_template("Dashboard.html")

# Report
@app.route("/report")
def report():
    return render_template("Report.html")

# Laporan
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

    return render_template("Ruangkelas.html", grouped_jadwal=jadwal_records)
    
# Menjalankan aplikasi
if __name__ == "__main__":
    app.run(debug=True, port=120123)
