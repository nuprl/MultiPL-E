# Checks for Racket results that failed because rackunit was missing. Deletes
# them for rerunning.
from pathlib import Path
import yaml

def check_old_racket(p):
    try:
        with open(p) as f:
            results = yaml.safe_load(f)
        for result in results["results"]:
            if "standard-module-name-resolver: collection not found\n  for module path: rackunit" in result["stderr"]:
                p.unlink()
                return
    except:
        print(f"Failed to check {p}")

def check_old_racket_loop():
    for p in Path('../experiments/').glob('rkt-*/*.results.yaml'):
        check_old_racket(p)

if __name__ == "__main__":
    check_old_racket_loop()

