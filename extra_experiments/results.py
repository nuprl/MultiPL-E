from pathlib import Path
import subprocess

# When the path is ".", .parent produces "."! Need .resolve to fix.
dir = Path(__name__).parent.resolve() 

datagen = Path(dir.parent, "rs", "target", "release", "rs")

for p in dir.glob("*"):
    if p.is_dir() == False:
        continue
    [language, model, temperature, variation] = p.name.split("-")
    target = Path(dir.parent, "results", p.name + ".csv")
    with open(target, "w") as f:
        subprocess.run([datagen, "single-per-problem-pass-k",
            "--language", language,
            "--model", model,
            "--temperature", temperature,
            "--variation", variation,
            "--directory", p],
            check=True,
            stdout=f)