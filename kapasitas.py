import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

fakultas = 'D'

url = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)

class Kapasitas(object):
    def __init__(self, url:str):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }

    def get_data_kapasitas(self, file_name="static/json/kapasitas.json", backup_file_name="static/json/kapasitas_backup.json"):
        res = requests.get(self.url, headers=self.headers)

        if res.status_code == 200:
            soup = BeautifulSoup(res.content, "html.parser")

            content = soup.find("div", class_="table-container mb-0")
            if content:
                table = content.find("table", class_="table is-hoverable")
                if table:
                    rows = table.find_all("tr")
                    ruangan_list = []
                    for row in rows[1:]:
                        columns = row.find_all("td")
                        if columns and len(columns) >= 12:
                            no = columns[0].get_text(strip=True)
                            fak = columns[1].get_text(strip=True)
                            fakultas = columns[2].get_text(strip=True)
                            kode_ruangan = columns[3].get_text(strip=True)
                            nama_ruangan = columns[4].get_text(strip=True)
                            kapasitas = columns[5].get_text(strip=True)
                            gedung = columns[6].get_text(strip=True)
                            lantai = columns[7].get_text(strip=True)
                            jenis_ruangan = columns[8].get_text(strip=True)
                            berbagi = columns[9].get_text(strip=True)
                            jam_sks = columns[10].get_text(strip=True)
                            jam_sks_total = columns[11].get_text(strip=True)

                            data_dict = {
                                "No": no,
                                "FAK": fak,
                                "FAKULTAS": fakultas,
                                "KODE_RUANG": kode_ruangan,
                                "NAMA_RUANG": nama_ruangan,
                                "KAPASITAS": kapasitas,
                                "GEDUNG": gedung,
                                "LANTAI": lantai,
                                "JENIS_RUANG": jenis_ruangan,
                                "BERBAGI": berbagi,
                                "JAM_SKS": jam_sks,
                                "JAM_SKS_TOTAL": jam_sks_total
                            }
                            ruangan_list.append(data_dict)
        
        # Proses Pengolahan Data
        # Backup file jika sudah ada
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        
        with open(file_name, "w+") as f:
            json.dump(ruangan_list, f)
        
        print("Data Ruangan Berhasil Di-generate")

if __name__ == "__main__":
    scraper: Kapasitas = Kapasitas(url=url)
    scraper.get_data_kapasitas()
