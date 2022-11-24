from pathlib import Path
import json
import gzip
from typing import Optional

def gunzip_json(path: Path) -> Optional[dict]:
    """
    Reads a .json.gz file, and produces None if any error occured.
    """
    try:
        with gzip.open(path, "rt") as f:
            return json.load(f)
    except Exception as e:
        return None
