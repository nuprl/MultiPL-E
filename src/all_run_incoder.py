
from pathlib import Path
import subprocess
from all_prepare_prompts import LANGS, MODELS, TEMPS, VARIATION
import time

#for F in ../experiments/*-davinci-0.2-*; do echo python3 completions_codex.py --dir $F  --temperature 0.2 --max-samples 28; done

# Rewrite in Python3.8:

for temp in TEMPS:
    for variation in VARIATION:
        for lang in LANGS:
            for model in [ "incoder" ]:
                cmd = f"python3 completions_codex.py --dir ../experiments/{lang}-{model}-{temp}-{variation} --temperature {temp} --model={model} --max-samples 28"
                print(f"{time.strftime('%X')} {cmd}")
                subprocess.run(cmd, shell=True)
