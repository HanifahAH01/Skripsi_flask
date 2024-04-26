from flask import Flask
from flask_mysqldb import MySQL
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

# Table Dosen
def create_table_dosen():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS Jdw_Dosen (
                NO INT AUTO_INCREMENT PRIMARY KEY,
                THN_SMT VARCHAR(255),
                KODE VARCHAR(255),
                DOSEN VARCHAR(255),
                SKS_1 INT,
                SKS_2 INT,
                SKS_TOTAL INT,
                KELAS_1 INT,
                KELAS_2 INT,
                KELAS_TOTAL INT,
                Dosen_1 INT,
                Dosen_2 INT,
                Dosen_Total INT
            )
        """)
        mysql.connection.commit()
        cur.close()
        print("Database Dosen Telah dibuat")

# Table Kapasitas Ruangan
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

# Table Jadwal
def create_table_jadwal():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS jadwal (
                No INT AUTO_INCREMENT PRIMARY KEY,
                Span VARCHAR(255),
                Waktu VARCHAR(255),
                Senin VARCHAR(255),
                Selasa VARCHAR(255),
                Rabu VARCHAR(255),
                Kamis VARCHAR(255),
                Jumat VARCHAR(255),
                Sabtu VARCHAR(255),
                Minggu VARCHAR(255)
            )
        """)
        mysql.connection.commit()
        cur.close()
    print("Database Jadwal Telah Dibuat")

# Table Real Jadwal
def create_real_table_jadwal():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS real_jadwal (
                No INT AUTO_INCREMENT PRIMARY KEY,
                Span VARCHAR(255),
                Senin VARCHAR(255),
                Selasa VARCHAR(255),
                Rabu VARCHAR(255),
                Kamis VARCHAR(255),
                Jumat VARCHAR(255),
                Sabtu VARCHAR(255),
                Minggu VARCHAR(255)
            )
        """)
        mysql.connection.commit()
        cur.close()
    print("Tabel Jadwal Telah Dibuat")

# --------------------------------------#
# Fungsi Fungsi untuk menginputkan Data #
# --------------------------------------#

# Input Data Dosen
def insert_data_dosen():
    with app.app_context():
        with open('static/json/Data_Dosen.json', 'r') as file:
            data = json.load(file)

        cur = mysql.connection.cursor()
        for item in data:
            cur.execute("SELECT NO FROM Jdw_Dosen WHERE NO = %s", (item['NO'],))
            result = cur.fetchone()
            if result is None:
                cur.execute("""
                    INSERT INTO Jdw_Dosen (NO, THN_SMT, KODE, DOSEN, SKS_1, SKS_2, SKS_TOTAL, KELAS_1, KELAS_2, KELAS_TOTAL, Dosen_1, Dosen_2, Dosen_Total) 
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """, (item['NO'], item['THN_SMT'], item['KODE'], item['DOSEN'], item['SKS_1'], item['SKS_2'], item['SKS_TOTAL'], item['KELAS_1'], item['KELAS_2'], item['KELAS_TOTAL'], item['Dosen_1'], item['Dosen_2'], item['Dosen_Total']))
        mysql.connection.commit()
        cur.close()
    print("Data Dosen Berhasil Dimasukan ")

# Input Data Kapasitas Dosen
def insert_data_kapasitas_ruangan():
    with app.app_context():
        with open('static/json/kapasitas.json', 'r') as file:
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

# Input Data Jadwal
def insert_data_jadwal():
    with app.app_context():
        with open('static/json/jadwal.json', 'r') as file:
            data = json.load(file)

        cur = mysql.connection.cursor()
        for item in data:
            cur.execute("SELECT No FROM jadwal WHERE Span = %s", (item['Span'],))
            result = cur.fetchone()
            if result is None:
                cur.execute("""
                    INSERT INTO jadwal (Span, Waktu, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu) 
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                """, (item['Span'], item['Waktu'], item['Senin'], item['Selasa'], item['Rabu'], item['Kamis'], item['Jumat'], item['Sabtu'], item['Minggu']))
        mysql.connection.commit()
        cur.close()
    print("Data Jadwal Berhasil Dimasukkan")

# Input Data Real Jadwal
# def insert_real_data_jadwal(file_name="hasil_jadwal.json"):
#     with app.app_context():
#         if os.path.exists(file_name):
#             with open(file_name, 'r') as file:
#                 data = json.load(file)

#             cur = mysql.connection.cursor()
#             for key, item in data.items():
#                 span = item['Span']  # Menggunakan 'Judul' sebagai nilai untuk kolom 'Span'
#                 senin = item['Senin']
#                 selasa = item['Selasa']
#                 rabu = item['Rabu']
#                 kamis = item['Kamis']
#                 jumat = item['Jumat']
#                 sabtu = item['Sabtu']
#                 minggu = item['Minggu']

#                 cur.execute("""
#                     INSERT INTO real_jadwal (Span, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu) 
#                     VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
#                 """, (span, senin, selasa, rabu, kamis, jumat, sabtu, minggu))
                
#             mysql.connection.commit()
#             cur.close()
#             print("Data dari", file_name, "telah dimasukkan ke dalam tabel Jadwal")
#         else:
#             print("File", file_name, "tidak ditemukan")


def insert_real_data_jadwal(file_name="hasil_jadwal.json", limit=886):
    with app.app_context():
        if os.path.exists(file_name):
            with open(file_name, 'r') as file:
                data = json.load(file)

            cur = mysql.connection.cursor()
            try:
                cur.execute("START TRANSACTION")  # Start transaction

                # Get the current count of data in the table
                cur.execute("SELECT COUNT(*) FROM real_jadwal")
                current_count = cur.fetchone()[0]

                count = 0  # Variable to count the number of inserted data

                for key, item in data.items():
                    span = item['Span']
                    senin = item['Senin']
                    selasa = item['Selasa']
                    rabu = item['Rabu']
                    kamis = item['Kamis']
                    jumat = item['Jumat']
                    sabtu = item['Sabtu']
                    minggu = item['Minggu']

                    # Check if data insertion will exceed the limit
                    if current_count + count >= limit:
                        print("Data insertion limit reached.")
                        break

                    # Check if data already exists
                    cur.execute("""
                        SELECT * FROM real_jadwal 
                        WHERE Span = %s AND Senin = %s AND Selasa = %s 
                        AND Rabu = %s AND Kamis = %s AND Jumat = %s 
                        AND Sabtu = %s AND Minggu = %s
                    """, (span, senin, selasa, rabu, kamis, jumat, sabtu, minggu))
                    existing_data = cur.fetchone()

                    if existing_data:
                        # If data already exists, skip
                        print(f"Data for {span} already exists, skipping.")
                    else:
                        # If data does not exist, insert
                        cur.execute("""
                            INSERT INTO real_jadwal 
                            (Span, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu) 
                            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
                        """, (span, senin, selasa, rabu, kamis, jumat, sabtu, minggu))
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









