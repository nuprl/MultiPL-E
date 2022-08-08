from pathlib import Path
import yaml

def check_format_string_bug(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    for result in results["results"]:
        if "cannot find value `left`" in result["stderr"]:
            print(f"Had format string bug in {p}")
            return

def check_format_string_bug_loop():
    for p in Path('../experiments/').glob('rs-*/*.results.yaml'):
        check_format_string_bug(p)

if __name__ == "__main__":
    check_format_string_bug_loop()

