import os
import bcrypt
import werkzeug
from flask import Flask, jsonify, render_template, send_from_directory, request, redirect, url_for, session, flash
from collections import defaultdict
from flask_mysqldb import MySQL
from Dosen import DataDosen
from Jadwal import Jadwal
from db import truncate_real_jadwal, insert_real_data_jadwal
from heatmap import generate_plot
import mysql.connector
from kapasitas import Kapasitas
from Jadwal import Jadwal

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

scraper = Kapasitas(url=url1)
scraper2 = Jadwal(url=url1)

# Routes Untuk mengakses setiap Halaman Website
# Welcome
@app.route("/")
def index():
    return render_template("Welcome.html")

@app.route("/recap-admin")
def recap_admin():

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

    # Mengambil data Heatmap dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM heatmap")
    heatmap_records = cur.fetchall()
    cur.close()

    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("""
            SELECT 
                real_jadwal.No, 
                real_jadwal.Span,
                real_jadwal.Senin, s1.keterangan AS status_senin,
                real_jadwal.Selasa, s2.keterangan AS status_selasa,
                real_jadwal.Rabu, s3.keterangan AS status_rabu,
                real_jadwal.Kamis, s4.keterangan AS status_kamis,
                real_jadwal.Jumat, s5.keterangan AS status_jumat,
                real_jadwal.Sabtu, s6.keterangan AS status_sabtu,
                real_jadwal.Minggu, s7.keterangan AS status_minggu
            FROM real_jadwal
            LEFT JOIN status s1 ON real_jadwal.status_senin = s1.id
            LEFT JOIN status s2 ON real_jadwal.status_selasa = s2.id
            LEFT JOIN status s3 ON real_jadwal.status_rabu = s3.id
            LEFT JOIN status s4 ON real_jadwal.status_kamis = s4.id
            LEFT JOIN status s5 ON real_jadwal.status_jumat = s5.id
            LEFT JOIN status s6 ON real_jadwal.status_sabtu = s6.id
            LEFT JOIN status s7 ON real_jadwal.status_minggu = s7.id
        """)
    jadwal_records = cur.fetchall()
    cur.close()

    return render_template("Dashboard_Admin/Diagram_Admin.html", grouped_jadwal=jadwal_records,harvest_data=harvest_data, plot_html=plot_html, heatmap_records=heatmap_records,jadwal_records=jadwal_records,userDetails=userDetails, userDetailskapasitas=userDetailskapasitas)

@app.route("/testing")
def test():
    return render_template("Chart/testing.html")

# Home
@app.route("/home")
def home():
    return render_template("Home/Home.html")

# Home - Admin
@app.route("/home-admin")
def home_admin():
    return render_template("Dashboard_Admin/Home_admin.html")

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
    
