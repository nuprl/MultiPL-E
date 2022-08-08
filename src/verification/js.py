from pathlib import Path
import yaml
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor

def check_node_assert_loaded(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    for result in results["results"]:
        if "Cannot find module 'node:assert'" in result["stderr"]:
            p.unlink()
            return

def check_node_assert_loaded_loop():
    with ThreadPoolExecutor() as executor:    
        for p in tqdm(Path('../experiments/').glob('js-*/*.results.yaml')):
            check_node_assert_loaded(p)

if __name__ == "__main__":
    check_node_assert_loaded_loop()

