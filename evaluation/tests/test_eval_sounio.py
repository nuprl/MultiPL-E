"""Evaluator regressions; mocked processes do not establish compiler support."""

import ast
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "src"))
import eval_sounio


class EvalSounioTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.source = Path(self.directory.name) / "source.with.dots.sio"
        self.source.write_text("fn main() -> i64 { 0 }\n")
        self.outputs = []

    def compiler(self, args, **kwargs):
        binary = Path(args[-1])
        self.outputs.append(binary)
        binary.write_bytes(b"artifact")
        return subprocess.CompletedProcess(args, 0, b"", b"")

    def evaluate(self, build=None, run=None):
        build = build or self.compiler
        run = run or subprocess.CompletedProcess([], 0, b"passed\n", b"")
        with patch.object(eval_sounio.subprocess, "run", side_effect=[build, run]) as mocked:
            # Functions in side_effect lists are returned, not invoked.
            def dispatch(args, **kwargs):
                if mocked.call_count == 1:
                    return build(args, **kwargs)
                if isinstance(run, BaseException):
                    raise run
                return run
            mocked.side_effect = dispatch
            result = eval_sounio.eval_script(self.source)
        return result, mocked.call_args_list

    def test_success_and_cleanup(self):
        result, calls = self.evaluate()
        self.assertEqual(result["status"], "OK")
        self.assertEqual(result["stdout"], "passed\n")
        self.assertEqual(calls[0].args[0][1:4], ["compile", str(self.source.resolve()), "-o"])
        self.assertEqual(calls[1].args[0], [str(self.outputs[0])])
        self.assertFalse(self.outputs[0].exists())

    def test_unique_output_not_adjacent_to_input(self):
        self.evaluate()
        self.evaluate()
        self.assertNotEqual(self.outputs[0], self.outputs[1])
        self.assertNotEqual(self.outputs[0].parent, self.source.parent)

    def test_existing_adjacent_binary_is_untouched(self):
        adjacent = self.source.with_suffix(".bin")
        adjacent.write_bytes(b"not owned by evaluator")
        self.evaluate()
        self.assertEqual(adjacent.read_bytes(), b"not owned by evaluator")

    def test_compile_failure_cleans_partial_artifact(self):
        def fail(args, **kwargs):
            self.compiler(args, **kwargs)
            return subprocess.CompletedProcess(args, 1, b"diagnostic", b"bad syntax")
        result, calls = self.evaluate(build=fail)
        self.assertEqual(result["status"], "SyntaxError")
        self.assertEqual(result["exit_code"], 1)
        self.assertEqual(result["stderr"], "bad syntax")
        self.assertEqual(len(calls), 1)
        self.assertFalse(self.outputs[0].exists())

    def test_compile_timeout_cleans_partial_artifact(self):
        def timeout(args, **kwargs):
            self.compiler(args, **kwargs)
            raise subprocess.TimeoutExpired(args, kwargs["timeout"])
        result, calls = self.evaluate(build=timeout)
        self.assertEqual(result["status"], "Timeout")
        self.assertEqual(len(calls), 1)
        self.assertFalse(self.outputs[0].exists())

    def test_success_without_artifact_is_exception(self):
        def missing(args, **kwargs):
            return subprocess.CompletedProcess(args, 0, b"", b"")
        result, calls = self.evaluate(build=missing)
        self.assertEqual(result["status"], "Exception")
        self.assertEqual(len(calls), 1)

    def test_missing_compiler_is_exception(self):
        def missing(args, **kwargs):
            raise FileNotFoundError("missing compiler")
        result, calls = self.evaluate(build=missing)
        self.assertEqual(result["status"], "Exception")
        self.assertIn("missing compiler", result["stderr"])

    def test_runtime_nonzero_is_exception(self):
        result, _ = self.evaluate(run=subprocess.CompletedProcess([], 7, b"", b"assertion"))
        self.assertEqual(result["status"], "Exception")
        self.assertEqual(result["exit_code"], 7)

    def test_runtime_timeout_and_cleanup(self):
        result, _ = self.evaluate(run=subprocess.TimeoutExpired("binary", 10))
        self.assertEqual(result["status"], "Timeout")
        self.assertFalse(self.outputs[0].exists())

    def test_runtime_oserror_and_cleanup(self):
        result, _ = self.evaluate(run=PermissionError("cannot execute"))
        self.assertEqual(result["status"], "Exception")
        self.assertFalse(self.outputs[0].exists())

    def test_output_decoding(self):
        result, _ = self.evaluate(run=subprocess.CompletedProcess([], 0, b"\xff", b"\xfe"))
        self.assertEqual(result["stdout"], "\ufffd")
        self.assertEqual(result["stderr"], "\ufffd")

    def test_relative_source_is_resolved(self):
        self.source = Path(os.path.relpath(self.source))
        _, calls = self.evaluate()
        self.assertTrue(Path(calls[0].args[0][2]).is_absolute())

    def test_sio_dispatch_registration(self):
        # Inspect registration without importing every optional language backend.
        tree = ast.parse((Path(eval_sounio.__file__).parent / "containerized_eval.py").read_text())
        registrations = [node for node in tree.body if isinstance(node, ast.Assign)
                         and any(isinstance(t, ast.Name) and t.id == "EVALUATORS" for t in node.targets)]
        registry = registrations[0].value
        entries = {key.value: value for key, value in zip(registry.keys, registry.values)}
        self.assertIn("sio", entries)
        target, extension = entries["sio"].elts
        self.assertEqual(ast.unparse(target), "eval_sounio.eval_script")
        self.assertEqual(extension.value, ".sio")


if __name__ == "__main__":
    unittest.main()
