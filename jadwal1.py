import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

class Jadwal_json:
    def __init__(self, url: str):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, seperti Gecko) Chrome/121.0.0.0 Safari/537.36"
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
        total_per_span = {}

        for target_span in target_spans:
            span_content = target_span.get_text(strip=True).split(" -> ")[1].split(",")[0].strip()
            content = target_span.find_next("table", class_="table is-hoverable")
            if content:
                rows = content.find_all("tr")[1:]
                for idx, row in enumerate(rows, start=1):
                    columns = row.find_all("td")
                    if columns and len(columns) >= 8:
                        data_dict = self.extract_row_data(columns, span_content, idx)
                        key = f"{span_content} - {columns[0].get_text(strip=True)}"
                        jadwal_dict[key] = data_dict
                        self.update_total_per_span(total_per_span, span_content, data_dict)

        return jadwal_dict, total_per_span

    def extract_row_data(self, columns, span_content, idx):
        status_value = str(idx)
        row_data = {
            "Span": span_content,
            "Senin": columns[1].get_text(strip=True),
            "status_senin": status_value if columns[1].get_text(strip=True) else "0",
            "Selasa": columns[2].get_text(strip=True),
            "status_selasa": status_value if columns[2].get_text(strip=True) else "0",
            "Rabu": columns[3].get_text(strip=True),
            "status_rabu": status_value if columns[3].get_text(strip=True) else "0",
            "Kamis": columns[4].get_text(strip=True),
            "status_kamis": status_value if columns[4].get_text(strip=True) else "0",
            "Jumat": columns[5].get_text(strip=True),
            "status_jumat": status_value if columns[5].get_text(strip=True) else "0",
            "Sabtu": columns[6].get_text(strip=True),
            "status_sabtu": status_value if columns[6].get_text(strip=True) else "0",
            "Minggu": columns[7].get_text(strip=True),
            "status_minggu": status_value if columns[7].get_text(strip=True) else "0",
            "Total Senin": 1 if "," in columns[1].get_text(strip=True) else 0,
            "Total Selasa": 1 if "," in columns[2].get_text(strip=True) else 0,
            "Total Rabu": 1 if "," in columns[3].get_text(strip=True) else 0,
            "Total Kamis": 1 if "," in columns[4].get_text(strip=True) else 0,
            "Total Jumat": 1 if "," in columns[5].get_text(strip=True) else 0,
            "Total Sabtu": 1 if "," in columns[6].get_text(strip=True) else 0,
            "Total Minggu": 1 if "," in columns[7].get_text(strip=True) else 0
        }
        return row_data

    def update_total_per_span(self, total_per_span, span_content, data_dict):
        if span_content not in total_per_span:
            total_per_span[span_content] = {
                "Span": span_content,
                "Total Senin": 0,
                "Total Selasa": 0,
                "Total Rabu": 0,
                "Total Kamis": 0,
                "Total Jumat": 0,
                "Total Sabtu": 0,
                "Total Minggu": 0
            }
        for day in ["Total Senin", "Total Selasa", "Total Rabu", "Total Kamis", "Total Jumat", "Total Sabtu", "Total Minggu"]:
            total_per_span[span_content][day] += data_dict[day]

    def calculate_overall_totals(self, total_per_span):
        total_entries = []
        grand_total_terpakai = 0
        grand_total_tidak_terpakai = 0

        for span, total in total_per_span.items():
            total_terpakai = sum(total[day] for day in ["Total Senin", "Total Selasa", "Total Rabu", "Total Kamis", "Total Jumat", "Total Sabtu", "Total Minggu"])
            total_tidak_terpakai = sum(1 for day in ["Total Senin", "Total Selasa", "Total Rabu", "Total Kamis", "Total Jumat", "Total Sabtu", "Total Minggu"] if total[day] == 0)

            grand_total_terpakai += total_terpakai
            grand_total_tidak_terpakai += total_tidak_terpakai

            total_entries.append({
                "Span": span.split("-")[1].strip(),
                "Total Senin": total["Total Senin"],
                "Total Selasa": total["Total Selasa"],
                "Total Rabu": total["Total Rabu"],
                "Total Kamis": total["Total Kamis"],
                "Total Jumat": total["Total Jumat"],
                "Total Sabtu": total["Total Sabtu"],
                "Total Minggu": total["Total Minggu"],
            })

        overall_totals = {
            "Total Terpakai": grand_total_terpakai,
            "Total Tidak Terpakai": grand_total_tidak_terpakai
        }

        return total_entries, overall_totals

    def save_json(self, data, file_name, backup_file_name):
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        with open(file_name, 'w') as file:
            json.dump(data, file, indent=4)

    def get_data_jadwal(self, file_name="app/static/json/jadwaltotal.json", backup_file_name="app/static/json/jadwal_backup_total.json", total_file_name="app/static/json/total_jadwal.json", overall_file_name="app/static/json/overall_totals+1.json"):
        try:
            html_content = self.fetch_html()
            soup = self.parse_html(html_content)
            jadwal_dict, total_per_span = self.extract_data(soup)
            total_entries, overall_totals = self.calculate_overall_totals(total_per_span)

            self.save_json(jadwal_dict, file_name, backup_file_name)
            self.save_json(total_entries, total_file_name, backup_file_name)
            self.save_json(overall_totals, overall_file_name, backup_file_name)

            print("Data Jadwal Berhasil Di-generate")
            print("Data Total Per Span Berhasil Di-generate")
            print("Overall Totals Berhasil Di-generate")

        except requests.RequestException as e:
            print(f"Terjadi kesalahan pada saat melakukan request: {e}")
        except ValueError as e:
            print(f"Terjadi kesalahan pada saat parsing data: {e}")

if __name__ == "__main__":
    fakultas = 'D'
    url = f'https://siak.upi.edu/jadwal/ruang?fak={fakultas}'
    
    scraper = Jadwal_json(url=url)
    scraper.get_data_jadwal()
