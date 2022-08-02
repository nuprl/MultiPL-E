from pathlib import Path

SUPPORTED = [ "cpp", "java", "jl" ]

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
    if p.stat().st_size < (1024 * 10):
        continue
    count += 1
    files.append(p_str)
print(count)
with open("files.txt", "w") as f:
    for p in files:
        f.write(f"{p}\n")