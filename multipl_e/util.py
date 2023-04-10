from pathlib import Path
import json
import gzip
from typing import Optional
import sys

def gunzip_json(path: Path) -> Optional[dict]:
    """
    Reads a .json.gz file, but produces None if any error occurs.
    """
    try:
        with gzip.open(path, "rt") as f:
            return json.load(f)
    except Exception as e:
        return None

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)