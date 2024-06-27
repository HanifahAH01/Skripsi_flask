import json
import requests
from bs4 import BeautifulSoup
import shutil
import os

fakultas = 'D'
url = 'https://siak.upi.edu/jadwal/ruang?fak={}'.format(fakultas)

class Jadwal(object):
    def __init__(self, url: str):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, seperti Gecko) Chrome/121.0.0.0 Safari/537.36"
        }

    def get_data_jadwal(self, file_name="app/static/json/jadwaltotal.json", backup_file_name="app/static/json/jadwal_backup_total.json", total_file_name="app/static/json/total_jadwal.json", overall_file_name="app/static/json/overall_totals.json"):
        res = requests.get(self.url, headers=self.headers)

        if res.status_code == 200:
            soup = BeautifulSoup(res.content, "html.parser")

            target_spans = soup.find_all("span", style="font-weight:bold;color:navy;")
            jadwal_dict = {}
            total_per_span = {}

            for target_span in target_spans:
                span_content = target_span.get_text(strip=True)
                span_content = span_content.split(" -> ")[1].split(",")[0].strip()

                content = target_span.find_next("table", class_="table is-hoverable")
                if content:
                    rows = content.find_all("tr")
                    for row in rows[1:]:
                        columns = row.find_all("td")
                        if columns and len(columns) >= 8:
                            senin = columns[1].get_text(strip=True)
                            selasa = columns[2].get_text(strip=True)
                            rabu = columns[3].get_text(strip=True)
                            kamis = columns[4].get_text(strip=True)
                            jumat = columns[5].get_text(strip=True)
                            sabtu = columns[6].get_text(strip=True)
                            minggu = columns[7].get_text(strip=True)

                            total_senin = 1 if "," in senin else 0
                            total_selasa = 1 if "," in selasa else 0
                            total_rabu = 1 if "," in rabu else 0
                            total_kamis = 1 if "," in kamis else 0
                            total_jumat = 1 if "," in jumat else 0
                            total_sabtu = 1 if "," in sabtu else 0
                            total_minggu = 1 if "," in minggu else 0

                            key = f"{span_content} - {columns[0].get_text(strip=True)}"

                            data_dict = {
                                "Span": span_content,
                                "Senin": senin,
                                "Selasa": selasa,
                                "Rabu": rabu,
                                "Kamis": kamis,
                                "Jumat": jumat,
                                "Sabtu": sabtu,
                                "Minggu": minggu,
                                "Total Senin": total_senin,
                                "Total Selasa": total_selasa,
                                "Total Rabu": total_rabu,
                                "Total Kamis": total_kamis,
                                "Total Jumat": total_jumat,
                                "Total Sabtu": total_sabtu,
                                "Total Minggu": total_minggu
                            }

                            jadwal_dict[key] = data_dict

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

                            total_per_span[span_content]["Total Senin"] += total_senin
                            total_per_span[span_content]["Total Selasa"] += total_selasa
                            total_per_span[span_content]["Total Rabu"] += total_rabu
                            total_per_span[span_content]["Total Kamis"] += total_kamis
                            total_per_span[span_content]["Total Jumat"] += total_jumat
                            total_per_span[span_content]["Total Sabtu"] += total_sabtu
                            total_per_span[span_content]["Total Minggu"] += total_minggu

            total_entries = []
            grand_total_terpakai = 0
            grand_total_tidak_terpakai = 0

            for span, total in total_per_span.items():
                span_name = span.split("-")[1].strip()

                total_terpakai = (total["Total Senin"] + total["Total Selasa"] + total["Total Rabu"] +
                                  total["Total Kamis"] + total["Total Jumat"] + total["Total Sabtu"] + total["Total Minggu"])

                total_tidak_terpakai = sum([1 for day in ["Total Senin", "Total Selasa", "Total Rabu", 
                                                          "Total Kamis", "Total Jumat", "Total Sabtu", "Total Minggu"] 
                                            if total[day] == 0])

                grand_total_terpakai += total_terpakai
                grand_total_tidak_terpakai += total_tidak_terpakai

                total_entry = {
                    "Span": span_name,
                    "Total Senin": total["Total Senin"],
                    "Total Selasa": total["Total Selasa"],
                    "Total Rabu": total["Total Rabu"],
                    "Total Kamis": total["Total Kamis"],
                    "Total Jumat": total["Total Jumat"],
                    "Total Sabtu": total["Total Sabtu"],
                    "Total Minggu": total["Total Minggu"],
                }
                total_entries.append(total_entry)

            overall_totals = {
                "Total Terpakai": grand_total_terpakai,
                "Total Tidak Terpakai": grand_total_tidak_terpakai
            }

            if os.path.exists(file_name):
                shutil.copyfile(file_name, backup_file_name)

            with open(file_name, 'w') as file:
                json.dump(jadwal_dict, file, indent=4)

            with open(total_file_name, 'w') as total_file:
                json.dump(total_entries, total_file, indent=4)

            with open(overall_file_name, 'w') as overall_file:
                json.dump(overall_totals, overall_file, indent=4)

            print("Data Jadwal Berhasil Di-generate")
            print("Data Total Per Span Berhasil Di-generate")
            print("Overall Totals Berhasil Di-generate")

if __name__ == "__main__":
    scraper = Jadwal(url=url)
    scraper.get_data_jadwal()
