import json
import mysql.connector

# Konfigurasi koneksi database
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "",
    "database": "db_tskrip"
}

def all_kapasitas(db_config, file_name):
    # Buat koneksi ke database
    db_connection = mysql.connector.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    # Buat kursor untuk eksekusi query
    cur = db_connection.cursor()

    # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
    query = "SELECT * FROM kapasitas_ruangan"
    cur.execute(query)
    userDetails = cur.fetchall()

    # Tutup kursor dan koneksi database
    cur.close()
    db_connection.close()

    # Gabungkan data berdasarkan nama gedung
    data_gabung = {}
    for user in userDetails:
        nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
        nama_ruangan = user[4]  # Asumsi bahwa kolom nama ruangan ada pada indeks ke-4
        kapasitas = user[5]  # Asumsi bahwa kolom kapasitas ruangan ada pada indeks ke-5

        if nama_gedung not in data_gabung:
            data_gabung[nama_gedung] = []

        data_gabung[nama_gedung].append({"Nama_Ruangan": nama_ruangan, "Kapasitas": kapasitas})

    # Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
    data_kapasitas = [
        {
            "Gedung": gedung,
            "Ruangan": ruangan_data,
            "Jumlah_Total_Ruangan": len(ruangan_data)
        }
        for gedung, ruangan_data in data_gabung.items()
    ]

    # Bungkus data kapasitas dalam struktur "kapasitas_list"
    output_data = {
        "kapasitas_list": data_kapasitas
    }

    # Simpan data ke dalam file JSON
    with open(file_name, "w") as json_file:
        json.dump(output_data, json_file, indent=4)

    print(f"Data kapasitas ruangan berhasil disimpan dalam file JSON: {file_name}")

def kapasitas_fpmipa_b(db_config, file_name2):
    # Buat koneksi ke database
    db_connection = mysql.connector.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    # Buat kursor untuk eksekusi query
    cur = db_connection.cursor()

    # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
    query = "SELECT * FROM kapasitas_ruangan"
    cur.execute(query)
    userDetails = cur.fetchall()

    # Tutup kursor dan koneksi database
    cur.close()
    db_connection.close()

    # Gabungkan data berdasarkan nama gedung
    data_gabung = {}
    for user in userDetails:
        nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
        if nama_gedung == "FPMIPA B":
            nama_ruangan = user[4]  # Asumsi bahwa kolom nama ruangan ada pada indeks ke-4
            kapasitas = user[5]  # Asumsi bahwa kolom kapasitas ruangan ada pada indeks ke-5

            if nama_gedung not in data_gabung:
                data_gabung[nama_gedung] = []

            data_gabung[nama_gedung].append({"Nama_Ruangan": nama_ruangan, "Kapasitas": kapasitas})

    # Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
    data_kapasitas = [
        {
            "Gedung": gedung,
            "Ruangan": ruangan_data,
            "Jumlah_Total_Ruangan": len(ruangan_data)
        }
        for gedung, ruangan_data in data_gabung.items()
    ]

    # Bungkus data kapasitas dalam struktur "kapasitas_list"
    output_data = {
        "kapasitas_list": data_kapasitas
    }

    # Simpan data ke dalam file JSON
    with open(file_name2, "w") as json_file:
        json.dump(output_data, json_file, indent=4)

    print(f"Data kapasitas ruangan FPMIPA B berhasil disimpan dalam file JSON: {file_name2}")

def kapasitas_fpmipa_a(db_config, file_name3):
    # Buat koneksi ke database
    db_connection = mysql.connector.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    # Buat kursor untuk eksekusi query
    cur = db_connection.cursor()

    # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
    query = "SELECT * FROM kapasitas_ruangan"
    cur.execute(query)
    userDetails = cur.fetchall()

    # Tutup kursor dan koneksi database
    cur.close()
    db_connection.close()

    # Gabungkan data berdasarkan nama gedung
    data_gabung = {}
    for user in userDetails:
        nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
        if nama_gedung == "Gedung JICA FPMIPA A":
            nama_ruangan = user[4]  # Asumsi bahwa kolom nama ruangan ada pada indeks ke-4
            kapasitas = user[5]  # Asumsi bahwa kolom kapasitas ruangan ada pada indeks ke-5

            if nama_gedung not in data_gabung:
                data_gabung[nama_gedung] = []

            data_gabung[nama_gedung].append({"Nama_Ruangan": nama_ruangan, "Kapasitas": kapasitas})

    # Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
    data_kapasitas = [
        {
            "Gedung": gedung,
            "Ruangan": ruangan_data,
            "Jumlah_Total_Ruangan": len(ruangan_data)
        }
        for gedung, ruangan_data in data_gabung.items()
    ]

    # Bungkus data kapasitas dalam struktur "kapasitas_list"
    output_data = {
        "kapasitas_list": data_kapasitas
    }

    # Simpan data ke dalam file JSON
    with open(file_name3, "w") as json_file:
        json.dump(output_data, json_file, indent=4)

    print(f"Data kapasitas ruangan FPMIPA A berhasil disimpan dalam file JSON: {file_name3}")