@app.route('/login-admin', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        if 'login' in request.form:
            nip = request.form['nip']
            password = request.form['password']

            cur = mysql.connection.cursor()
            cur.execute("SELECT * FROM admin WHERE nip = %s", [nip])
            user = cur.fetchone()
            cur.close()

            if user and bcrypt.checkpw(password.encode('utf-8'), user[3].encode('utf-8')):
                session['nip'] = user[1]
                flash('Login successful!', 'success')
                return redirect(url_for('dashboard_admin'))
            else:
                flash('Login failed. Check your NIP and password.', 'danger')
        elif 'register' in request.form:
            nip = request.form['nip']
            password = request.form['password']
            email = request.form['email']
            hashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO admin(nip, email, password) VALUES(%s, %s, %s)", (nip, email, hashed_password))
            mysql.connection.commit()
            cur.close()

            flash('You have successfully registered!', 'success')
            return redirect(url_for('login'))
    return render_template('logres/login.html')

@app.route('/logout')
def logout():
    session.pop('nip', None)
    flash('You have been logged out!', 'success')
    return redirect(url_for('login'))

@app.route('/dashboard_admin')
def dashboard_admin():
    if 'nip' not in session:
        flash('Please login first', 'danger')
        return redirect(url_for('login'))
    
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT 
            real_jadwal.No, 
            real_jadwal.Span,
            real_jadwal.Senin, s1.keterangan AS status_senin,
            real_jadwal.Selasa, s2.keterangan AS status_selasa,
            real_jadwal.Rabu, s3.keterangan AS status_rabu,
            real_jadwal.Kamis, s4.keterangan AS status_kamis,
            real_jadwal.Jumat, s5.keterangan AS status_jumat,
            real_jadwal.Sabtu, s6.keterangan AS status_sabtu,
            real_jadwal.Minggu, s7.keterangan AS status_minggu
        FROM real_jadwal
        LEFT JOIN status s1 ON real_jadwal.status_senin = s1.id
        LEFT JOIN status s2 ON real_jadwal.status_selasa = s2.id
        LEFT JOIN status s3 ON real_jadwal.status_rabu = s3.id
        LEFT JOIN status s4 ON real_jadwal.status_kamis = s4.id
        LEFT JOIN status s5 ON real_jadwal.status_jumat = s5.id
        LEFT JOIN status s6 ON real_jadwal.status_sabtu = s6.id
        LEFT JOIN status s7 ON real_jadwal.status_minggu = s7.id
    """)
    Jadwal = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT 
            booking.no,
            booking.nama_pemohon,
            booking.nama_ruangan,
            booking.hari,
            booking.tanggal,
            booking.waktu_awal,
            booking.waktu_akhir,
            booking.tujuan_boking,
            booking.jumlah_peserta,
            s.keterangan AS status,
            booking.Keterangan
        FROM booking
        LEFT JOIN status_booking s ON booking.status = s.id
    """)
    booking = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    query = "SELECT * FROM status_booking"
    cur.execute(query)
    statuses = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    query = "SELECT * FROM report"
    cur.execute(query)
    laporan = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    query = "SELECT * FROM sks_dosen_fpmipa"
    cur.execute(query)
    sks = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    query = "SELECT * FROM kelas_prodi"
    cur.execute(query)
    prodi = cur.fetchall()
    cur.close()

    return render_template('Dashboard_Admin/datatables.html', prodi=prodi, Jadwal=Jadwal, statuses=statuses, booking=booking, laporan=laporan, sks=sks)


@app.route('/edit/<int:No>', methods=['GET', 'POST'])
def edit(No):
    cur = mysql.connection.cursor()
    
    if request.method == 'POST':
        # Mengambil data dari form edit
        span = request.form['span']
        senin = request.form['senin']
        status_senin = request.form['status_senin']
        selasa = request.form['selasa']
        status_selasa = request.form['status_selasa']
        rabu = request.form['rabu']
        status_rabu = request.form['status_rabu']
        kamis = request.form['kamis']
        status_kamis = request.form['status_kamis']
        jumat = request.form['jumat']
        status_jumat = request.form['status_jumat']
        sabtu = request.form['sabtu']
        status_sabtu = request.form['status_sabtu']
        minggu = request.form['minggu']
        status_minggu = request.form['status_minggu']
        
        # Update data ke database
        query = """
            UPDATE real_jadwal 
            SET Span=%s, senin=%s, status_senin=%s, selasa=%s, status_selasa=%s, rabu=%s, status_rabu=%s,
                kamis=%s, status_kamis=%s, jumat=%s, status_jumat=%s, sabtu=%s, status_sabtu=%s, minggu=%s, status_minggu=%s
            WHERE No=%s
        """
        cur.execute(query, (span, senin, status_senin, selasa, status_selasa, rabu, status_rabu, kamis, status_kamis, jumat, status_jumat, sabtu, status_sabtu, minggu, status_minggu, No))
        mysql.connection.commit()
        cur.close()
        flash('Data updated successfully', 'success')
        return redirect(url_for('dashboard_admin'))
    else:
        # Mengambil data yang akan diedit
        cur.execute("SELECT * FROM real_jadwal WHERE No = %s", (No,))
        data = cur.fetchone()
        
        # Mengambil data status
        cur.execute("SELECT * FROM status")
        statuses = cur.fetchall()
        cur.close()
        
        return render_template('Dashboard_Admin/form_jadwal_admin.html', data=data, statuses=statuses)


@app.route('/edit_action/<int:No>', methods=['POST'])
def edit_action(No):
    if request.method == 'POST':
        tindakan_baru = request.form['tindakan']

        # Lakukan update data ke database sesuai dengan No yang diterima
        cur = mysql.connection.cursor()
        query = "UPDATE report SET tindakan=%s WHERE No=%s"
        cur.execute(query, (tindakan_baru, No))
        mysql.connection.commit()
        cur.close()

        flash('Tindakan berhasil diupdate', 'success')
        return redirect(url_for('dashboard_admin'))

    # Jika request bukan POST, tambahkan penanganan yang sesuai (opsional)
    return redirect(url_for('dashboard_admin'))

