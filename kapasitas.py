import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

class Kapasitas:
    def __init__(self, url: str):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }

    def fetch_html(self):
        response = requests.get(self.url, headers=self.headers)
        response.raise_for_status()
        return response.content

    def parse_html(self, html_content):
        soup = BeautifulSoup(html_content, "html.parser")
        content = soup.find("div", class_="table-container mb-0")
        if not content:
            raise ValueError("Content not found in the page")
        
        table = content.find("table", class_="table is-hoverable")
        if not table:
            raise ValueError("Table not found in the content")
        
        return table

    def extract_table_data(self, table):
        rows = table.find_all("tr")[1:]
        ruangan_list = []
        for row in rows:
            columns = row.find_all("td")
            if columns and len(columns) >= 12:
                data_dict = {
                    "No": columns[0].get_text(strip=True),
                    "FAK": columns[1].get_text(strip=True),
                    "FAKULTAS": columns[2].get_text(strip=True),
                    "KODE_RUANG": columns[3].get_text(strip=True),
                    "NAMA_RUANG": columns[4].get_text(strip=True),
                    "KAPASITAS": columns[5].get_text(strip=True),
                    "GEDUNG": columns[6].get_text(strip=True),
                    "LANTAI": columns[7].get_text(strip=True),
                    "JENIS_RUANG": columns[8].get_text(strip=True),
                    "BERBAGI": columns[9].get_text(strip=True),
                    "JAM_SKS": columns[10].get_text(strip=True),
                    "JAM_SKS_TOTAL": columns[11].get_text(strip=True)
                }
                ruangan_list.append(data_dict)
        return ruangan_list

    def save_data_to_json(self, data, file_name, backup_file_name):
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        
        with open(file_name, "w") as f:
            json.dump(data, f, indent=4)
        
        print(f"Data berhasil disimpan dalam file JSON: {file_name}")

    def get_data_kapasitas(self, file_name="app/static/json/kapasitas.json", backup_file_name="app/static/json/kapasitas_backup.json"):
        try:
            html_content = self.fetch_html()
            table = self.parse_html(html_content)
            ruangan_list = self.extract_table_data(table)
            self.save_data_to_json(ruangan_list, file_name, backup_file_name)
        except requests.RequestException as e:
            print(f"Terjadi kesalahan pada saat melakukan request: {e}")
        except ValueError as e:
            print(f"Terjadi kesalahan pada saat parsing data: {e}")

if __name__ == "__main__":
    fakultas = 'D'
    url = f'https://siak.upi.edu/jadwal/ruang?fak={fakultas}'
    
    scraper = Kapasitas(url=url)
    scraper.get_data_kapasitas()
