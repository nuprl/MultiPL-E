import gzip
import json
import lzma
from pathlib import Path
import tempfile
import unittest

from unpack_samples import unpack


class UnpackSamplesTests(unittest.TestCase):
    def row(self):
        return {
            "group": "humaneval-sio-candidate-0.2-reworded",
            "sample": {
                "name": "HumanEval_0_control", "language": "sio", "prompt": "",
                "original_prompt": "fn control() -> bool {\n",
                "tests": "}\nfn main() -> i64 { 0 }\n",
                "completions": ["fn control() -> bool {\ntrue\n"],
                "raw_completions": ["fn control() -> bool {\ntrue\n}\n"],
            },
        }

    def write(self, folder, rows):
        path = folder / "samples.jsonl.xz"
        with lzma.open(path, "wt", encoding="utf8") as stream:
            for row in rows:
                stream.write(json.dumps(row) + "\n")
        return path

    def test_sample_values_are_preserved(self):
        with tempfile.TemporaryDirectory() as folder:
            root, row = Path(folder), self.row()
            unpack(self.write(root, [row]), root / "output")
            path = root / "output" / row["group"] / (row["sample"]["name"] + ".json.gz")
            with gzip.open(path, "rt") as stream:
                self.assertEqual(json.load(stream), row["sample"])

    def test_path_traversal_is_rejected_before_writing(self):
        with tempfile.TemporaryDirectory() as folder:
            root, row = Path(folder), self.row()
            row["sample"]["name"] = "../escape"
            with self.assertRaises(ValueError):
                unpack(self.write(root, [row]), root / "output")
            self.assertFalse((root / "output").exists())

    def test_duplicate_samples_are_rejected_before_writing(self):
        with tempfile.TemporaryDirectory() as folder:
            root, row = Path(folder), self.row()
            with self.assertRaises(ValueError):
                unpack(self.write(root, [row, row]), root / "output")
            self.assertFalse((root / "output").exists())

    def test_existing_destination_is_not_overwritten(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            destination = root / "output"
            destination.mkdir()
            marker = destination / "keep"
            marker.write_text("unchanged")
            with self.assertRaises(FileExistsError):
                unpack(self.write(root, [self.row()]), destination)
            self.assertEqual(marker.read_text(), "unchanged")

    def test_missing_completion_is_not_silently_accepted(self):
        with tempfile.TemporaryDirectory() as folder:
            root, row = Path(folder), self.row()
            row["sample"]["completions"] = []
            with self.assertRaises(ValueError):
                unpack(self.write(root, [row]), root / "output")
            self.assertFalse((root / "output").exists())


if __name__ == "__main__":
    unittest.main()
