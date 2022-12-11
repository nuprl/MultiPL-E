from pathlib import Path
import json

def validate(path, data):
    print(f"{path},{len(data)}")

def validate_all():
    paths = list(Path('../prompts').glob('*.json'))
    paths.sort(key = lambda path: path.stem)
    for path in paths:
        with path.open("r") as f:
            data = json.load(f)
            validate(path, data)

if __name__ == "__main__":
    validate_all()