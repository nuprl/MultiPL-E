"""
Evaluates a generated R7RS Scheme program using GNU Guile.

- https://r7rs.org/
- https://www.gnu.org/software/guile/
"""

from pathlib import Path
from eval_scm import eval_script as _eval_script

def eval_script(path: Path):
    return _eval_script(path, extra_flags=["--r7rs"])