def kapasitas_fpmipa_c(db_config, file_name4):
    # Buat koneksi ke database
    db_connection = mysql.connector.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    # Buat kursor untuk eksekusi query
    cur = db_connection.cursor()

    # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
    query = "SELECT * FROM kapasitas_ruangan"
    cur.execute(query)
    userDetails = cur.fetchall()

    # Tutup kursor dan koneksi database
    cur.close()
    db_connection.close()

    # Gabungkan data berdasarkan nama gedung
    data_gabung = {}
    for user in userDetails:
        nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
        if nama_gedung == "FPMIPA C":
            nama_ruangan = user[4]  # Asumsi bahwa kolom nama ruangan ada pada indeks ke-4
            kapasitas = user[5]  # Asumsi bahwa kolom kapasitas ruangan ada pada indeks ke-5

            if nama_gedung not in data_gabung:
                data_gabung[nama_gedung] = []

            data_gabung[nama_gedung].append({"Nama_Ruangan": nama_ruangan, "Kapasitas": kapasitas})

    # Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
    data_kapasitas = [
        {
            "Gedung": gedung,
            "Ruangan": ruangan_data,
            "Jumlah_Total_Ruangan": len(ruangan_data)
        }
        for gedung, ruangan_data in data_gabung.items()
    ]

    # Bungkus data kapasitas dalam struktur "kapasitas_list"
    output_data = {
        "kapasitas_list": data_kapasitas
    }

    # Simpan data ke dalam file JSON
    with open(file_name4, "w") as json_file:
        json.dump(output_data, json_file, indent=4)

    print(f"Data kapasitas ruangan FPMIPA C berhasil disimpan dalam file JSON: {file_name4}")

def kapasitas_fpmipa_lab(db_config, file_name5):
    # Buat koneksi ke database
    db_connection = mysql.connector.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    # Buat kursor untuk eksekusi query
    cur = db_connection.cursor()

    # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
    query = "SELECT * FROM kapasitas_ruangan"
    cur.execute(query)
    userDetails = cur.fetchall()

    # Tutup kursor dan koneksi database
    cur.close()
    db_connection.close()

    # Gabungkan data berdasarkan nama gedung
    data_gabung = {}
    for user in userDetails:
        nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
        if nama_gedung == "Bangunan Praktek Botani":
            nama_ruangan = user[4]  # Asumsi bahwa kolom nama ruangan ada pada indeks ke-4
            kapasitas = user[5]  # Asumsi bahwa kolom kapasitas ruangan ada pada indeks ke-5

            if nama_gedung not in data_gabung:
                data_gabung[nama_gedung] = []

            data_gabung[nama_gedung].append({"Nama_Ruangan": nama_ruangan, "Kapasitas": kapasitas})

    # Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
    data_kapasitas = [
        {
            "Gedung": gedung,
            "Ruangan": ruangan_data,
            "Jumlah_Total_Ruangan": len(ruangan_data)
        }
        for gedung, ruangan_data in data_gabung.items()
    ]

    # Bungkus data kapasitas dalam struktur "kapasitas_list"
    output_data = {
        "kapasitas_list": data_kapasitas
    }

    # Simpan data ke dalam file JSON
    with open(file_name5, "w") as json_file:
        json.dump(output_data, json_file, indent=4)

    print(f"Data kapasitas ruangan FPMIPA Lab berhasil disimpan dalam file JSON: {file_name5}")

# Nama file JSON
file_name = "kapasitas_all.json"
file_name2 = "kapasitas_fpmipa_b.json"
file_name3 = "kapasitas_fpmipa_a.json"
file_name4 = "kapasitas_fpmipa_c.json"
file_name5 = "kapasitas_fpmipa_lab.json"

# Panggil fungsi
all_kapasitas(db_config, file_name)
kapasitas_fpmipa_b(db_config, file_name2)
kapasitas_fpmipa_a(db_config, file_name3)
kapasitas_fpmipa_c(db_config, file_name4)
kapasitas_fpmipa_lab(db_config, file_name5)