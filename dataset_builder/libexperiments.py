import dataclasses
from pathlib import Path
from typing import Iterator

@dataclasses.dataclass
class Experiment:
    dataset: str
    lang: str
    model: str
    temp: str
    variation: str

    def path(self) -> Path:
        return Path(f"./experiments/{self.dataset}-{self.lang}-{self.model}-{self.temp}-{self.variation}")

# Loop over experiments in this order.
DATASETS = [ "humaneval", "mbpp" ]
TEMPS = ["0.2", "0.8"]
VARIATIONS = ["reworded", "keep", "transform", "remove"]
LANGS = [
    "py",
    "js",
    "ts",
    "java",
    "d",
    "cpp",
    "r",
    "rs",
    "jl",
    "sh",
    "cs",
    "go",
    "lua",
    "pl",
    "php",
    "rb",
    "scala",
    "swift",
    "rkt",
]
MODELS = ["davinci", "incoder", "codegen"]

def all_experiments() -> Iterator[Experiment]:
    """
    An iterator that produces (lang, model, temp, variation) tuples for all
    the standard experiments that we care about. The ../experiments directory 
    has results from configurations that were explored and determined 
    uninteresting for a full result. (We are not deleting results.)
    """
    for dataset in DATASETS:
        for temp in TEMPS:
            for lang in LANGS:
                for model in MODELS:
                    for variation in VARIATIONS:
                        if variation == "reworded":
                            yield Experiment(dataset, lang, model, temp, "reworded")
                        elif (model == "davinci" and dataset == "humaneval" and temp == "0.2"):
                            # For non-reworded, we just do an ablation with HumanEval on Codex at
                            # 0.2 temperature.
                            yield Experiment(dataset, lang, model, temp, variation)
                        else:
                            pass

