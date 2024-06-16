# import matplotlib.pyplot as plt
# import numpy as np
# import json

# # Membaca data dari file JSON
# with open('total_jadwal.json') as f:
#     data = json.load(f)

# # Mengambil nama laboratorium dan total dari data JSON
# vegetables = [entry['Span'] for entry in data]
# farmers = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
# harvest = np.array([[entry['Total ' + farmer] for farmer in farmers] for entry in data])

# # Mengatur ukuran figure
# fig, ax = plt.subplots(figsize=(15, 15))

# # Membuat heatmap
# im = ax.imshow(harvest, aspect='auto')

# # Menampilkan semua ticks dan memberi label dengan entri yang sesuai
# ax.set_xticks(np.arange(len(farmers)), labels=farmers)
# ax.set_yticks(np.arange(len(vegetables)), labels=vegetables)

# # Mengatur ukuran teks pada label vegetables
# plt.setp(ax.get_yticklabels(), fontsize=10)  # Ubah nilai 10 sesuai dengan ukuran yang Anda inginkan

# # Mengatur rotasi dan alignment dari label ticks
# plt.setp(ax.get_xticklabels(), rotation=0, ha="right", rotation_mode="anchor")

# # Menambahkan anotasi teks di dalam kotak
# for i in range(len(vegetables)):
#     for j in range(len(farmers)):
#         text = ax.text(j, i, harvest[i, j], ha="center", va="center", color="w")

# # Menambahkan judul dan menyesuaikan layout
# ax.set_title("Harvest of local farmers (in tons/year)")
# fig.tight_layout()
# plt.show()


# plot_generator.py

import matplotlib.pyplot as plt 
import numpy as np
import json
import mpld3

def generate_plot():
    # Ambil data dari file JSON
    with open('total_jadwal.json') as f:
        data = json.load(f)

    vegetables = [entry['Span'] for entry in data]
    farmers = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    harvest = np.array([[entry['Total ' + farmer] for farmer in farmers] for entry in data])

    # Membuat plot
    fig, ax = plt.subplots(figsize=(15, 15))
    im = ax.imshow(harvest, aspect='auto')
    ax.set_xticks(np.arange(len(farmers)), labels=farmers)
    ax.set_yticks(np.arange(len(vegetables)), labels=vegetables)
    plt.setp(ax.get_yticklabels(), fontsize=10)
    plt.setp(ax.get_xticklabels(), rotation=0, ha="right", rotation_mode="anchor")

    for i in range(len(vegetables)):
        for j in range(len(farmers)):
            text = ax.text(j, i, harvest[i, j], ha="center", va="center", color="w")

    ax.set_title("Harvest of local farmers (in tons/year)")
    fig.tight_layout()

    # Mengonversi plot ke HTML dengan mpld3
    plot_html = mpld3.fig_to_html(fig)
    
    return plot_html

# import matplotlib.pyplot as plt
# import numpy as np
# import mpld3
# import mysql.connector

# def generate_plot():
#     try:
#         conn = mysql.connector.connect(
#             host="localhost",
#             user="root",
#             password="",
#             database="heatmap"
#         )
#         if conn.is_connected():
#             print('Connected to MySQL database')

#             cursor = conn.cursor()
#             cursor.execute("SELECT * FROM heatmap")
#             data = cursor.fetchall()
#             cursor.close()
#             conn.close()

#             # Proses data dari database
#             vegetables = []
#             totals = {
#                 "Senin": [],
#                 "Selasa": [],
#                 "Rabu": [],
#                 "Kamis": [],
#                 "Jumat": [],
#                 "Sabtu": [],
#                 "Minggu": []
#             }

#             for item in data:
#                 vegetables.append(item[0])  # Span
#                 totals["Senin"].append(item[1])   # Total_Senin
#                 totals["Selasa"].append(item[2])  # Total_Selasa
#                 totals["Rabu"].append(item[3])    # Total_Rabu
#                 totals["Kamis"].append(item[4])   # Total_Kamis
#                 totals["Jumat"].append(item[5])   # Total_Jumat
#                 totals["Sabtu"].append(item[6])   # Total_Sabtu
#                 totals["Minggu"].append(item[7])  # Total_Minggu

#             farmers = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
#             harvest = np.array([
#                 [totals[farmer][i] for farmer in farmers]
#                 for i in range(len(vegetables))
#             ])

#             # Membuat plot
#             fig, ax = plt.subplots(figsize=(15, 15))
#             im = ax.imshow(harvest, aspect='auto')
#             ax.set_xticks(np.arange(len(farmers)), labels=farmers)
#             ax.set_yticks(np.arange(len(vegetables)), labels=vegetables)
#             plt.setp(ax.get_yticklabels(), fontsize=10)
#             plt.setp(ax.get_xticklabels(), rotation=0, ha="right", rotation_mode="anchor")

#             for i in range(len(vegetables)):
#                 for j in range(len(farmers)):
#                     text = ax.text(j, i, harvest[i, j], ha="center", va="center", color="w")

#             ax.set_title("Harvest of local farmers (in tons/year)")
#             fig.tight_layout()

#             # Mengonversi plot ke HTML dengan mpld3
#             plot_html = mpld3.fig_to_html(fig)

#             return plot_html

#     except mysql.connector.Error as e:
#         print(f"Error connecting to MySQL: {e}")