@app.route('/edit_booking/<int:No>', methods=['POST'])
def edit_booking(No):
    status = request.form.get('status')
    keterangan_status = request.form.get('keterangan_status')

    cur = mysql.connection.cursor()
    cur.execute("""
        UPDATE booking
        SET status=%s, Keterangan=%s
        WHERE no=%s
    """, (status, keterangan_status, No))
    mysql.connection.commit()
    cur.close()

    flash('Data booking berhasil diperbarui!', 'success')
    return redirect(url_for('dashboard_admin'))




# ******************************************** #
#                    START                     #
#                SINKRONISASI                  #
# ******************************************** #
@app.route('/run-kapasitas', methods=['POST'])
def run_kapasitas():
    try:
        scraper.get_data_kapasitas()
        return jsonify({'message': 'Data Ruangan Berhasil Di-generate'})
    except Exception as e:
        return jsonify({'error': str(e)})
    
@app.route('/run-jadwal', methods=['POST'])
def run_jadwal():
    try:
        scraper2.get_data_jadwal()
        return jsonify({'message': 'Data Jadwal Berhasil Di-generate'})
    except Exception as e:
        return jsonify({'error': str(e)})

@app.route('/run-data-jadwal', methods=['POST'])
def run_data_jadwal():
    try:
        insert_real_data_jadwal()
        return jsonify({'message': 'Data Jadwal Berhasil Di-generate'})
    except Exception as e:
        return jsonify({'error': str(e)})
    
@app.route('/run-empty-jadwal', methods=['POST'])
def run_empty_jadwal():
    try:
        truncate_real_jadwal()
        return jsonify({'message': 'Data Jadwal Berhasil Di-generate'})
    except Exception as e:
        return jsonify({'error': str(e)})
    
# ******************************************** #
#                    END                       #
#                SINKRONISASI                  #
# ******************************************** #



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

    # Mengambil data Heatmap dari database
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM heatmap")
    heatmap_records = cur.fetchall()
    cur.close()

    # Mengambil data jadwal dari database
    cur = mysql.connection.cursor()
    cur.execute("""
            SELECT 
                real_jadwal.No, 
                real_jadwal.Span,
                real_jadwal.Senin, s1.keterangan AS status_senin,
                real_jadwal.Selasa, s2.keterangan AS status_selasa,
                real_jadwal.Rabu, s3.keterangan AS status_rabu,
                real_jadwal.Kamis, s4.keterangan AS status_kamis,
                real_jadwal.Jumat, s5.keterangan AS status_jumat,
                real_jadwal.Sabtu, s6.keterangan AS status_sabtu,
                real_jadwal.Minggu, s7.keterangan AS status_minggu
            FROM real_jadwal
            LEFT JOIN status s1 ON real_jadwal.status_senin = s1.id
            LEFT JOIN status s2 ON real_jadwal.status_selasa = s2.id
            LEFT JOIN status s3 ON real_jadwal.status_rabu = s3.id
            LEFT JOIN status s4 ON real_jadwal.status_kamis = s4.id
            LEFT JOIN status s5 ON real_jadwal.status_jumat = s5.id
            LEFT JOIN status s6 ON real_jadwal.status_sabtu = s6.id
            LEFT JOIN status s7 ON real_jadwal.status_minggu = s7.id
        """)
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
    cur = mysql.connection.cursor()
    query = "SELECT no, nama_ruangan FROM ruangan"  # Sesuaikan dengan nama tabel dan kolom Anda
    cur.execute(query)
    rooms = cur.fetchall()
    cur.close()

    cur1 = mysql.connection.cursor()
    query = "SELECT id, jam FROM waktu"
    cur1.execute(query)
    waktu_data = cur1.fetchall()
    cur1.close()

    return render_template("Recap/Report.html", rooms=rooms, waktu_data=waktu_data)

# Laporan
@app.route("/laporan")
def laporan():
    cur = mysql.connection.cursor()
    query = "SELECT * FROM report"  # Sesuaikan dengan nama tabel dan kolom Anda
    cur.execute(query)
    laporan = cur.fetchall()
    cur.close()
    return render_template("Recap/Laporan.html", laporan=laporan)

