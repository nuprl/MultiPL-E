from pathlib import Path
import yaml

def check_node_assert_loaded(p):
    with open(p) as f:
        results = yaml.safe_load(f)
    for result in results["results"]:
        if "Cannot find module 'node:assert'" in result["stderr"]:
            print(f"Used wrong version of node for {p}")
            return

def check_node_assert_loaded_loop():
    for p in Path('../experiments/').glob('js-*/*.results.yaml'):
        check_node_assert_loaded(p)

if __name__ == "__main__":
    check_node_assert_loaded_loop()

