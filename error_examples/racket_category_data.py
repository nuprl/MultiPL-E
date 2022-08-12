import csv

LANG_NAME = "Racket"

CSV_DICT = {}
with open('error_examples/racket_codes.csv', 'r') as csv_f:
    csv_reader = csv.reader(csv_f)
    for r in csv_reader:
        CSV_DICT[r[0]] = r
        # print(r)
    del CSV_DICT['code'] # kill the header row

def get_description(code: str) -> str:
    if code not in CSV_DICT:
        print(f"Warning: didn't find code {code} in CSV")
        return f"MISSING CODE: {code}"
    return CSV_DICT[code][1]

def get_total_failures() -> int:
    # In Swift I did:
    # return get_code_count('CompileError') + get_code_count('Timeout') + get_code_count('Exception')
    # Not sure what your racket equivalent is.
    return 0 # TODO(yt)

def get_code_count(code: str) -> int:
    if code not in CSV_DICT:
        print(f"Warning: didn't find code {code} in CSV")
        return 99999999
    return int(CSV_DICT[code][2])