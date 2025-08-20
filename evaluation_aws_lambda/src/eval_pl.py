from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
sub add { return $_[0] + $_[1]; }

- tests:
use Test::More tests => 1;
is(add(2,3), 5);
"""

def eval_script(path: Path):
    r = run(["perl", path])
    
    if r.timeout:
        status = "Timeout"
    elif r.exit_code != 0:
        status = "Exception"
    elif "ERROR" in r.stdout or "ERROR" in r.stderr:
        status = "Exception"
    else:
        status = "OK"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
