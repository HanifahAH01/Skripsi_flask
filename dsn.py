import requests
from bs4 import BeautifulSoup

def scrape_dosenkls(kode_dosen):
    # URL halaman web dengan parameter dsn
    url = f'https://siak.upi.edu/jadwal/dosenkls?dsn={kode_dosen}'

    # Mengirim permintaan GET ke URL
    response = requests.get(url)

    # Memeriksa status permintaan
    if response.status_code == 200:
        # Mendapatkan konten halaman web
        html_content = response.content

        # Membuat objek BeautifulSoup
        soup = BeautifulSoup(html_content, 'html.parser')

        # Mencari semua tag <a> dengan href yang tidak None
        a_tags = soup.find_all('a', href=True)

        # Mencetak setiap tag <a> dan atribut href-nya
        for tag in a_tags:
            href = tag.get('href')
            text = tag.text.strip()  # Menghilangkan spasi di awal dan akhir teks
            print(f'Text: {text}, Href: {href}')
    else:
        print(f'Error: Gagal mengakses halaman web. Status code: {response.status_code}')

if __name__ == "__main__":
    # Ganti kode_dosen dengan kode dosen yang sesuai
    kode_dosen = '3270'  # Contoh kode dosen

    # Panggil fungsi untuk melakukan scraping
    scrape_dosenkls(kode_dosen)
