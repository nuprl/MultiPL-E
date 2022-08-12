import dataclasses
from pathlib import Path
from typing import Iterator

@dataclasses.dataclass
class Experiment:
    lang: str
    model: str
    temp: str
    variation: str

    def path(self) -> Path:
        return Path(f"../experiments/{self.lang}-{self.model}-{self.temp}-{self.variation}")

# Loop over experiments in this order.
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
MODELS = ["davinci", "incoder"]

def all_experiments() -> Iterator[Experiment]:
    """
    An iterator that produces (lang, model, temp, variation) tuples for all
    the standard experiments that we care about. The ../experiments directory 
    has results from configurations that were explored and determined 
    uninteresting for a full result. (We are not deleting results.)
    """
    for temp in TEMPS:
        for lang in LANGS:
            for model in MODELS:
                for variation in VARIATIONS:
                    if temp == "0.8" and variation != "reworded":
                        continue
                    yield Experiment(lang, model, temp, variation)
