from pathlib import Path
import yaml
from concurrent.futures import ThreadPoolExecutor

def check_format_string_bug(p):
    with open(p) as f:
        for line in f:
            if "cannot find value `left`" in line:
                p.with_suffix('.yaml').unlink()
                p.unlink()
                return

def check_format_string_bug_loop():
    with ThreadPoolExecutor() as executor:
        for p in Path('../experiments/').glob('rs-*/*.results.yaml'):
            executor.submit(check_format_string_bug, p)

if __name__ == "__main__":
    check_format_string_bug_loop()

