import json
import os
import requests
import shutil
from bs4 import BeautifulSoup

class Jadwal:
    def __init__(self, fakultas):
        self.fakultas = fakultas
        self.url = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }

    def get_jadwal_data(self, file_name="static/json/jadwal.json", backup_file_name="static/json/jadwal_backup.json"):
        # Mendapatkan data dari URL
        response = requests.get(self.url, headers=self.headers)
        
        if response.status_code == 200:
            soup = BeautifulSoup(response.content, "html.parser")
            target_spans = soup.find_all("span", style="font-weight:bold;color:navy;")
            jadwal_dict = {}

            for target_span in target_spans:
                span_content = target_span.get_text(strip=True).split(" -> ")[1].split(",")[0].strip()
                content = target_span.find_next("table", class_="table is-hoverable")
                
                if content:
                    rows = content.find_all("tr")
                    for row in rows[1:]:
                        columns = row.find_all("td")
                        if columns and len(columns) >= 8:
                            hari = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
                            data_dict = {hari[i]: columns[i+1].get_text(strip=True) for i in range(7)}

                            key = f"{span_content} - {columns[0].get_text(strip=True)}"
                            jadwal_dict[key] = data_dict

        # Backup file jika sudah ada
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)

        # Menyimpan hasilnya dalam file JSON baru
        with open('hasil_jadwal.json', 'w') as file:
            json.dump(jadwal_dict, file, indent=4)
        
        print("Data Jadwal Berhasil Di-generate")

if __name__ == "__main__":
    fakultas = 'D'
    scraper = Jadwal(fakultas)
    scraper.get_jadwal_data()
