import json
import mysql.connector

# Buat koneksi ke database
db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="db_tskrip"
)

# Buat kursor untuk eksekusi query
cur = db_connection.cursor()

# Eksekusi query untuk mengambil data dosen
cur.execute("SELECT * FROM jdw_dosen")
userDetails = cur.fetchall()

# Tutup kursor dan koneksi database
cur.close()
db_connection.close()

# Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
data_dosen = []
for user in userDetails:
    # Misalnya, mengambil kolom pertama (ID) dan kolom kedua (Nama)
    dosen = {
        "id": user[0],
        "Tahun": user[1],
        "Kode": user[2],
        "Dosen": user[3],
        "SKS_1": user[4],
        "SKS_2": user[5],
        "SKS_Total": user[6],
        "Kelas_1": user[7],
        "Kelas_2": user[8],
        "Kelas_Total": user[9],
        "Dosen_1": user[10],
        "Dosen_2": user[11],
        "Dosen_Total": user[12],
        "Total": user[13],
        # Tambahkan kolom lain sesuai kebutuhan
    }
    data_dosen.append(dosen)

# Struktur data dengan nama list array
data = {
    "dosen_list": data_dosen
}

# Simpan data ke dalam file JSON
file_name = "data_dosen.json"
with open(file_name, "w") as json_file:
    json.dump(data, json_file, indent=4)

print("Data dosen berhasil disimpan dalam file JSON:", file_name)
