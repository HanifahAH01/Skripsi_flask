import json
import os
import requests
import shutil
from bs4 import BeautifulSoup

class DataDosen:
    def __init__(self, url):
        self.url = url
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }
        self.list_kode_khusus = [
            "3313", "2330", "2358", "2855", "2312", "3397", "3239", "3241", "3240", "2573",
            "2843", "3104", "3152", "2934", "2584", "2891", "1549", "2189", "614", "2673",
            "2886", "2398", "2297", "1406", "1189", "2687", "1655", "1811", "3325", "964",
            "724", "2172", "2477", "1656", "2333", "2183", "1914", "3349", "2661", "1179",
            "2185", "1977", "1414", "939", "1719", "1720", "1404", "1713", "2611", "1030",
            "1069", "2176", "2554", "2184", "1327", "2181", "1739", "1972", "2350", "2170",
            "1738", "2175", "1178", "1550", "1092", "1317", "2179", "1036", "1131", "2660",
            "2158", "2177", "1653", "2582", "2316", "2589", "1915", "1800", "1911", "2180",
            "1838", "2731", "2399", "2921", "1382", "2810", "3101", "612", "933", "941",
            "1318", "2854", "2808", "2400", "1745", "1326", "3139", "2572", "1291", "3355",
            "2191", "2187", "1912", "736", "2313", "734", "2405", "2023", "2190", "2590",
            "1978", "2625", "1289", "1839", "1005", "2231", "1552", "1125", "1324", "940",
            "1321", "1405", "1661", "1562", "609", "894", "717", "932", "1119", "1742",
            "1735", "931", "2019", "1044", "1407", "738", "2076", "1737", "1089", "722",
            "1736", "1624", "1714", "1410", "2768", "2556", "2809", "2900", "2879", "2770",
            "3035", "2990", "3140", "3274", "2897", "2315", "2919", "2188", "1976", "3401",
            "2657", "2041", "2591", "2922", "1916", "2675", "2174", "2588", "2696", "2571",
            "3387", "3316", "2586", "2766", "2178", "3103", "2803", "2822", "2861", "3221",
            "2567", "1975", "2359", "3128", "3244", "3435", "1228", "1810", "1408", "1180",
            "1712", "2232", "2762", "2186", "735", "1746", "518", "726", "1154", "650", "638",
            "1187", "930", "1191", "934", "1029", "1654", "641", "396", "714", "1741", "508",
            "731", "1551", "1770", "1716", "2585", "513", "2169", "1026", "2147", "1936",
            "1411", "1134", "1744", "1740", "1801", "2173", "727", "1913", "1652", "1973",
            "962", "3402", "2733", "2867", "2767", "2718", "2627", "2182", "2314", "3119",
            "3398", "2401", "2658", "2331", "2918", "3023", "2806", "3036", "3243", "2577",
            "2545", "2920", "2695", "3321", "2878", "3138", "2983"
        ]

    def get_list_kode_khusus(self):
        return self.list_kode_khusus

    def fetch_html(self):
        response = requests.get(self.url, headers=self.headers)
        response.raise_for_status()
        return response.content

    def parse_html(self, html_content):
        soup = BeautifulSoup(html_content, "html.parser")
        return soup

    def extract_data(self, soup):
        content = soup.find("div", class_="table-container mb-0")
        if content:
            table = content.find("table", class_="table is-hoverable")
            if table:
                rows = table.find_all("tr")
                dosen_list = [self.extract_row_data(row) for row in rows[1:] if self.has_valid_columns(row)]
                return dosen_list
        return []

    def has_valid_columns(self, row):
        columns = row.find_all("td")
        return columns and len(columns) >= 13

    def extract_row_data(self, row):
        columns = row.find_all("td")
        return {
            "NO": columns[0].get_text(strip=True),
            "THN_SMT": columns[1].get_text(strip=True),
            "KODE": columns[2].find("a").get_text(strip=True) if columns[2].find("a") else "",
            "DOSEN": columns[3].get_text(strip=True),
            "SKS_1": columns[4].get_text(strip=True),
            "SKS_2": columns[5].get_text(strip=True),
            "SKS_TOTAL": columns[6].get_text(strip=True),
            "KELAS_1": columns[7].get_text(strip=True),
            "KELAS_2": columns[8].get_text(strip=True),
            "KELAS_TOTAL": columns[9].get_text(strip=True),
            "Dosen_1": columns[10].get_text(strip=True),
            "Dosen_2": columns[11].get_text(strip=True),
            "Dosen_Total": columns[12].get_text(strip=True)
        }

    def save_json(self, data, file_name, backup_file_name):
        if os.path.exists(file_name):
            shutil.copyfile(file_name, backup_file_name)
        with open(file_name, "w+") as f:
            json.dump(data, f, indent=4)

    def get_data_dosen(self, file_name="app/static/json/Data_Dosen.json", backup_file_name="app/static/json/Data_Dosen_backup.json"):
        try:
            html_content = self.fetch_html()
            soup = self.parse_html(html_content)
            dosen_list = self.extract_data(soup)
            self.save_json(dosen_list, file_name, backup_file_name)
            print("Data berhasil digenerate")
        except requests.RequestException as e:
            print(f"Terjadi kesalahan pada saat melakukan request: {e}")
        except Exception as e:
            print(f"Terjadi kesalahan: {e}")

if __name__ == "__main__":
    url = 'https://siak.upi.edu/jadwal/dosensks'
    scraper = DataDosen(url=url)
    scraper.get_data_dosen()
