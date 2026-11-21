"""Opt-in native gate for every checked-in Sounio prompt/test harness.

A deliberately failing, well-typed stub must compile and exit 1 for every
translated problem. This separates an invalid harness from a model error;
it is not a solution corpus or a capability measurement.
"""

from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import re
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]


@unittest.skipUnless(
    os.environ.get("SOUNIO_NATIVE_TESTS") == "1" and os.environ.get("SOUC"),
    "requires the verified compiler and explicit native opt-in",
)
class SounioCorpusNativeTests(unittest.TestCase):
    def test_every_translated_harness_accepts_a_well_typed_failing_stub(self):
        sys.path.insert(0, str(ROOT / "evaluation" / "src"))
        from eval_sounio import eval_script

        workers = int(os.environ.get("SOUNIO_CORPUS_WORKERS", "2"))
        self.assertIn(workers, range(1, 9))
        records = []
        for dataset in ("humaneval", "mbpp"):
            path = ROOT / "prompts" / (dataset + "-sio-reworded.jsonl")
            records.extend(json.loads(line) for line in path.read_text().splitlines())
        self.assertTrue(records)
        self.assertEqual(len({r["name"] for r in records}), len(records))
        artifacts = os.environ.get("SOUNIO_CORPUS_ARTIFACT_DIR")
        with tempfile.TemporaryDirectory(prefix="sounio-corpus-") as directory:
            output = Path(artifacts) if artifacts else Path(directory)
            output.mkdir(parents=True, exist_ok=True)

            def evaluate(record):
                declaration = record["prompt"].splitlines()[-1]
                match = re.fullmatch(r"fn \w+\(.*\) -> (\w+) with .* \{", declaration)
                if match is None:
                    raise ValueError("Unexpected opening declaration: " + record["name"])
                result_type = match.group(1)
                default = {"i64": "0", "f64": "0.0", "bool": "false"}.get(
                    result_type, result_type + " { handle: 0 }"
                )
                program = record["prompt"] + "    assert(false)\n    " + default + "\n" + record["tests"]
                path = output / (record["name"] + ".sio")
                path.write_text(program)
                verdict = eval_script(path)
                receipt = {
                    "name": record["name"],
                    "source_sha256": hashlib.sha256(program.encode()).hexdigest(),
                    "expected_status": "Exception",
                    "expected_exit_code": 1,
                    "observed": verdict,
                }
                path.with_suffix(".result.json").write_text(json.dumps(receipt, indent=2))
                return receipt

            with ThreadPoolExecutor(max_workers=workers) as executor:
                for receipt in executor.map(evaluate, records):
                    with self.subTest(problem=receipt["name"]):
                        self.assertEqual(receipt["observed"]["status"], "Exception", receipt)
                        self.assertEqual(receipt["observed"]["exit_code"], 1, receipt)


if __name__ == "__main__":
    unittest.main()
