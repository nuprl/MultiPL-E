"""Opt-in native checks for generated compound-value adapters."""

import os
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

from sounio_native_controls import controls


@unittest.skipUnless(os.environ.get("SOUNIO_NATIVE_TESTS") == "1" and os.environ.get("SOUC"),
                     "requires the verified compiler and explicit native opt-in")
class SounioAdapterNativeTests(unittest.TestCase):
    def test_generated_controls(self):
        sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "evaluation" / "src"))
        from eval_sounio import eval_script

        with tempfile.TemporaryDirectory(prefix="multipl-sounio-adapters-") as directory:
            for name, source, expected in controls():
                with self.subTest(control=name):
                    path = Path(directory) / (name + ".sio")
                    path.write_text(source)
                    check = subprocess.run([os.environ["SOUC"], "check", str(path)],
                                           capture_output=True, timeout=30)
                    artifact_dir = os.environ.get("SOUNIO_CONTROL_ARTIFACT_DIR")
                    if artifact_dir:
                        artifacts = Path(artifact_dir)
                        artifacts.mkdir(parents=True, exist_ok=True)
                        (artifacts / (name + ".sio")).write_text(source)
                        (artifacts / (name + ".check.stdout")).write_bytes(check.stdout)
                        (artifacts / (name + ".check.stderr")).write_bytes(check.stderr)
                    self.assertEqual(check.returncode, 0,
                                     check.stdout.decode(errors="replace") + check.stderr.decode(errors="replace"))
                    result = eval_script(path)
                    if artifact_dir:
                        (artifacts / (name + ".result.json")).write_text(json.dumps({
                            "source_sha256": hashlib.sha256(source.encode()).hexdigest(),
                            "expected_status": expected, "observed": result,
                        }, indent=2))
                    self.assertEqual(result["status"], expected, result)
                    self.assertEqual(result["exit_code"], 0 if expected == "OK" else 1, result)


if __name__ == "__main__":
    unittest.main()
