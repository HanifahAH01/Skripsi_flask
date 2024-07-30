from flask import Flask
from flask_mysqldb import MySQL
import logging
import json
import os
# import shutil

# --------------------------#
# Database In Use           #
# Sesuaikan dengan Database #
# --------------------------#
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'db_tskrip'
mysql = MySQL(app)

# ----------------------------------#
# Fungsi Fungsi untuk Membuat table #
# ----------------------------------#

def create_table_kapasitas_ruangan():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS kapasitas_ruangan (
                No INT AUTO_INCREMENT PRIMARY KEY,
                FAK VARCHAR(10),
                FAKULTAS VARCHAR(50),
                KODE_RUANG VARCHAR(20),
                NAMA_RUANG VARCHAR(100),
                KAPASITAS INT,
                GEDUNG VARCHAR(50),
                LANTAI INT,
                JENIS_RUANG VARCHAR(50),
                BERBAGI VARCHAR(10),
                JAM_SKS INT
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Database kapasitas Ruangan Telah Dibuat")

def create_table_jadwal_ruangan():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS jadwal_ruangan (
                No INT AUTO_INCREMENT PRIMARY KEY,
                Span VARCHAR(255),
                Senin VARCHAR(255),
                status_senin INT,
                Selasa VARCHAR(255),
                status_selasa INT,
                Rabu VARCHAR(255),
                status_rabu INT,
                Kamis VARCHAR(255),
                status_kamis INT,
                Jumat VARCHAR(255),
                status_jumat INT,
                Sabtu VARCHAR(255),
                status_sabtu INT,
                Minggu VARCHAR(255),
                status_minggu INT,
                FOREIGN KEY (status_senin) REFERENCES status(id),
                FOREIGN KEY (status_selasa) REFERENCES status(id),
                FOREIGN KEY (status_rabu) REFERENCES status(id),
                FOREIGN KEY (status_kamis) REFERENCES status(id),
                FOREIGN KEY (status_jumat) REFERENCES status(id),
                FOREIGN KEY (status_sabtu) REFERENCES status(id),
                FOREIGN KEY (status_minggu) REFERENCES status(id)
            )
        """)
        mysql.connection.commit()
        cur.close()
    print("Tabel jadwal_ruangan telah dibuat")

def create_table_heatmap():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS heatmap (
                No INT AUTO_INCREMENT PRIMARY KEY,
                Span VARCHAR(255),
                Total_Senin VARCHAR(255),
                Total_Selasa VARCHAR(255),
                Total_Rabu VARCHAR(255),
                Total_Kamis VARCHAR(255),
                Total_Jumat VARCHAR(255),
                Total_Sabtu VARCHAR(255),
                Total_Minggu VARCHAR(255)
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel Heatmap telah dibuat")

def create_table_heatmap_gedung():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS gedung(
                no INT AUTO_INCREMENT PRIMARY KEY,
                nama_gedung VARCHAR(255) NOT NULL,
                jumlah_total_ruangan INT NOT NULL
            )
        """
        )
        mysql.connection.commit()
        cur.close()
        print("Tabel Heatmap Gedung telah dibuat")

def create_table_heatmap_ruangan():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS ruangan(
                no INT AUTO_INCREMENT PRIMARY KEY,
                nama_ruangan VARCHAR(255) NOT NULL,
                kapasitas INT NOT NULL,
                gedung_no INT,
                FOREIGN KEY (gedung_no) REFERENCES gedung(no)
            )
        """
        )
        mysql.connection.commit()
        cur.close()
        print("Tabel Heatmap Ruangan telah dibuat")

def create_table_admin():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS admin(
                no INT AUTO_INCREMENT PRIMARY KEY,
                nip VARCHAR(50) NOT NULL,
                email VARCHAR(120) NOT NULL,
                password VARCHAR(60) NOT NULL
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel Admin Telah Dibuat")

def create_table_booking():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS booking_ruangan (
                no INT AUTO_INCREMENT PRIMARY KEY,
                nama_pemohon VARCHAR(255) NOT NULL,
                nama_ruangan VARCHAR(255) NOT NULL,
                hari VARCHAR(255) NOT NULL,
                tanggal DATE NOT NULL,
                waktu_awal VARCHAR(255) NOT NULL,
                waktu_akhir VARCHAR(255) NOT NULL,
                tujuan_boking VARCHAR(255) NOT NULL,
                jumlah_peserta INT NOT NULL,
                status INT,
                Keterangan VARCHAR(255),
                FOREIGN KEY (status) REFERENCES status_booking(id)
            )
        """
        )
        mysql.connection.commit()
        cur.close()
        print("Tabel booking telah dibuat")

