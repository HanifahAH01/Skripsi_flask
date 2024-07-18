import plotly.graph_objects as go
import mysql.connector
import json

def generate_plot():
    # Membuat koneksi ke database
    db_connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="db_tskrip"
    )
    cursor = db_connection.cursor(dictionary=True)

    # Mengambil data dari tabel heatmap
    cursor.execute("SELECT * FROM heatmap")
    data = cursor.fetchall()

    # Menutup koneksi database
    cursor.close()
    db_connection.close()

    # Debug: Cetak data untuk memeriksa struktur
    # print(data)

    # Menyiapkan data untuk plot
    vegetables = [entry['Span'] for entry in data]
    farmers = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    
    # Cek apakah nama kolom sesuai dengan yang ada di data
    harvest = [[entry['Total_Senin'], entry['Total_Selasa'], entry['Total_Rabu'],
                entry['Total_Kamis'], entry['Total_Jumat'], entry['Total_Sabtu'],
                entry['Total_Minggu']] for entry in data]

    # Definisi skala warna kustom dengan 5 warna
    custom_colorscale = [
        [0, 'rgb(255, 255, 19)'],    # Warna pertama (kuning)
        [0.20, 'rgb(255, 210, 11)'], # Warna kedua (oranye)
        [0.40, 'rgb(255, 139, 20)'],  # Warna ketiga (merah oranye)
        [0.60, 'rgb(255, 93, 12)'],  # Warna keempat (merah tua)
        [0.80, 'rgb(255, 70, 6)'],  # Warna keempat (merah tua)
        [1, 'rgb(255, 21, 0)']      # Warna kelima (merah sangat tua)
    ]

    # Membuat plot menggunakan Plotly
    fig = go.Figure(data=go.Heatmap(
        z=harvest,
        x=farmers,
        y=vegetables,
        hoverongaps=True,
        colorscale=custom_colorscale  # Menggunakan skala warna kustom
    ))

    fig.update_layout(
        title='Heatmap Ruang Kelas',
        xaxis=dict(title='Hari'),
        yaxis=dict(title='Nama Ruangan'),
        width=1200,  # Set the width of the plot
        height=7000  # Set the height of the plot
    )

    plot_html = fig.to_html(full_html=False)
    harvest_data = json.dumps(harvest, indent=4)  # Konversi data ke format JSON untuk ditampilkan di HTML

    return plot_html, harvest_data
