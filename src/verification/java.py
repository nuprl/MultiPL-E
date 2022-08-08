from pathlib import Path
import yaml
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor

def check_test_suite_updated(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    if results["tests"].startswith("return"):
        curly_start = results["tests"].find("}")
        results["tests"] = results["tests"][curly_start:]
        print(f"Would tweak the tests for {p} and delete results")
        with open(p, "w") as f:
         yaml.dump(results, f)
        results_path = p.with_suffix('.results.yaml')
        if results_path.exists():
            results_path.unlink()

def check_test_suite_updated_loop():
    with ThreadPoolExecutor() as executor:
        for p in tqdm(Path('../experiments/').glob('java-*/*.yaml')):
            if p.name.endswith(".results.yaml"):
                continue
            executor.submit(check_test_suite_updated, p)

if __name__ == "__main__":
    check_test_suite_updated_loop()

