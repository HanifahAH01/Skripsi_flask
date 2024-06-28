import json
import mysql.connector

# List kode khusus
list_kode_khusus = [
    "3313", "2330", "2358", "2855", "2312", "3397", "3239", "3241", "3240", "2573",
    "2843", "3104", "3152", "2934", "2584", "2891", "1549", "2189", "614", "2673",
    "2886", "2398", "2297", "1406", "1189", "2687", "1655", "1811", "3325", "964",
    "724", "2172", "2477", "1656", "2333", "2183", "1914", "3349", "2661", "1179",
    "2185", "1977", "1414", "939", "1719", "1720", "1404", "1713", "2611", "1030",
    "1069", "2176", "2554", "2184", "1327", "2181", "1739", "1972", "2350", "2170",
    "1738", "2175", "1178", "1550", "1092", "1317", "2179", "1036", "1131", "2660",
    "2158", "2177", "1653", "2582", "2316", "2589", "1915", "1800", "1911", "2180",
    "1838", "2731", "2399", "2921", "1382", "2810", "3101", "612", "933", "941",
    "1318", "2854", "2808", "2400", "1745", "1326", "3139", "2572", "1291", "3355",
    "2191", "2187", "1912", "736", "2313", "734", "2405", "2023", "2190", "2590",
    "1978", "2625", "1289", "1839", "1005", "2231", "1552", "1125", "1324", "940",
    "1321", "1405", "1661", "1562", "609", "894", "717", "932", "1119", "1742",
    "1735", "931", "2019", "1044", "1407", "738", "2076", "1737", "1089", "722",
    "1736", "1624", "1714", "1410", "2768", "2556", "2809", "2900", "2879", "2770",
    "3035", "2990", "3140", "3274", "2897", "2315", "2919", "2188", "1976", "3401",
    "2657", "2041", "2591", "2922", "1916", "2675", "2174", "2588", "2696", "2571",
    "3387", "3316", "2586", "2766", "2178", "3103", "2803", "2822", "2861", "3221",
    "2567", "1975", "2359", "3128", "3244", "3435", "1228", "1810", "1408", "1180",
    "1712", "2232", "2762", "2186", "735", "1746", "518", "726", "1154", "650", "638",
    "1187", "930", "1191", "934", "1029", "1654", "641", "396", "714", "1741", "508",
    "731", "1551", "1770", "1716", "2585", "513", "2169", "1026", "2147", "1936",
    "1411", "1134", "1744", "1740", "1801", "2173", "727", "1913", "1652", "1973",
    "962", "3402", "2733", "2867", "2767", "2718", "2627", "2182", "2314", "3119",
    "3398", "2401", "2658", "2331", "2918", "3023", "2806", "3036", "3243", "2577",
    "2545", "2920", "2695", "3321", "2878", "3138", "2983"
]

# Buat koneksi ke database
db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="db_tskrip"
)

# Buat kursor untuk eksekusi query
cur = db_connection.cursor()

# Format list_kode_khusus menjadi string yang bisa digunakan dalam query SQL
formatted_kode_khusus = ', '.join(f"'{kode}'" for kode in list_kode_khusus)

# Eksekusi query untuk mengambil data dosen yang kodenya ada di list_kode_khusus
query = f"SELECT * FROM jdw_dosen WHERE Kode IN ({formatted_kode_khusus})"
cur.execute(query)
userDetails = cur.fetchall()

# Tutup kursor dan koneksi database
cur.close()
db_connection.close()

# Konversi data menjadi struktur yang sesuai untuk disimpan dalam file JSON
data_dosen = []
for user in userDetails:
    total = user[6] + user[9] + user[12]  # Penjumlahan SKS_Total + Kelas_Total + Dosen_Total
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
        "Total": total  # Menambahkan hasil penjumlahan ke dalam dictionary
    }
    data_dosen.append(dosen)

# Struktur data dengan nama list array
data = {
    "dosen_list": data_dosen,
    # "list_kode_khusus": list_kode_khusus
}

# Simpan data ke dalam file JSON
file_name = "app/static/json/data_dosen_chart.json"
with open(file_name, "w") as json_file:
    json.dump(data, json_file, indent=4)

print("Data dosen berhasil disimpan dalam file JSON:", file_name)
