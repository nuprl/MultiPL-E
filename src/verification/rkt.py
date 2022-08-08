from pathlib import Path
import yaml

def check_old_racket(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    for result in results["results"]:
        if "standard-module-name-resolver: collection not found\n  for module path: rackunit" in result["stderr"]:
            print(f"Used wrong version of Racket for {p}")
            return

def check_old_racket_loop():
    for p in Path('../experiments/').glob('rkt-*/*.results.yaml'):
        check_old_racket(p)

if __name__ == "__main__":
    check_old_racket_loop()

