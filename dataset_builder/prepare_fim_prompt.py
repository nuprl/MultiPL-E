# Prepare the Fill-in-middle prompts.
import json
import gzip
from pathlib import Path
import itertools

def read_json_gz(p: Path):
    """
    Read a json.gz or json file and return a JSON object.
    """
    if p.suffix == ".gz":
        with gzip.open(p, 'rt') as f:
            return json.load(f)
    else:
        with open(p) as f:
            return json.load(f)


def get_benchmarks(dir: Path):
    results = [ p for p in itertools.chain(dir.glob("*.json.gz"), dir.glob("*.json"))
                 if not p.name.endswith("results.json.gz") and not p.name.endswith("results.json") ]
    results.sort(key=lambda x: x.stem)
    return results

def find_working_solution(completions_path: Path):
    """
    completions_path is named FILENAME.json.gz. Open FILENAME.results.json.gz and find the index of 
    an entry in the "results" array that has `"status": "OK"`. If found, open the completions_path
    return the corresponding entry in  the "completions" array. Otherwise, return None.
    """
    if completions_path.suffix == ".gz":
        filename = completions_path.name[:-len(".json.gz")]
        results_json = read_json_gz(completions_path.parent / (filename + ".results.json.gz"))
    else:
        filename = completions_path.name[:-len(".json")]
        results_json = read_json_gz(completions_path.parent / (filename + ".results.json"))
    for i, result in enumerate(results_json["results"]):
        if result["status"] == "OK":
            completions_json = read_json_gz(completions_path)
            language = completions_json["language"]
            body = completions_json["completions"][i]
            # In MultiPL-E, we use "}" as a stop token for Java, thus need to append these to
            # get a complete program.
            if language == "java":
                body = body + "\n    }\n}"
            return {
                "language": language,
                "prompt": completions_json["prompt"],
                "body": body.split("\n")
            }
    return None

def main():
    LANGS = ["java", "js", "py"]
    BENCHMARK_ROOT = Path("../experiments-repo/experiments")
    OUTPUT_DIR = Path("../prompts")
    benchmarks = {lang : get_benchmarks(BENCHMARK_ROOT / f"humaneval-{lang}-davinci-0.8-reworded") for lang in LANGS}

    fim_benchmarks = {lang: [ r for p in bench for r in [find_working_solution(p)] if r is not None ] for lang, bench in benchmarks.items()} 

    total_fim, total = 0, 0
    for lang in LANGS:
        print(f"Found {len(fim_benchmarks[lang])} working solutions out of {len(benchmarks[lang])} {lang} benchmarks.")
        total_fim += len(fim_benchmarks[lang])
        total += len(benchmarks[lang])
        with open(OUTPUT_DIR / f"fim-humaneval-{lang}.json", "w") as f:
            f.write(json.dumps(fim_benchmarks[lang], indent=4))


    print(f"Total: {total_fim} working solutions / {total} benchmarks")
    
if __name__ == "__main__":
    main()