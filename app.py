import os
import bcrypt # type: ignore
import werkzeug
from flask import Flask, jsonify, render_template, send_from_directory, request, redirect, url_for, session, flash
from flask_mysqldb import MySQL
from Dosen import Data_Dosen
from Jadwal import Jadwal
from db import create_table_dosen,create_real_table_jadwal,create_table_kapasitas_ruangan,create_table_heatmap, insert_data_dosen, insert_data_kapasitas_ruangan, insert_real_data_jadwal, insert_table_heatmap
from heatmap import generate_plot
import mysql.connector

# Inisiasi Object Flask
app = Flask(__name__, template_folder='app/templates', static_folder='app/static')
app.secret_key = 'webfpmipaupi'

# Config Database
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'db_tskrip'
# app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
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

# Routes Untuk mengakses setiap Halaman Website
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
    if 'email' in session:
        return render_template("Dashboard_Admin/Admin.html")
    else:
        return redirect(url_for('login'))
    
@app.route("/datatables")
def datatables():
    if 'email' in session:
        return render_template("Dashboard_Admin/datatables.html")
    else:
        return redirect(url_for('login'))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        nip = request.form['nip']
        password = request.form['password'].encode('utf-8')
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM users WHERE nip=%s", (nip,))
        user = cur.fetchone()
        cur.close()

        if user is not None and len(user) > 0:
            if bcrypt.checkpw(password, user['password'].encode('utf-8')):
                session['nip'] = user['nip']
                session['email'] = user['email']
                return redirect(url_for('admin'))
            else:
                flash("Gagal, NIP dan password tidak cocok")
                return redirect(url_for('login'))
        else:
            flash("Gagal, user tidak ditemukan")
            return redirect(url_for('login'))
    else:
        return render_template("logres/login.html")

@app.route('/regis', methods=['POST', 'GET'])
def registrasi():
    if request.method == 'GET':
        return render_template('login.html')
    else:
        nip = request.form['nip']
        email = request.form['email']
        password = request.form['password']
        hash_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO users(nip, email, password) VALUES(%s, %s, %s)", (nip, email, hash_password))
        mysql.connection.commit()
        cur.close()

        session['nip'] = nip
        session['email'] = email
        return redirect(url_for('index'))

@app.route('/logout')
def logout():
    session.pop('nip', None)
    session.pop('email', None)
    return redirect(url_for('login'))



# Route Diagram
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


@app.route("/add")
def add():
    cur = mysql.connection.cursor()
    query = "SELECT no, nama_ruangan FROM ruangan"  # Sesuaikan dengan nama tabel dan kolom Anda
    cur.execute(query)
    rooms = cur.fetchall()
    cur.close()
    return render_template("Recap/tambah.html", rooms=rooms)

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

@app.route('/dosen_chart', methods=['GET'])
def dosen_chart():
    try:
        cur = mysql.connection.cursor()
        cur.execute("SELECT DOSEN, Total FROM sks_dosen_fpmipa")
        result = cur.fetchall()
        
        dosen_list = []
        for row in result:
            dosen_list.append({"Dosen": row[0], "Total": row[1]})
        
        cur.close()
        return jsonify(dosen_list=dosen_list)
    
    except Exception as e:
        return str(e), 500

