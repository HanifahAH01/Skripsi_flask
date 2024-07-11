import json
import mysql.connector

class KapasitasRuangan:
    def __init__(self, db_config):
        self.db_config = db_config

    def connect_db(self):
        # Buat koneksi ke database
        self.db_connection = mysql.connector.connect(
            host=self.db_config['host'],
            user=self.db_config['user'],
            password=self.db_config['password'],
            database=self.db_config['database']
        )
        self.cur = self.db_connection.cursor()

    def close_db(self):
        # Tutup kursor dan koneksi database
        self.cur.close()
        self.db_connection.close()

    def fetch_data(self):
        # Eksekusi query untuk mengambil semua data dari tabel kapasitas_ruangan
        query = "SELECT * FROM kapasitas_ruangan"
        self.cur.execute(query)
        return self.cur.fetchall()

    def gabung_data(self, userDetails, filter_gedung=None):
        # Gabungkan data berdasarkan nama gedung
        data_gabung = {}
        for user in userDetails:
            nama_gedung = user[6]  # Asumsi bahwa kolom nama gedung ada pada indeks ke-6
            if filter_gedung and nama_gedung != filter_gedung:
                continue
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
        return {"kapasitas_list": data_kapasitas}

    def save_to_json(self, data, file_name):
        # Simpan data ke dalam file JSON
        with open(file_name, "w") as json_file:
            json.dump(data, json_file, indent=4)
        print(f"Data kapasitas ruangan berhasil disimpan dalam file JSON: {file_name}")

    def generate_kapasitas_all(self, file_name):
        self.connect_db()
        userDetails = self.fetch_data()
        self.close_db()
        data = self.gabung_data(userDetails)
        self.save_to_json(data, file_name)

    def generate_kapasitas_gedung(self, file_name, nama_gedung):
        self.connect_db()
        userDetails = self.fetch_data()
        self.close_db()
        data = self.gabung_data(userDetails, filter_gedung=nama_gedung)
        self.save_to_json(data, file_name)

# Konfigurasi koneksi database
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "",
    "database": "db_tskrip"
}

# Nama file JSON
file_name = "app/static/json/kapasitas_all.json"
file_name2 = "app/static/json/kapasitas_fpmipa_b.json"
file_name3 = "app/static/json/kapasitas_fpmipa_a.json"
file_name4 = "app/static/json/kapasitas_fpmipa_c.json"
file_name5 = "app/static/json/kapasitas_fpmipa_lab.json"

# Panggil fungsi
kapasitas = KapasitasRuangan(db_config)
kapasitas.generate_kapasitas_all(file_name)
kapasitas.generate_kapasitas_gedung(file_name2, "FPMIPA B")
kapasitas.generate_kapasitas_gedung(file_name3, "Gedung JICA FPMIPA A")
kapasitas.generate_kapasitas_gedung(file_name4, "FPMIPA C")
kapasitas.generate_kapasitas_gedung(file_name5, "Bangunan Praktek Botani")