def create_table_report():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS report (
                no INT AUTO_INCREMENT PRIMARY KEY,
                nama_ruangan VARCHAR(255) NOT NULL,
                hari VARCHAR(255) NOT NULL,
                waktu_awal VARCHAR(255) NOT NULL,
                alasan VARCHAR(255) NOT NULL,
                tindakan VARCHAR(255)
            )
        """
        )
        mysql.connection.commit()
        cur.close()
        print("Tabel report telah dibuat")

def create_table_jam():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS waktu (
                id INT AUTO_INCREMENT PRIMARY KEY,
                jam VARCHAR(255) NOT NULL
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel waktu telah dibuat")

def create_table_status():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS status (
                id INT AUTO_INCREMENT PRIMARY KEY,
                keterangan VARCHAR(255) NOT NULL
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel status telah dibuat")

def create_table_status_booking():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS status_booking (
                id INT AUTO_INCREMENT PRIMARY KEY,
                keterangan VARCHAR(255) NOT NULL
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel status booking telah dibuat")

def create_table_program_studi():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS kelas_prodi (
                id INT AUTO_INCREMENT PRIMARY KEY,
                span VARCHAR(255) NOT NULL,
                program_studi VARCHAR(255) NOT NULL,
                jumlah INT NOT NULL
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Tabel program_studi_count telah dibuat")

# --------------------------------------#
# Fungsi Fungsi untuk menginputkan Data #
# --------------------------------------#
def insert_data_kapasitas_ruangan():
    with app.app_context():
        with open('app/static/json/kapasitas.json', 'r') as file:
            data = json.load(file)

        cur = mysql.connection.cursor()
        for item in data:
            cur.execute("SELECT No FROM kapasitas_ruangan WHERE KODE_RUANG = %s", (item['KODE_RUANG'],))
            result = cur.fetchone()
            if result is None:
                cur.execute("""
                    INSERT INTO kapasitas_ruangan (FAK, FAKULTAS, KODE_RUANG, NAMA_RUANG, KAPASITAS, GEDUNG, LANTAI, JENIS_RUANG, BERBAGI, JAM_SKS) 
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """, (item['FAK'], item['FAKULTAS'], item['KODE_RUANG'], item['NAMA_RUANG'], item['KAPASITAS'], item['GEDUNG'], item['LANTAI'], item['JENIS_RUANG'], item['BERBAGI'], item['JAM_SKS']))
        mysql.connection.commit()
        cur.close()
    print("Data Kapasitas Ruangan Berhasil Dimasukkan")

def insert_real_data_jadwal(file_name="app/static/json/jadwaltotal.json", limit=5000):
    with app.app_context():
        if os.path.exists(file_name):
            with open(file_name, 'r') as file:
                data = json.load(file)

            cur = mysql.connection.cursor()
            try:
                cur.execute("START TRANSACTION")  # Start transaction

                # Get the current count of data in the table
                cur.execute("SELECT COUNT(*) FROM jadwal_ruangan")
                current_count = cur.fetchone()[0]

                count = 0  # Variable to count the number of inserted data

                for key, item in data.items():
                    span = item['Span']
                    senin = item['Senin']
                    status_senin = item['status_senin']
                    selasa = item['Selasa']
                    status_selasa = item['status_selasa']
                    rabu = item['Rabu']
                    status_rabu = item['status_rabu']
                    kamis = item['Kamis']
                    status_kamis = item['status_kamis']
                    jumat = item['Jumat']
                    status_jumat = item['status_jumat']
                    sabtu = item['Sabtu']
                    status_sabtu = item['status_sabtu']
                    minggu = item['Minggu']
                    status_minggu = item['status_minggu']

                    # Check if data insertion will exceed the limit
                    if current_count + count >= limit:
                        print("Data insertion limit reached.")
                        break

                    # Check if data already exists
                    cur.execute("""
                        SELECT * FROM jadwal_ruangan 
                        WHERE Span = %s AND Senin = %s AND status_senin = %s AND Selasa = %s AND status_selasa = %s
                        AND Rabu = %s AND status_rabu = %s AND Kamis = %s AND status_kamis = %s
                        AND Jumat = %s AND status_jumat = %s AND Sabtu = %s AND status_sabtu = %s
                        AND Minggu = %s AND status_minggu = %s
                    """, (span, senin, status_senin, selasa, status_selasa, rabu, status_rabu, kamis, status_kamis, jumat, status_jumat, sabtu, status_sabtu, minggu, status_minggu))
                    existing_data = cur.fetchone()

                    if existing_data:
                        # If data already exists, skip
                        print(f"Data for {span} already exists, skipping.")
                    else:
                        # If data does not exist, insert
                        cur.execute("""
                            INSERT INTO jadwal_ruangan 
                            (Span, Senin, status_senin, Selasa, status_selasa, Rabu, status_rabu, Kamis, status_kamis, Jumat, status_jumat, Sabtu, status_sabtu, Minggu, status_minggu) 
                            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                        """, (span, senin, status_senin, selasa, status_selasa, rabu, status_rabu, kamis, status_kamis, jumat, status_jumat, sabtu, status_sabtu, minggu, status_minggu))
                        count += 1  # Increment the count of inserted data

                mysql.connection.commit()  # Commit transaction
                print("Data from", file_name, "has been inserted into the Jadwal table.")
            except Exception as e:
                mysql.connection.rollback()  # Rollback transaction in case of error
                print("Error:", e)
            finally:
                cur.close()
        else:
            print("File", file_name, "not found")

def insert_table_heatmap(file_name='app/static/json/total_jadwal.json', limit=88):
    with app.app_context():
        if os.path.exists(file_name):
            with open(file_name, 'r') as file:
                data = json.load(file)

            cur = mysql.connection.cursor()
            try:
                cur.execute("START TRANSACTION")  # Start transaction

                # Get the current count of data in the table
                cur.execute("SELECT COUNT(*) FROM heatmap")
                current_count = cur.fetchone()[0]

                count = 0  # Variable to count the number of inserted data

                for item in data:
                    span = item['Span']
                    total_senin = item['Total Senin']
                    total_selasa = item['Total Selasa']
                    total_rabu = item['Total Rabu']
                    total_kamis = item['Total Kamis']
                    total_jumat = item['Total Jumat']
                    total_sabtu = item['Total Sabtu']
                    total_minggu = item['Total Minggu']

                    # Check if data insertion will exceed the limit
                    if current_count + count >= limit:
                        print("Data insertion limit reached.")
                        break

                    # Check if data already exists
                    cur.execute("""
                        SELECT * FROM heatmap 
                        WHERE Span = %s AND Total_Senin = %s AND Total_Selasa = %s 
                        AND Total_Rabu = %s AND Total_Kamis = %s AND Total_Jumat = %s 
                        AND Total_Sabtu = %s AND Total_Minggu = %s
                    """, (span, total_senin, total_selasa, total_rabu, total_kamis, total_jumat, total_sabtu, total_minggu))
                    existing_data = cur.fetchone()

                    if existing_data:
                        # If data already exists, skip
                        print(f"Data for {span} already exists, skipping.")
                    else:
                        # If data does not exist, insert
                        cur.execute("""
                            INSERT INTO heatmap 
                            (Span, Total_Senin, Total_Selasa, Total_Rabu, Total_Kamis, Total_Jumat, Total_Sabtu, Total_Minggu) 
                            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
                        """, (span, total_senin, total_selasa, total_rabu, total_kamis, total_jumat, total_sabtu, total_minggu))
                        count += 1  # Increment the count of inserted data

                mysql.connection.commit()  # Commit transaction
                print("Data from", file_name, "has been inserted into the heatmap table.")
            except Exception as e:
                mysql.connection.rollback()  # Rollback transaction in case of error
                print("Error:", e)
            finally:
                cur.close()
        else:
            print("File", file_name, "not found")

def insert_data_kapasitas():
    with app.app_context():
        cur = mysql.connection.cursor()
        
        # Membaca data JSON
        with open('app/static/json/kapasitas_all.json', 'r', encoding='utf-8') as file:
            data = json.load(file)

        # Mengimpor data ke tabel 'gedung' dan 'ruangan'
        for gedung in data['kapasitas_list']:
            nama_gedung = gedung['Gedung']
            jumlah_total_ruangan = gedung['Jumlah_Total_Ruangan']
            
            # Menyisipkan data ke tabel 'gedung'
            cur.execute("INSERT INTO gedung (nama_gedung, jumlah_total_ruangan) VALUES (%s, %s)", (nama_gedung, jumlah_total_ruangan))
            gedung_no = cur.lastrowid
            
            # Menyisipkan data ke tabel 'ruangan'
            for ruangan in gedung['Ruangan']:
                nama_ruangan = ruangan['Nama_Ruangan']
                kapasitas = ruangan['Kapasitas']
                cur.execute("INSERT INTO ruangan (nama_ruangan, kapasitas, gedung_no) VALUES (%s, %s, %s)", (nama_ruangan, kapasitas, gedung_no))

        # Menyimpan perubahan dan menutup cursor
        mysql.connection.commit()
        cur.close()
        print("Data telah berhasil diimpor dari JSON")

def insert_data_jam_jadwal():
    with app.app_context():
        # Buka file JSON jam_jadwal.json
        with open('app/static/json/jam_jadwal.json', 'r') as file:
            data = json.load(file)

        # Koneksi ke database MySQL
        cur = mysql.connection.cursor()

        # Iterasi setiap item dalam data JSON
        for item in data:
            # Lakukan operasi INSERT ke dalam tabel waktu
            cur.execute("""
                INSERT INTO waktu (jam) 
                VALUES (%s)
            """, (item[list(item.keys())[0]],))
        
        # Commit perubahan ke database
        mysql.connection.commit()

        # Tutup kursor dan cetak pesan berhasil
        cur.close()
    
    print("Data Jam Jadwal Berhasil Dimasukkan")

def insert_data_status():
    with app.app_context():
        # Buka file JSON status.json
        with open('app/static/json/status_jadwal.json', 'r') as file:
            data = json.load(file)

        # Koneksi ke database MySQL
        cur = mysql.connection.cursor()

        # Iterasi setiap item dalam data JSON
        for item in data:
            # Lakukan operasi INSERT ke dalam tabel status
            cur.execute("""
                INSERT INTO status (keterangan) 
                VALUES (%s)
            """, (item[list(item.keys())[0]],))
        
        # Commit perubahan ke database
        mysql.connection.commit()

        # Tutup kursor dan cetak pesan berhasil
        cur.close()
    
    print("Data status Jadwal Berhasil Dimasukkan")

def insert_data_status_booking():
    with app.app_context():
        # Buka file JSON status.json
        with open('app/static/json/status_boking.json', 'r') as file:
            data = json.load(file)

        # Koneksi ke database MySQL
        cur = mysql.connection.cursor()

        # Iterasi setiap item dalam data JSON
        for item in data:
            # Lakukan operasi INSERT ke dalam tabel status
            cur.execute("""
                INSERT INTO status_booking (keterangan) 
                VALUES (%s)
            """, (item[list(item.keys())[0]],))
        
        # Commit perubahan ke database
        mysql.connection.commit()

        # Tutup kursor dan cetak pesan berhasil
        cur.close()
    
    print("Data status Jadwal Berhasil Dimasukkan")

def insert_program_studi():
    with app.app_context():
        # Buka file JSON program_studi_count.json
        with open('app/static/json/program_studi_count.json', 'r') as file:
            data = json.load(file)

        # Koneksi ke database MySQL
        cur = mysql.connection.cursor()

        # Iterasi setiap item dalam data JSON
        for item in data:
            span = item.get("Span")
            program_studi = item.get("Program Studi")
            jumlah = item.get("Jumlah")

            # Lakukan operasi INSERT ke dalam tabel program_studi_count
            cur.execute("""
                INSERT INTO kelas_prodi (span, program_studi, jumlah) 
                VALUES (%s, %s, %s)
            """, (span, program_studi, jumlah))
        
        # Commit perubahan ke database
        mysql.connection.commit()

        # Tutup kursor dan cetak pesan berhasil
        cur.close()
    
    print("Data Program Studi Count berhasil dimasukkan")

# --------------------------------------#
# Fungsi Fungsi untuk update Data       #
# --------------------------------------#

def update_real_data_jadwal(file_name="app/static/json/hasil_jadwal.json"):
    with app.app_context():
        if os.path.exists(file_name):
            with open(file_name, 'r') as file:
                data = json.load(file)

            cur = mysql.connection.cursor()
            try:
                cur.execute("START TRANSACTION")  # Mulai transaksi

                for key, item in data.items():
                    span = item['Span']
                    senin = item['Senin']
                    selasa = item['Selasa']
                    rabu = item['Rabu']
                    kamis = item['Kamis']
                    jumat = item['Jumat']
                    sabtu = item['Sabtu']
                    minggu = item['Minggu']

                    # Periksa apakah data sudah ada
                    cur.execute("""
                        SELECT * FROM jadwal_ruangan 
                        WHERE Span = %s AND Senin = %s AND Selasa = %s 
                        AND Rabu = %s AND Kamis = %s AND Jumat = %s 
                        AND Sabtu = %s AND Minggu = %s
                    """, (span, senin, selasa, rabu, kamis, jumat, sabtu, minggu))
                    existing_data = cur.fetchone()

                    if existing_data:
                        # Jika data ada, perbarui dengan nilai baru
                        cur.execute("""
                            UPDATE jadwal_ruangan 
                            SET Senin = %s, Selasa = %s, Rabu = %s, Kamis = %s, 
                                Jumat = %s, Sabtu = %s, Minggu = %s
                            WHERE Span = %s
                        """, (senin, selasa, rabu, kamis, jumat, sabtu, minggu, span))
                        print(f"Data for {span} has been updated.")
                    else:
                        # Jika data tidak ada, lewati
                        print(f"Data for {span} does not exist, skipping.")

                mysql.connection.commit()  # Commit transaksi
                print("Data from", file_name, "has been updated in the Jadwal table.")
            except Exception as e:
                mysql.connection.rollback()  # Rollback transaksi jika terjadi kesalahan
                print("Error:", e)
            finally:
                cur.close()
        else:
            print("File", file_name, "not found")

def update_table_heatmap(file_name="total_jadwal.json"):
    with app.app_context():
        if os.path.exists(file_name):
            with open(file_name, 'r') as file:
                data = json.load(file)

            cur = mysql.connection.cursor()
            try:
                cur.execute("START TRANSACTION")  # Mulai transaksi

                for key, item in data.items():
                    span = item['Span']
                    total_senin = item['Total_Senin']
                    total_selasa = item['Total_Selasa']
                    total_rabu = item['Total_Rabu']
                    total_kamis = item['Total_Kamis']
                    total_jumat = item['Total_Jumat']
                    total_sabtu = item['Total_Sabtu']
                    total_minggu = item['Total_Minggu']

                    # Periksa apakah data sudah ada
                    cur.execute("""
                        SELECT * FROM heatmap 
                        WHERE Span = %s
                    """, (span,))
                    existing_data = cur.fetchone()

                    if existing_data:
                        # Jika data ada, perbarui dengan nilai baru
                        cur.execute("""
                            UPDATE heatmap 
                            SET Total_Senin = %s, Total_Selasa = %s, Total_Rabu = %s, 
                                Total_Kamis = %s, Total_Jumat = %s, Total_Sabtu = %s, 
                                Total_Minggu = %s
                            WHERE Span = %s
                        """, (total_senin, total_selasa, total_rabu, total_kamis, total_jumat, total_sabtu, total_minggu, span))
                        print(f"Data for {span} has been updated.")
                    else:
                        # Jika data tidak ada, lewati
                        print(f"Data for {span} does not exist, skipping.")

                mysql.connection.commit()  # Commit transaksi
                print("Data from", file_name, "has been updated in the heatmap table.")
            except Exception as e:
                mysql.connection.rollback()  # Rollback transaksi jika terjadi kesalahan
                print("Error:", e)
            finally:
                cur.close()
        else:
            print("File", file_name, "not found")

def update_data_heatmap():
    with app.app_context():
        cur = mysql.connection.cursor()
        
        # Membaca data JSON
        with open('app/static/json/kapasitas_all.json', 'r', encoding='utf-8') as file:
            data = json.load(file)

        # Mengupdate data di tabel 'gedung' dan 'ruangan'
        for gedung in data['kapasitas_list']:
            nama_gedung = gedung['Gedung']
            jumlah_total_ruangan = gedung['Jumlah_Total_Ruangan']
            
            # Periksa apakah data gedung sudah ada
            cur.execute("SELECT no FROM gedung WHERE nama_gedung = %s", (nama_gedung,))
            gedung_no = cur.fetchone()

            if gedung_no:
                gedung_no = gedung_no[0]
                # Update data gedung jika sudah ada
                cur.execute("UPDATE gedung SET jumlah_total_ruangan = %s WHERE no = %s", (jumlah_total_ruangan, gedung_no))
            else:
                # Sisipkan data gedung jika belum ada
                cur.execute("INSERT INTO gedung (nama_gedung, jumlah_total_ruangan) VALUES (%s, %s)", (nama_gedung, jumlah_total_ruangan))
                gedung_no = cur.lastrowid

            for ruangan in gedung['Ruangan']:
                nama_ruangan = ruangan['Nama_Ruangan']
                kapasitas = ruangan['Kapasitas']
                
                # Periksa apakah data ruangan sudah ada
                cur.execute("SELECT no FROM ruangan WHERE nama_ruangan = %s AND gedung_no = %s", (nama_ruangan, gedung_no))
                ruangan_no = cur.fetchone()

                if ruangan_no:
                    ruangan_no = ruangan_no[0]
                    # Update data ruangan jika sudah ada
                    cur.execute("UPDATE ruangan SET kapasitas = %s WHERE no = %s", (kapasitas, ruangan_no))
                else:
                    # Sisipkan data ruangan jika belum ada
                    cur.execute("INSERT INTO ruangan (nama_ruangan, kapasitas, gedung_no) VALUES (%s, %s, %s)", (nama_ruangan, kapasitas, gedung_no))

        # Menyimpan perubahan dan menutup cursor
        mysql.connection.commit()
        cur.close()
        print("Data telah berhasil diperbarui dari JSON")

# --------------------------------------#
# Fungsi Fungsi untuk Trigger Data      #
# --------------------------------------#

def create_triggers_jadwal_status():
    with app.app_context():
        cur = mysql.connection.cursor()

        # Trigger untuk kolom Senin
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_senin
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Senin) > 0 THEN
                SET NEW.status_senin = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_senin_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Senin) > 0 THEN
                SET NEW.status_senin = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Selasa
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_selasa
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Selasa) > 0 THEN
                SET NEW.status_selasa = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_selasa_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Selasa) > 0 THEN
                SET NEW.status_selasa = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Rabu
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_rabu
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Rabu) > 0 THEN
                SET NEW.status_rabu = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_rabu_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Rabu) > 0 THEN
                SET NEW.status_rabu = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Kamis
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_kamis
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Kamis) > 0 THEN
                SET NEW.status_kamis = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_kamis_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Kamis) > 0 THEN
                SET NEW.status_kamis = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Jumat
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_jumat
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Jumat) > 0 THEN
                SET NEW.status_jumat = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_jumat_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Jumat) > 0 THEN
                SET NEW.status_jumat = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Sabtu
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_sabtu
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Sabtu) > 0 THEN
                SET NEW.status_sabtu = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_sabtu_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Sabtu) > 0 THEN
                SET NEW.status_sabtu = 17;
            END IF;
        END
        """)

        # Trigger untuk kolom Minggu
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_minggu
        BEFORE INSERT ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Minggu) > 0 THEN
                SET NEW.status_minggu = 17;
            END IF;
        END
        """)

        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_status_minggu_update
        BEFORE UPDATE ON jadwal_ruangan
        FOR EACH ROW
        BEGIN
            IF LOCATE(',', NEW.Minggu) > 0 THEN
                SET NEW.status_minggu = 17;
            END IF;
        END
        """)

        mysql.connection.commit()
        cur.close()
        print("Triggers created or already existed")

