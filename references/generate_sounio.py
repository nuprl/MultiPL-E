"""Regenerate Sounio references through the official translator.

Only Sounio bodies are executed. Python performs source generation and native
test orchestration; the original Python canonical implementations are not run.
"""

import argparse
from concurrent.futures import ThreadPoolExecutor
from contextlib import contextmanager
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

from sounio_bodies import BODIES, MBPP_BODIES

ROOT = Path(__file__).resolve().parents[1]
BUILDER = ROOT / "dataset_builder"


@contextmanager
def builder_directory():
    previous = Path.cwd()
    os.chdir(BUILDER)
    sys.path.insert(0, str(BUILDER))
    try:
        yield
    finally:
        sys.path.pop(0)
        os.chdir(previous)


def default_value(type_):
    if type_.kind in ("i64", "f64", "bool"):
        return {"i64": "0", "f64": "0.0", "bool": "false"}[type_.kind]
    if type_.kind == "option":
        return type_.prefix + "_none()"
    if type_.kind == "tuple":
        return type_.prefix + "_new(" + ", ".join(default_value(t) for t in type_.args) + ")"
    return type_.prefix + "_new()"


def generate(output):
    output = output.resolve()
    for name in ("hand", "auto", "wrong"):
        (output / name).mkdir(parents=True, exist_ok=True)
    records = []
    with builder_directory():
        from generic_translator import translate_prompt_and_tests
        from humaneval_to_sounio import Translator

        sources = [("originals", "HumanEval", number, body) for number, body in sorted(BODIES.items())]
        sources += [("mbpp-typed", "mbpp", number, body) for number, body in sorted(MBPP_BODIES.items())]
        for dataset, prefix, number, body in sources:
            matches = list((ROOT / "datasets" / dataset).glob(f"{prefix}_{number}_*.py"))
            if len(matches) != 1:
                raise ValueError(f"Expected one original for {prefix} {number}")
            original = matches[0]
            translator = Translator()
            translated = translate_prompt_and_tests(original, translator, "transform", "reworded")
            if translated is None:
                raise ValueError(f"Reference translation failed: {original.name}")
            prompt, tests = translated
            name = original.with_suffix(".sio").name
            for directory, completion in (
                ("hand", body.strip()),
                ("auto", translator.no_completion_prompt_stub().strip()),
                ("wrong", default_value(translator.type[1])),
            ):
                indented = "\n".join("    " + line for line in completion.splitlines())
                source = prompt + indented + "\n" + tests
                path = output / directory / name
                path.write_text(source)
                records.append({"name": name, "variant": directory, "path": str(path),
                                "sha256": hashlib.sha256(source.encode()).hexdigest()})
    (output / "manifest.json").write_text(json.dumps({
        "records": records,
        "unicode_version": "15.0.0",
        "limitations": {"Unicode": "Version-pinned default case behavior; not locale-tailored or future Unicode versions"},
    }, indent=2))
    return records


def evaluate(record):
    from eval_sounio import eval_script

    path = Path(record["path"])
    check = subprocess.run([os.environ["SOUC"], "check", str(path)],
                           capture_output=True, timeout=30)
    (path.with_suffix(".check.stdout")).write_bytes(check.stdout)
    (path.with_suffix(".check.stderr")).write_bytes(check.stderr)
    result = eval_script(path) if check.returncode == 0 else None
    expected = "OK" if record["variant"] == "hand" else "Exception"
    observed = dict(record, check_exit=check.returncode, expected_status=expected, observed=result)
    observed["accepted"] = (check.returncode == 0 and result["status"] == expected
                            and result["exit_code"] == (0 if expected == "OK" else 1))
    path.with_suffix(".result.json").write_text(json.dumps(observed, indent=2))
    return observed


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--native", action="store_true")
    parser.add_argument("--workers", type=int, choices=range(1, 9), default=2)
    args = parser.parse_args()
    records = generate(args.output)
    if args.native:
        if not os.environ.get("SOUC"):
            parser.error("--native requires the verified compiler in SOUC")
        sys.path.insert(0, str(ROOT / "evaluation" / "src"))
        with ThreadPoolExecutor(max_workers=args.workers) as executor:
            results = list(executor.map(evaluate, records))
        args.output.joinpath("native-results.json").write_text(json.dumps(results, indent=2))
        for item in results:
            print(item["variant"], item["name"], "PASS" if item["accepted"] else "FAIL", flush=True)
        return 0 if all(item["accepted"] for item in results) else 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