@app.route("/kapasitas_all")
def get_kapasitas_all():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT g.nama_gedung, g.jumlah_total_ruangan, r.nama_ruangan, r.kapasitas
        FROM gedung g
        JOIN ruangan r ON g.no = r.gedung_no
    """)
    result = cur.fetchall()
    cur.close()

    # Mengatur data untuk dikirim sebagai JSON
    kapasitas_list = []
    gedung_dict = {}
    for row in result:
        nama_gedung, jumlah_total_ruangan, nama_ruangan, kapasitas = row
        if nama_gedung not in gedung_dict:
            gedung_dict[nama_gedung] = {
                "Gedung": nama_gedung,
                "Jumlah_Total_Ruangan": jumlah_total_ruangan,
                "Ruangan": []
            }
        gedung_dict[nama_gedung]["Ruangan"].append({
            "Nama_Ruangan": nama_ruangan,
            "Kapasitas": kapasitas
        })

    kapasitas_list = list(gedung_dict.values())

    return jsonify({"kapasitas_list": kapasitas_list})

@app.route("/kapasitas_fpmipa_a")
def get_kapasitas_fpmipa_a():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT g.nama_gedung, r.nama_ruangan, r.kapasitas
        FROM gedung g
        JOIN ruangan r ON g.no = r.gedung_no
        WHERE g.nama_gedung = 'Gedung JICA FPMIPA A'
    """)
    result = cur.fetchall()
    cur.close()

    # Mengatur data untuk dikirim sebagai JSON
    kapasitas_list = []
    gedung_dict = {}
    for row in result:
        nama_gedung, nama_ruangan, kapasitas = row
        if nama_gedung not in gedung_dict:
            gedung_dict[nama_gedung] = {
                "Gedung": nama_gedung,
                "Ruangan": []
            }
        gedung_dict[nama_gedung]["Ruangan"].append({
            "Nama_Ruangan": nama_ruangan,
            "Kapasitas": kapasitas
        })

    kapasitas_list = list(gedung_dict.values())

    return jsonify({"kapasitas_list": kapasitas_list})

@app.route("/kapasitas_fpmipa_b")
def get_kapasitas_fpmipa_b():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT g.nama_gedung, r.nama_ruangan, r.kapasitas
        FROM gedung g
        JOIN ruangan r ON g.no = r.gedung_no
        WHERE g.nama_gedung = 'FPMIPA B'
    """)
    result = cur.fetchall()
    cur.close()

    # Mengatur data untuk dikirim sebagai JSON
    kapasitas_list = []
    gedung_dict = {}
    for row in result:
        nama_gedung, nama_ruangan, kapasitas = row
        if nama_gedung not in gedung_dict:
            gedung_dict[nama_gedung] = {
                "Gedung": nama_gedung,
                "Ruangan": []
            }
        gedung_dict[nama_gedung]["Ruangan"].append({
            "Nama_Ruangan": nama_ruangan,
            "Kapasitas": kapasitas
        })

    kapasitas_list = list(gedung_dict.values())

    return jsonify({"kapasitas_list": kapasitas_list})

@app.route("/kapasitas_fpmipa_c")
def get_kapasitas_fpmipa_c():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT g.nama_gedung, r.nama_ruangan, r.kapasitas
        FROM gedung g
        JOIN ruangan r ON g.no = r.gedung_no
        WHERE g.nama_gedung = 'FPMIPA C'
    """)
    result = cur.fetchall()
    cur.close()

    # Mengatur data untuk dikirim sebagai JSON
    kapasitas_list = []
    gedung_dict = {}
    for row in result:
        nama_gedung, nama_ruangan, kapasitas = row
        if nama_gedung not in gedung_dict:
            gedung_dict[nama_gedung] = {
                "Gedung": nama_gedung,
                "Ruangan": []
            }
        gedung_dict[nama_gedung]["Ruangan"].append({
            "Nama_Ruangan": nama_ruangan,
            "Kapasitas": kapasitas
        })

    kapasitas_list = list(gedung_dict.values())

    return jsonify({"kapasitas_list": kapasitas_list})

@app.route("/kapasitas_fpmipa_lab")
def get_kapasitas_fpmipa_lab():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT g.nama_gedung, r.nama_ruangan, r.kapasitas
        FROM gedung g
        JOIN ruangan r ON g.no = r.gedung_no
        WHERE g.nama_gedung = 'Bangunan Praktek Botani'
    """)
    result = cur.fetchall()
    cur.close()

    # Mengatur data untuk dikirim sebagai JSON
    kapasitas_list = []
    gedung_dict = {}
    for row in result:
        nama_gedung, nama_ruangan, kapasitas = row
        if nama_gedung not in gedung_dict:
            gedung_dict[nama_gedung] = {
                "Gedung": nama_gedung,
                "Ruangan": []
            }
        gedung_dict[nama_gedung]["Ruangan"].append({
            "Nama_Ruangan": nama_ruangan,
            "Kapasitas": kapasitas
        })

    kapasitas_list = list(gedung_dict.values())

    return jsonify({"kapasitas_list": kapasitas_list})

# Menjalankan aplikasi
if __name__ == "__main__":
    app.run(debug=True, port=120123)
