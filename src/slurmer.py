from pathlib import Path
import os

user = os.getenv("USER")
if user == "a.guha":
  SUPPORTED = [ "php", "/rkt-" ]
elif user == "l.phipps-coston":
  SUPPORTED = [ ]
elif user == "zi.ya":
  SUPPORTED = [ "lua" ]
else:
    raise "Unknown user"

count = 0
files = [ ]
for p in Path("../experiments").glob("*/*.yaml"):
    if p.name.endswith(".results.yaml"):
        continue
    if p.with_suffix(".results.yaml").exists():
        continue
    p_str = str(p)
    if not any([ lang in p_str for lang in SUPPORTED ]):
        continue
    if p.stat().st_size < (1024 * 2):
        continue
    count += 1
    files.append(p_str)

with open("files.txt", "w") as f:
    for p in files:
        f.write(f"{p}\n")
