import yaml
from pathlib import Path
import numpy as np
from all_prepare_prompts import TEMPS, LANGS, MODELS, VARIATION

def estimator(n: int, c: int, k: int) -> float:
    """
    Calculates 1 - comb(n - c, k) / comb(n, k).
    """
    if n - c < k:
        return 1.0
    return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))


def per_problem_pass_k(dir, lang, model, temp, variation):
    for result_path in dir.glob("*.results.yaml"):
        try:
            with open (result_path) as f:
                results_yaml = yaml.safe_load(f)
            problem = result_path.name.split(".")[0]
            n_results = len(results_yaml["results"])
            n_ok_results = len([c for c in results_yaml["results"] if c["status"] == "OK"])
            if (temp == "0.2"):
                pass_k1 = estimator(n_results, n_ok_results, 1)
                print(f"{problem},{lang},{model},{temp},{variation},1,{pass_k1}")
            else:
                pass_k10 = estimator(n_results, n_ok_results, 10)
                pass_k100 = estimator(n_results, n_ok_results, 100)
                print(f"{problem},{lang},{model},{temp},{variation},1,{pass_k10}")
                print(f"{problem},{lang},{model},{temp},{variation},1,{pass_k100}")
        except yaml.YAMLError as exc:
            continue


if __name__ == "__main__":
    print("problem,lang,model,temp,variation,k,pass_k")
    for temp in TEMPS:
      for lang in LANGS:
        for model in MODELS:
          for variation in VARIATION:
            dir = Path(f"../experiments/{lang}-{model}-{temp}-{variation}")
            if dir.exists():
                per_problem_pass_k(dir, lang, model, temp, variation)
