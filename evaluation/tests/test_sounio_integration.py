"""Opt-in native compiler controls, not model benchmark measurements.

SOUC=/verified/distribution/bin/souc SOUNIO_NATIVE_TESTS=1 \
    python3 -B -m unittest discover -s evaluation/tests -v
"""

import os
from pathlib import Path
import re
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "src"))


@unittest.skipUnless(
    os.environ.get("SOUNIO_NATIVE_TESTS") == "1" and os.environ.get("SOUC"),
    "set SOUC and SOUNIO_NATIVE_TESTS=1 to execute the pinned compiler",
)
class SounioIntegrationTests(unittest.TestCase):
    def evaluate(self, source, status, code=None):
        from containerized_eval import eval_string_script

        result = eval_string_script("sio", source)
        self.assertEqual(result["status"], status, result)
        if code is not None:
            self.assertEqual(result["exit_code"], code, result)

    def test_valid_program(self):
        self.evaluate("fn main() -> i64 { 0 }", "OK", 0)

    def test_nonzero_return(self):
        self.evaluate("fn main() -> i64 { 7 }", "Exception", 7)

    def test_invalid_source(self):
        self.evaluate("fn main() -> i64 { this is not valid Sounio }", "SyntaxError")

    def test_false_assertion(self):
        self.evaluate(
            "fn main() -> i64 with Panic {\nassert(false)\n0\n}", "Exception", 1
        )

    def test_runtime_timeout(self):
        self.evaluate(
            "fn main() -> i64 with Mut {\nwhile true { }\n0\n}", "Timeout", -1
        )

    def test_complete_references_and_wrong_implementations(self):
        references = Path(__file__).resolve().parents[2] / "references" / "hand"
        for name in (
            "HumanEval_13_greatest_common_divisor",
            "HumanEval_24_largest_divisor",
            "HumanEval_31_is_prime",
        ):
            source = (references / (name + ".sio")).read_text()
            with self.subTest(reference=name, implementation="correct"):
                self.evaluate(source, "OK", 0)
            entrypoint = name.split("_", 2)[2]
            signature = re.search(r"^fn " + re.escape(entrypoint) + r"\([^\n]*? -> (\w+)", source, re.MULTILINE)
            self.assertIsNotNone(signature)
            wrong_value = {"bool": "false", "MPBigint": "mp_bigint_new()", "i64": "0"}[signature.group(1)]
            # Replace only the named benchmark body, never an inlined helper.
            mutated, count = re.subn(
                r"(?ms)(^fn " + re.escape(entrypoint) + r"\([^\n]+\{\n).*?(^\})",
                r"\g<1>    " + wrong_value + r"\n\g<2>",
                source,
                count=1,
            )
            self.assertEqual(count, 1)
            with self.subTest(reference=name, implementation="wrong"):
                self.evaluate(mutated, "Exception", 1)


if __name__ == "__main__":
    unittest.main()
