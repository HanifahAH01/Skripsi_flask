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
# Create table
# Fungsi untuk membuat tabel
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
                SKS_TOTAL FLOAT,
                KELAS_1 INT,
                KELAS_2 INT,
                KELAS_TOTAL FLOAT,
                Dosen_1 INT,
                Dosen_2 INT,
                Dosen_Total FLOAT,
                Total INT
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

def create_heatmap_gedung():
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

def create_heatmap_ruangan():
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

def create_sks_dosen_fpmipa():
    with app.app_context():
        cur = mysql.connection.cursor()
        cur.execute("""
            CREATE TABLE IF NOT EXISTS sks_dosen_fpmipa(
                no INT AUTO_INCREMENT PRIMARY KEY,
                Tahun VARCHAR(10),
                Kode VARCHAR(10),
                Dosen VARCHAR(255),
                SKS_1 INT,
                SKS_2 INT,
                SKS_Total INT,
                Kelas_1 INT,
                Kelas_2 INT,
                Kelas_Total INT,
                Dosen_1 INT,
                Dosen_2 INT,
                Dosen_Total INT,
                Total INT
            )
        """
        )
        mysql.connection.commit()
        cur.close()
        print("Tabel Heatmap Ruangan telah dibuat")



# --------------------------------------#
# Fungsi Fungsi untuk menginputkan Data #
# --------------------------------------#

# Input Data Dosen
def insert_data_dosen():
    with app.app_context():
        with open('app/static/json/Data_Dosen.json', 'r') as file:
            data = json.load(file)

        cur = mysql.connection.cursor()
        for item in data:
            cur.execute("SELECT NO FROM Jdw_Dosen WHERE NO = %s", (item['NO'],))
            result = cur.fetchone()
            if result is None:
                # Konversi nilai ke int dan hitung total
                sks_1 = float(item['SKS_1']) if item['SKS_1'] else 0
                sks_2 = float(item['SKS_2']) if item['SKS_2'] else 0
                kelas_1 = float(item['KELAS_1']) if item['KELAS_1'] else 0
                kelas_2 = float(item['KELAS_2']) if item['KELAS_2'] else 0
                dosen_1 = float(item['Dosen_1']) if item['Dosen_1'] else 0
                dosen_2 = float(item['Dosen_2']) if item['Dosen_2'] else 0

                sks_total = sks_1 + sks_2
                kelas_total = kelas_1 + kelas_2
                dosen_total = dosen_1 + dosen_2
                total = sks_total + kelas_total + dosen_total
                
                cur.execute("""
                    INSERT INTO Jdw_Dosen (
                        NO, THN_SMT, KODE, DOSEN, SKS_1, SKS_2, SKS_TOTAL, KELAS_1, KELAS_2, KELAS_TOTAL, Dosen_1, Dosen_2, Dosen_Total, Total
                    ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """, (
                    item['NO'], item['THN_SMT'], item['KODE'], item['DOSEN'], sks_1, sks_2, 
                    sks_total, kelas_1, kelas_2, kelas_total, 
                    dosen_1, dosen_2, dosen_total, total
                ))
        mysql.connection.commit()
        cur.close()
    print("Data Dosen Berhasil Dimasukkan")

# Input Data Kapasitas Dosen
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

# Input Data Jadwal
def insert_data_jadwal():
    with app.app_context():
        with open('app/static/json/jadwal.json', 'r') as file:
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

def insert_real_data_jadwal(file_name="app/static/json/hasil_jadwal.json", limit=886):
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

def insert_table_heatmap(file_name="total_jadwal.json", limit=88):
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

                for key, item in data.items():
                    span = item['Span']
                    total_senin = item['Total_Senin']
                    total_selasa = item['Total_Selasa']
                    total_rabu = item['Total_Rabu']
                    total_kamis = item['Total_Kamis']
                    total_jumat = item['Total_Jumat']
                    total_sabtu = item['Total_Sabtu']
                    total_minggu = item['Total_Minggu']

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
                print("Data from", file_name, "has been inserted into the Jadwal table.")
            except Exception as e:
                mysql.connection.rollback()  # Rollback transaction in case of error
                print("Error:", e)
            finally:
                cur.close()
        else:
            print("File", file_name, "not found")

def insert_data_heatmap():
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

def insert_data_sks_dosen_fpmipa():
    try:
        with app.app_context():
            mysql = MySQL()

            # Membaca data JSON
            with open('app/static/json/data_dosen_chart.json', 'r', encoding='utf-8') as file:
                data = json.load(file)

            # Mengimpor data ke tabel 'sks_dosen_fpmipa'
            cur = mysql.connection.cursor()
            for dosen_data in data['dosen_list']:
                Tahun = dosen_data['Tahun']
                Kode = dosen_data['Kode']
                Dosen = dosen_data['Dosen']
                SKS_1 = dosen_data['SKS_1']
                SKS_2 = dosen_data['SKS_2']
                SKS_Total = dosen_data['SKS_Total']
                Kelas_1 = dosen_data['Kelas_1']
                Kelas_2 = dosen_data['Kelas_2']
                Kelas_Total = dosen_data['Kelas_Total']
                Dosen_1 = dosen_data['Dosen_1']
                Dosen_2 = dosen_data['Dosen_2']
                Dosen_Total = dosen_data['Dosen_Total']
                Total = dosen_data['Total']

                cur.execute("""
                    INSERT INTO sks_dosen_fpmipa 
                    (Tahun, Kode, Dosen, SKS_1, SKS_2, SKS_Total, Kelas_1, Kelas_2, Kelas_Total, Dosen_1, Dosen_2, Dosen_Total, Total) 
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """, (Tahun, Kode, Dosen, SKS_1, SKS_2, SKS_Total, Kelas_1, Kelas_2, Kelas_Total, Dosen_1, Dosen_2, Dosen_Total, Total))

            # Menyimpan perubahan dan menutup cursor
            mysql.connection.commit()
            cur.close()
            print("Data telah berhasil diimpor ke tabel sks_dosen_fpmipa")

    except Exception as e:
        print(f"Error: {e}")

