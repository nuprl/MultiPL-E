import yaml
from pathlib import Path
import os

user = os.getenv("USER")
if user == "a.guha":
  SUPPORTED = [ "php", "/rkt-" ]
elif user == "l.phipps-costin":
  SUPPORTED = [ "rust", "/rs-", "/py-", "python", "/js-", "javascript" ]
elif user == "zi.ya":
  SUPPORTED = [ "/cpp", "/d-", "/java", "/r-", "/jl", "/lua"]
else:
    raise "Unknown user"

count = 0
files = [ ]

for p in Path("../experiments").glob("*/*.yaml"):
    if p.name.endswith(".results.yaml"):
        continue
    if "-remove" in str(p):
        continue

    p_str = str(p)
    if not any([ lang in p_str for lang in SUPPORTED ]):
        continue

    results_path = p.with_suffix(".results.yaml")

    if results_path.exists() and p.stat().st_mtime < results_path.stat().st_mtime:
        continue
    
    files.append(p_str)
    count += 1

print(f"wrote {count} upcoming yaml paths to files.txt")

with open("files.txt", "w") as f:
    for p in files:
        f.write(f"{p}\n")
