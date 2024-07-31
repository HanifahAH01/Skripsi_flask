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
        self.program_studi_mapping = {
            "Ilmu Komputer": "ILKOM",
            "Pendidikan Ilmu Komputer": "P.ILKOM",
            "Matematika": "MTK",
            "Pendidikan Matematika": "P.MTK",
            "Fisika": "FIS",
            "Pendidikan Fisika": "P.FIS",
            "International Program on Science Education": "IPSE",
            "Pendidikan Ilmu Pengetahuan Alam": "PIPA",
            "Kimia": "KIM",
            "Pendidikan Kimia": "P.KIM",
            "Biologi": "BIO",
            "Pendidikan Biologi": "P.BIO"
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
                rows = content.find_all("tr")[1:]  # Skip the header row
                for idx, row in enumerate(rows, start=1):
                    columns = row.find_all("td")
                    if columns and len(columns) >= 8:
                        key = f"{span_content} - {idx}."
                        jadwal_dict[key] = self.extract_row_data(columns, span_content, idx)
        
        return jadwal_dict

    def extract_row_data(self, columns, span_content, idx):
        status_value = str(idx)
        row_data = {
            "Span": span_content,
            "Senin": self.get_short_name(columns[1].get_text(strip=True)),
            "status_senin": status_value if columns[1].get_text(strip=True) else "0",
            "Selasa": self.get_short_name(columns[2].get_text(strip=True)),
            "status_selasa": status_value if columns[2].get_text(strip=True) else "0",
            "Rabu": self.get_short_name(columns[3].get_text(strip=True)),
            "status_rabu": status_value if columns[3].get_text(strip=True) else "0",
            "Kamis": self.get_short_name(columns[4].get_text(strip=True)),
            "status_kamis": status_value if columns[4].get_text(strip=True) else "0",
            "Jumat": self.get_short_name(columns[5].get_text(strip=True)),
            "status_jumat": status_value if columns[5].get_text(strip=True) else "0",
            "Sabtu": self.get_short_name(columns[6].get_text(strip=True)),
            "status_sabtu": status_value if columns[6].get_text(strip=True) else "0",
            "Minggu": self.get_short_name(columns[7].get_text(strip=True)),
            "status_minggu": status_value if columns[7].get_text(strip=True) else "0"
        }
        return row_data

    def get_short_name(self, full_name):
        return self.program_studi_mapping.get(full_name, full_name)

    def count_program_studi(self, jadwal):
        program_studi_list = []
        for key, value in jadwal.items():
            span = value.get("Span", "")
            for day in ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]:
                schedule = value.get(day, "")
                if schedule:
                    for program_studi, short_name in self.program_studi_mapping.items():
                        if program_studi in schedule:
                            program_studi_entry = next((item for item in program_studi_list if item["Span"] == span and item["Program Studi"] == short_name), None)
                            if program_studi_entry:
                                program_studi_entry["Jumlah"] += 1
                            else:
                                program_studi_list.append({
                                    "Span": span,
                                    "Program Studi": short_name,
                                    "Jumlah": 1
                                })
        return program_studi_list

    def save_json(self, data, file_name, backup_file_name):
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        with open(file_name, 'w') as file:
            json.dump(data, file, indent=4)

    def get_data_jadwal(self, file_name="app/static/json/tes.json", backup_file_name="app/static/json/testting.json"):
        try:
            html_content = self.fetch_html()
            soup = self.parse_html(html_content)
            jadwal_dict = self.extract_data(soup)
            self.save_json(jadwal_dict, file_name, backup_file_name)
            print("Data Jadwal Berhasil Di-generate")
            
            program_studi_count = self.count_program_studi(jadwal_dict)
            program_studi_count_file = "app/static/json/program_studi_count.json"
            self.save_json(program_studi_count, program_studi_count_file, program_studi_count_file.replace(".json", "_backup.json"))
            print("Jumlah Program Studi berhasil disimpan:", program_studi_count_file)
        except requests.RequestException as e:
            print(f"Terjadi kesalahan pada saat melakukan request: {e}")
        except ValueError as e:
            print(f"Terjadi kesalahan pada saat parsing data: {e}")

if __name__ == "__main__":
    fakultas = 'D'
    url = f'https://siak.upi.edu/jadwal/ruang?fak={fakultas}'
    scraper = Jadwal(url=url)
    scraper.get_data_jadwal()
