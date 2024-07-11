import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

class Jadwal:
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
        return soup

    def extract_data(self, soup):
        target_spans = soup.find_all("span", style="font-weight:bold;color:navy;")
        jadwal_dict = {}

        for target_span in target_spans:
            span_content = target_span.get_text(strip=True).split(" -> ")[1].split(",")[0].strip()
            content = target_span.find_next("table", class_="table is-hoverable")
            if content:
                rows = content.find_all("tr")[1:]
                for row in rows:
                    columns = row.find_all("td")
                    if columns and len(columns) >= 8:
                        key = f"{span_content} - {columns[0].get_text(strip=True)}"
                        jadwal_dict[key] = self.extract_row_data(span_content, columns)
        
        return jadwal_dict

    def extract_row_data(self, span_content, columns):
        return {
            "Span": span_content,
            "Senin": columns[1].get_text(strip=True),
            "Selasa": columns[2].get_text(strip=True),
            "Rabu": columns[3].get_text(strip=True),
            "Kamis": columns[4].get_text(strip=True),
            "Jumat": columns[5].get_text(strip=True),
            "Sabtu": columns[6].get_text(strip=True),
            "Minggu": columns[7].get_text(strip=True)
        }

    def save_json(self, data, file_name, backup_file_name):
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        with open(file_name, 'w') as file:
            json.dump(data, file, indent=4)

    def get_data_jadwal(self, file_name="app/static/json/jadwal.json", backup_file_name="app/static/json/jadwal_backup.json"):
        try:
            html_content = self.fetch_html()
            soup = self.parse_html(html_content)
            jadwal_dict = self.extract_data(soup)
            self.save_json(jadwal_dict, file_name, backup_file_name)
            print("Data Jadwal Berhasil Di-generate")
        except requests.RequestException as e:
            print(f"Terjadi kesalahan pada saat melakukan request: {e}")
        except ValueError as e:
            print(f"Terjadi kesalahan pada saat parsing data: {e}")

if __name__ == "__main__":
    fakultas = 'D'
    url = f'https://siak.upi.edu/jadwal/ruang?fak={fakultas}'
    scraper = Jadwal(url=url)
    scraper.get_data_jadwal()
