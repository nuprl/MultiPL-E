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


def per_problem_pass_k(dir, lang, model, temp, variation,pdict):
    for result_path in dir.glob("*.results.yaml"):
        try:
            with open (result_path) as f:
                results_yaml = yaml.load(f, yaml.CSafeLoader)
            if results_yaml == None:
                return pdict
            problem = result_path.name.split(".")[0]
            n_results = len(results_yaml["results"])
            n_ok_results = len([c for c in results_yaml["results"] if c["status"] == "OK"])
            if (temp == "0.2"):
                p1 = estimator(n_results, n_ok_results, 1)
                res = (p1,n_results)
                if problem in pdict:
                    pdict[problem]['pass_k1'] = res
                else:
                    pdict[problem] = {'pass_k1': res}
            else:
                pass_k10 = estimator(n_results, n_ok_results, 10)
                pass_k100 = estimator(n_results, n_ok_results, 100)
                #print(f"{problem},{lang},{model},{temp},{variation},1,{pass_k10}")
                #print(f"{problem},{lang},{model},{temp},{variation},1,{pass_k100}")
                if problem in pdict:
                    pdict[problem]['pass_k10'] = (pass_k10,n_results)
                    pdict[problem]['pass_k100'] = (pass_k100,n_results)
                else:
                    pdict[problem] = {'pass_k10':(pass_k10,n_results),'pass_k100':(pass_k100,n_results)}
        except yaml.YAMLError as exc:
            continue
    return pdict


if __name__ == "__main__":
    print("lang,problem,model,experiment,pass@1,n(t=0.2),pass@10,n(t=0.8),pass@100")
    for lang in LANGS:
        for model in MODELS:
            for variation in VARIATION:
                pdict = {}
                for temp in TEMPS:
                    dir = Path(f"../experiments/{lang}-{model}-{temp}-{variation}")
                    if dir.exists():
                        pdict = per_problem_pass_k(dir,lang,model,temp,variation,pdict)
                for problem in pdict:
                    p1 = pdict[problem]['pass_k1'] if 'pass_k1' in pdict[problem] else 'NA'
                    p10 = pdict[problem]['pass_k10'] if 'pass_k10' in pdict[problem] else 'NA'
                    p100 = pdict[problem]['pass_k100'] if 'pass_k100' in pdict[problem] else 'NA'
                    print(f"{lang},{problem},{model},{variation},{p1[0]},{p1[1]},{p10[0]},{p10[1]},{p100[0]}")
