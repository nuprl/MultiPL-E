from pathlib import Path
import libeval

def eval_script(path: Path):
    result = libeval.run_without_exn(["perl", path])
    if "ERROR" in result["stdout"] or "ERROR" in result["stderr"] \
        or "FAILURE" in result["stdout"] or "ERROR" in result["stderr"]:
        result["status"] = "Exception"
    return result


if __name__ == "__main__":
    libeval.testing_mail(eval_script, "Perl", ".pl")