# --------------------------------------#
# Fungsi Fungsi untuk Trigger Data #
# --------------------------------------#

def create_triggers():
    with app.app_context():
        cur = mysql.connection.cursor()

        # Trigger untuk memperbarui SKS_TOTAL saat SKS_1 atau SKS_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_sks_total
        BEFORE INSERT ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.SKS_TOTAL = NEW.SKS_1 + NEW.SKS_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_sks_total_update
        BEFORE UPDATE ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.SKS_TOTAL = NEW.SKS_1 + NEW.SKS_2;
        END
        """)
        
        # Trigger untuk memperbarui KELAS_TOTAL saat KELAS_1 atau KELAS_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_kelas_total
        BEFORE INSERT ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.KELAS_TOTAL = NEW.KELAS_1 + NEW.KELAS_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_kelas_total_update
        BEFORE UPDATE ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.KELAS_TOTAL = NEW.KELAS_1 + NEW.KELAS_2;
        END
        """)
        
        # Trigger untuk memperbarui Dosen_Total saat Dosen_1 atau Dosen_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_dosen_total
        BEFORE INSERT ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.Dosen_Total = NEW.Dosen_1 + NEW.Dosen_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_dosen_total_update
        BEFORE UPDATE ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.Dosen_Total = NEW.Dosen_1 + NEW.Dosen_2;
        END
        """)
        
        # Trigger untuk memperbarui Total saat SKS_TOTAL, KELAS_TOTAL, atau Dosen_Total diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_total
        BEFORE INSERT ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.Total = NEW.SKS_TOTAL + NEW.KELAS_TOTAL + NEW.Dosen_Total;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_total_update
        BEFORE UPDATE ON Jdw_Dosen
        FOR EACH ROW
        BEGIN
            SET NEW.Total = NEW.SKS_TOTAL + NEW.KELAS_TOTAL + NEW.Dosen_Total;
        END
        """)
        
        mysql.connection.commit()
        cur.close()
        print("Triggers created or already existed")

def create_triggers_sks_dosen_fpmipa():
    with app.app_context():
        cur = mysql.connection.cursor()

        # Trigger untuk memperbarui SKS_Total saat SKS_1 atau SKS_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_sks_total_sks_dosen_fpmipa
        BEFORE INSERT ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.SKS_Total = NEW.SKS_1 + NEW.SKS_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_sks_total_update_sks_dosen_fpmipa
        BEFORE UPDATE ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.SKS_Total = NEW.SKS_1 + NEW.SKS_2;
        END
        """)
        
        # Trigger untuk memperbarui Kelas_Total saat Kelas_1 atau Kelas_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_kelas_total_sks_dosen_fpmipa
        BEFORE INSERT ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Kelas_Total = NEW.Kelas_1 + NEW.Kelas_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_kelas_total_update_sks_dosen_fpmipa
        BEFORE UPDATE ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Kelas_Total = NEW.Kelas_1 + NEW.Kelas_2;
        END
        """)
        
        # Trigger untuk memperbarui Dosen_Total saat Dosen_1 atau Dosen_2 diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_dosen_total_sks_dosen_fpmipa
        BEFORE INSERT ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Dosen_Total = NEW.Dosen_1 + NEW.Dosen_2;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_dosen_total_update_sks_dosen_fpmipa
        BEFORE UPDATE ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Dosen_Total = NEW.Dosen_1 + NEW.Dosen_2;
        END
        """)
        
        # Trigger untuk memperbarui Total saat SKS_Total, Kelas_Total, atau Dosen_Total diubah
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_total_sks_dosen_fpmipa
        BEFORE INSERT ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Total = NEW.SKS_Total + NEW.Kelas_Total + NEW.Dosen_Total;
        END
        """)
        
        cur.execute("""
        CREATE TRIGGER IF NOT EXISTS update_total_update_sks_dosen_fpmipa
        BEFORE UPDATE ON sks_dosen_fpmipa
        FOR EACH ROW
        BEGIN
            SET NEW.Total = NEW.SKS_Total + NEW.Kelas_Total + NEW.Dosen_Total;
        END
        """)
        
        mysql.connection.commit()
        cur.close()
        print("Triggers created or already existed for sks_dosen_fpmipa table")


if __name__ == "__main__":
    # create_table_dosen()
    # create_triggers()
    # insert_data_dosen()
    # create_heatmap_gedung()
    # create_heatmap_ruangan()
    # insert_data_heatmap()
    # create_sks_dosen_fpmipa()
    # insert_data_sks_dosen_fpmipa()
    # create_triggers_sks_dosen_fpmipa()
    create_triggers_sks_dosen_fpmipa()