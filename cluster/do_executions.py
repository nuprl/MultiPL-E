# Do not use this file directly. See do_executions.sbatch
import subprocess
from pathlib import Path
import sys
import os

if len(sys.argv) != 3:
    print("Usage: run.py <root> <filename>")
    sys.exit(1)

working_dir = Path("./rundir")

filename = Path("/dataset") / Path(sys.argv[2])
output_dir = filename.parent

user = os.environ["USER"]
experiments = Path(sys.argv[1]).absolute()

tmp_dir = Path("/tmp/multipl-e")



try:
    tmp_dir.mkdir(exist_ok=True)
except OSError:
    # Hostname
    print(f"Failed to create {tmp_dir} on {os.environ['HOSTNAME']}")
    sys.exit(1)
    
try:

    # Just show output
    subprocess.run([
        "singularity", "exec",
        "--home", f"{tmp_dir}:/home/{user}",
        "--network", "none",   
        "--bind", f"{experiments}:/dataset:rw",
        Path("./multipl-e-evaluation_latest.sif").absolute(),
        "python3", "/code/main.py",
        "--file", filename,
        "--output-dir", output_dir], 
        cwd=working_dir,
        check=True,
        stdout=sys.stdout,
        stderr=sys.stderr)
finally:
    # Cleanup
    for file in tmp_dir.glob("*"):
        file.unlink()


