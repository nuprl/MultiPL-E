import csv

LANG_NAME = "C#"

CSV_DICT = {}
with open('csharp_codes.csv', 'r') as csv_f:
    csv_reader = csv.reader(csv_f)
    for r in csv_reader:
        CSV_DICT[r[0]] = r
    del CSV_DICT['code'] # kill the header row

def get_description(code: str) -> str:
    return CSV_DICT[code][1]

def get_total_failures() -> int:
    return sum([int(CSV_DICT[l][2]) for l in CSV_DICT.keys()])

def get_code_count(code: str) -> int:
    return int(CSV_DICT[code][2])