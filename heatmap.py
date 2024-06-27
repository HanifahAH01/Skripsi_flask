import plotly.graph_objects as go
import json

def generate_plot():
    # Ambil data dari file JSON
    with open('app/static/json/total_jadwal.json') as f:
        data = json.load(f)

    vegetables = [entry['Span'] for entry in data]
    farmers = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    harvest = [[entry['Total ' + farmer] for farmer in farmers] for entry in data]

    # Definisi skala warna kustom
    custom_colorscale = [
        [0, 'rgb(255, 193, 0)'],   # Warna pertama (kuning)
        [0.33, 'rgb(255, 138, 8)'], # Warna kedua (oranye)
        [0.66, 'rgb(255, 101, 0)'],  # Warna ketiga (merah oranye)
        [1, 'rgb(196, 12, 12)']     # Warna keempat (merah tua)
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
