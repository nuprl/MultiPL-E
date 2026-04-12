import shutil
import tempfile
from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):
    with tempfile.TemporaryDirectory() as tmpdir:
        project_dir = Path(tmpdir) / "elm"
        shutil.copytree("/etc/elm", str(project_dir))

        shutil.copy(str(path), str(project_dir / "src" / "Main.elm"))

        output_js = project_dir / "main.js"
        r = run(
            ["elm", "make", "src/Main.elm", f"--output={output_js}"],
            cwd=str(project_dir),
            timeout_seconds=30,
        )

        if r.exit_code != 0:
            return {
                "status": "SyntaxError",
                "exit_code": r.exit_code,
                "stdout": r.stdout,
                "stderr": r.stderr,
            }

        r = run(
            ["node", "-e", "require('./main.js').Elm.Main.init()"],
            cwd=str(project_dir),
            timeout_seconds=15,
        )

        if r.timeout:
            status = "Timeout"
        elif r.exit_code == 0:
            status = "OK"
        else:
            status = "Exception"

        return {
            "status": status,
            "exit_code": r.exit_code,
            "stdout": r.stdout,
            "stderr": r.stderr,
        }
