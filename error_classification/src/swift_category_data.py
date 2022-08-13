import csv

LANG_NAME = "Swift"

CSV_DICT = {}
with open('swift_codes.csv', 'r') as csv_f:
    csv_reader = csv.reader(csv_f)
    for r in csv_reader:
        CSV_DICT[r[0]] = r
    del CSV_DICT['code'] # kill the header row

def get_description(code: str) -> str:
    return CSV_DICT[code][1]

def get_total_failures() -> int:
    return get_code_count('CompileError') + get_code_count('Timeout') + get_code_count('Exception')

def get_code_count(code: str) -> int:
    return int(CSV_DICT[code][2])