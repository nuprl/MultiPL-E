# Checks for Racket results that failed because rackunit was missing. Deletes
# them for rerunning.
from pathlib import Path
import yaml

def check_status(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    for result in results["results"]:
        if (result["exit_code"] != 0 or result["stderr"] != "") and result["status"] == "OK":
            result["status"] = "Exception"
    with open(p, 'w') as f:
        yaml.dump(results, f)

def check_status_loop():
    for p in Path('../experiments/').glob('rkt-*/*.results.yaml'):
        check_status(p)

if __name__ == "__main__":
    check_status_loop()

