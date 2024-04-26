import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

fakultas = 'D'

url = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)

class Jadwal(object):
    def __init__(self, url:str):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }

    def get_data_jadwal(self, file_name="static/json/jadwal.json", backup_file_name="static/json/jadwal_backup.json"):
        res = requests.get(self.url, headers=self.headers)

        if res.status_code == 200:
            soup = BeautifulSoup(res.content, "html.parser")

            # Temukan semua tag <span> yang sesuai
            target_spans = soup.find_all("span", style="font-weight:bold;color:navy;")
            jadwal_dict = {}

            for target_span in target_spans:
                # Mulai pencarian dari setiap tag <span> yang ditemukan
                span_content = target_span.get_text(strip=True)
                
                # Ekstrak bagian yang diinginkan dari judul konten
                span_content = span_content.split(" -> ")[1].split(",")[0].strip()
                
                content = target_span.find_next("table", class_="table is-hoverable")
                if content:
                    rows = content.find_all("tr")
                    for row in rows[1:]:
                        columns = row.find_all("td")
                        if columns and len(columns) >= 8:  # Sesuaikan dengan jumlah kolom yang ingin Anda ambil
                            senin = columns[1].get_text(strip=True)
                            selasa = columns[2].get_text(strip=True)
                            rabu = columns[3].get_text(strip=True)
                            kamis = columns[4].get_text(strip=True)
                            jumat = columns[5].get_text(strip=True)
                            sabtu = columns[6].get_text(strip=True)
                            minggu = columns[7].get_text(strip=True)

                            # Gunakan kombinasi judul jadwal dan hari sebagai kunci unik
                            key = f"{span_content} - {columns[0].get_text(strip=True)}"
                            
                            data_dict = {
                                "Span": span_content,
                                "Senin": senin,
                                "Selasa": selasa,
                                "Rabu": rabu,
                                "Kamis": kamis,
                                "Jumat": jumat,
                                "Sabtu": sabtu,
                                "Minggu": minggu
                            }

                            # Tambahkan data ke dictionary
                            jadwal_dict[key] = data_dict


        # Backup file jika sudah ada
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)

        # Menyimpan hasilnya dalam file JSON baru
        with open('hasil_jadwal.json', 'w') as file:
            json.dump(jadwal_dict, file, indent=4)
            
        print("Data Jadwal Berhasil Di-generate")

if __name__ == "__main__":
    scraper: Jadwal = Jadwal(url=url)
    scraper.get_data_jadwal()
