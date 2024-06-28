import os
from flask import Flask, render_template, send_from_directory
from flask_mysqldb import MySQL
from Dosen import Data_Dosen
from Jadwal import Jadwal
from db import create_table_dosen,create_real_table_jadwal,create_table_kapasitas_ruangan,create_table_heatmap, insert_data_dosen, insert_data_kapasitas_ruangan, insert_real_data_jadwal, insert_table_heatmap
from heatmap import generate_plot

# Inisiasi Object Flask
app = Flask(__name__, template_folder='app/templates', static_folder='app/static')


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
create_real_table_jadwal()
create_table_kapasitas_ruangan()
create_table_heatmap()

insert_data_dosen()
insert_data_kapasitas_ruangan()
insert_real_data_jadwal()
insert_table_heatmap()

# Fungsi Untuk mengakses setiap Halaman Website


# Welcome
@app.route("/")
def index():
    return render_template("Welcome.html")

# Home
@app.route("/home")
def home():
    return render_template("Home/Home.html")

# admin
@app.route("/admin")
def admin():
    return render_template("admin.html")

# login
@app.route("/login")
def login():
    return render_template("login.html")

# Route Diagram
# Route Diagram dibuat untuk menampilkan seluruh chart yang ada pada website
@app.route("/diagram")
def diagram():

    # heatmap 
    # Membuat sebuah plot untuk melakukan generate plot
    plot_html, harvest_data = generate_plot()

    # Mengambil data dosen dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM jdw_dosen")
    userDetails = cur.fetchall()
    cur.close()

    # Mengambil data Kapasitas dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM kapasitas_ruangan")
    userDetailskapasitas = cur.fetchall()
    cur.close()

    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM real_jadwal")
    jadwal_records = cur.fetchall()
    cur.close()

    # Mengambil data Heatmap dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM heatmap")
    heatmap_records = cur.fetchall()
    cur.close()

    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM real_jadwal")
    jadwal_records = cur.fetchall()
    cur.close()

    return render_template("Chart/Diagram.html", grouped_jadwal=jadwal_records,harvest_data=harvest_data, plot_html=plot_html, heatmap_records=heatmap_records,jadwal_records=jadwal_records,userDetails=userDetails, userDetailskapasitas=userDetailskapasitas)

# Dashboard
@app.route("/dashboard")
def Dashboard():
    return render_template("Recap/Dashboard.html")

# Report
@app.route("/report")
def report():
    return render_template("Recap/Report.html")

# Laporan
@app.route("/laporan")
def laporan():
    return render_template("Recap/Laporan.html")

# Kapasitas
@app.route('/kapasitas')
def kapasitas_():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM kapasitas_ruangan")
    userDetails = cur.fetchall()
    cur.close()
    
    return render_template('Recap/Kapasitas.html', userDetails=userDetails)

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

    return render_template('Recap/Dosen.html', userDetails=userDetails, userDetailsKhusus=userDetailsKhusus, list_kode_khusus=list_kode_khusus)

# Ruangan
@app.route("/ruangan")
def ruangan():
    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM real_jadwal")
    jadwal_records = cur.fetchall()
    cur.close()

    return render_template("Recap/Ruangkelas.html", grouped_jadwal=jadwal_records)


@app.route("/total_jadwal")
def get_heatmap():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'total_jadwal.json')

@app.route("/dosen_chart")
def get_dosen_chart():
    # Path ke direktori json
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'data_dosen_chart.json')

@app.route("/kapasitas_all")
def get_kapasitas_all():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'kapasitas_all.json')

@app.route("/kapasitas_fpmipa_a")
def get_kapasitas_fpmipa_a():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'kapasitas_fpmipa_a.json')

@app.route("/kapasitas_fpmipa_b")
def get_kapasitas_fpmipa_b():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'kapasitas_fpmipa_b.json')

@app.route("/kapasitas_fpmipa_c")
def get_kapasitas_fpmipa_c():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'kapasitas_fpmipa_c.json')

@app.route("/kapasitas_fpmipa_lab")
def get_kapasitas_fpmipa_lab():
    json_dir = os.path.join(app.static_folder, 'json')
    return send_from_directory(json_dir, 'kapasitas_fpmipa_lab.json')

# Add Data
@app.route("/adddata")
def adddata():
    return render_template("AddData.html")
    
# Menjalankan aplikasi
if __name__ == "__main__":
    app.run(debug=True, port=120123)