@app.route("/add")
def add():
    cur = mysql.connection.cursor()
    query = "SELECT no, nama_ruangan FROM ruangan"  # Sesuaikan dengan nama tabel dan kolom Anda
    cur.execute(query)
    rooms = cur.fetchall()
    cur.close()

    cur1 = mysql.connection.cursor()
    query = "SELECT id, jam FROM waktu"
    cur1.execute(query)
    waktu_data = cur1.fetchall()
    cur1.close()

    return render_template("Recap/tambah.html", rooms=rooms, waktu_data=waktu_data)

@app.route('/submit_booking', methods=['POST'])
def submit_booking():
    if request.method == 'POST':
        try:
            nama_pemohon = request.form['nama_pemohon']
            nama_ruangan = request.form['nama_ruangan']
            hari = request.form['hari']
            tanggal = request.form['tanggal']
            waktu_awal = request.form['waktu_awal']
            waktu_akhir = request.form['waktu_akhir']
            tujuan_booking = request.form['nama_kegiatan']
            jumlah_peserta = request.form['jumlah_peserta']
            
            cur = mysql.connection.cursor()
            cur.execute("""
                INSERT INTO booking (nama_pemohon, nama_ruangan, hari, tanggal, waktu_awal, waktu_akhir, tujuan_boking, jumlah_peserta)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """, (nama_pemohon, nama_ruangan, hari, tanggal, waktu_awal, waktu_akhir, tujuan_booking, jumlah_peserta))
            
            mysql.connection.commit()
            cur.close()
            
            flash('Booking berhasil dilakukan', 'success')
        except Exception as e:
            flash(f'Terjadi kesalahan: {str(e)}', 'danger')
        return redirect(url_for('add'))

@app.route('/submit_report', methods=['POST'])
def submit_report():
    if request.method == 'POST':
        nama_ruangan = request.form['judul']
        hari = request.form['hari']
        waktu_awal = request.form['waktu_awal']
        alasan = request.form['alasan']
        
        cur = mysql.connection.cursor()
        cur.execute("""
            INSERT INTO report (nama_ruangan, hari, waktu_awal, alasan)
            VALUES (%s, %s, %s, %s)
        """, (nama_ruangan, hari, waktu_awal, alasan))
        
        mysql.connection.commit()
        cur.close()
        
        flash('Booking berhasil dilakukan', 'success')
        return redirect(url_for('add'))
    
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
    scraper = DataDosen(url=url2)
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

@app.route("/booking_all")
def get_booking_all():
    try:
        cur = mysql.connection.cursor()
        cur.execute("""
            SELECT no, nama_pemohon, nama_ruangan, hari, tanggal, waktu_awal, waktu_akhir, tujuan_boking, jumlah_peserta
            FROM booking
        """)
        result = cur.fetchall()
        cur.close()

        # Dictionary untuk menyimpan total penggunaan ruangan
        ruangan_usage = defaultdict(int)

        # Memproses hasil query menjadi format JSON yang diinginkan
        booking_list = []
        for row in result:
            no, nama_pemohon, nama_ruangan, hari, tanggal, waktu_awal, waktu_akhir, tujuan_boking, jumlah_peserta = row
            # Menambah jumlah penggunaan ruangan
            ruangan_usage[nama_ruangan] += 1

            # Mengubah format tanggal
            tanggal_formatted = tanggal.strftime('%Y-%m-%d')

            # Menambahkan data booking ke booking_list
            booking_list.append({
                "No": no,
                "Nama_Pemohon": nama_pemohon,
                "Nama_Ruangan": nama_ruangan,
                "Hari": hari,
                "Tanggal": tanggal_formatted,
                "Waktu_Awal": waktu_awal,
                "Waktu_Akhir": waktu_akhir,
                "Tujuan_Booking": tujuan_boking,
                "Jumlah_Peserta": jumlah_peserta
            })

        # Menggabungkan total penggunaan ruangan ke dalam booking_list
        for booking in booking_list:
            booking["Total_Penggunaan"] = ruangan_usage[booking["Nama_Ruangan"]]

        return jsonify({"booking_list": booking_list})

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    

@app.route("/kelas_prodi_data")
def get_kelas_prodi_data():
    try:
        cur = mysql.connection.cursor()
        cur.execute("SELECT span, program_studi, jumlah FROM kelas_prodi")
        result = cur.fetchall()
        cur.close()

        kelas_prodi_list = [
            {"span": row[0], "program_studi": row[1], "jumlah": row[2]} for row in result
        ]

        return jsonify({"kelas_prodi_list": kelas_prodi_list})

    except Exception as e:
        return jsonify({"error": str(e)}), 500


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
