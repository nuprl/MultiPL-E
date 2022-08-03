from pathlib import Path
import difflib
import yaml

# Show a nice diff between two strings.
def show_diff(a, b):
    diff = difflib.ndiff(a.splitlines(), b.splitlines())
    print('\n'.join(diff))

for p in Path("keep").glob("*.yaml"):
    print(p)
    original = yaml.load(open(p),  yaml.Loader)["prompt"]
    removed_p = Path("transform") / p.name
    print(removed_p)
    if not removed_p.exists():
        continue
    removed = yaml.load(open(removed_p), yaml.Loader)["prompt"]
    print(p.name)
    show_diff(original, removed)