def truncate_jadwal_ruangan():
    with app.app_context():
        cur = mysql.connection.cursor()
        try:
            cur.execute("TRUNCATE TABLE jadwal_ruangan")
            mysql.connection.commit()
            print("Table jadwal_ruangan has been truncated.")
        except Exception as e:
            mysql.connection.rollback()
            logging.error(f"Error truncating table jadwal_ruangan: {e}")
        finally:
            cur.close()

def truncate_rekap_penggunaan_ruangan():
    with app.app_context():
        cur = mysql.connection.cursor()
        try:
            cur.execute("TRUNCATE TABLE kelas_prodi")
            mysql.connection.commit()
            print("Table jadwal_ruangan has been truncated.")
        except Exception as e:
            mysql.connection.rollback()
            logging.error(f"Error truncating table kelas_prodi: {e}")
        finally:
            cur.close()

if __name__ == "__main__":
    # create_table_status()
    # create_table_status_booking()
    # create_table_kapasitas_ruangan()
    # create_table_jadwal_ruangan()
    # create_table_heatmap()
    # create_table_heatmap_gedung()
    # create_table_heatmap_ruangan()
    # create_table_admin()
    # create_table_booking()
    # create_table_report()
    # create_table_jam()
    # create_table_program_studi()

    # insert_data_status()
    # insert_data_status_booking()
    # insert_data_kapasitas_ruangan()
    # insert_real_data_jadwal()
    # insert_table_heatmap()
    # insert_data_kapasitas()
    # insert_data_jam_jadwal()
    insert_program_studi()

    # create_triggers_jadwal_status()
    # truncate_jadwal_ruangan()
