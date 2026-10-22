import unittest

from validate import strip_body
from sounio_bodies import BODIES, MBPP_BODIES


class SounioReferenceBoundaryTests(unittest.TestCase):
    source = "fn helper() -> i64 {\n    7\n}\nfn answer() -> i64 {\n    1\n}\n"

    def test_only_named_problem_body_is_excluded(self):
        changed = self.source.replace("    1", "    99")
        self.assertEqual(strip_body(self.source, "answer"), strip_body(changed, "answer"))

    def test_helper_body_is_not_ignored(self):
        changed = self.source.replace("    7", "    99")
        self.assertNotEqual(strip_body(self.source, "answer"), strip_body(changed, "answer"))

    def test_signature_is_not_ignored(self):
        changed = self.source.replace("answer()", "answer(x: i64)")
        self.assertNotEqual(strip_body(self.source, "answer"), strip_body(changed, "answer"))

    def test_missing_entrypoint_fails(self):
        with self.assertRaises(ValueError):
            strip_body(self.source, "missing")

    def test_unterminated_body_fails(self):
        with self.assertRaises(ValueError):
            strip_body("fn answer() -> i64 {\n    1\n", "answer")

    def test_duplicate_entrypoint_fails(self):
        with self.assertRaises(ValueError):
            strip_body(self.source + self.source, "answer")

    def test_reference_bodies_are_parseable_string_templates(self):
        self.assertEqual(len(BODIES), 20)
        self.assertIn(67, MBPP_BODIES)
        self.assertTrue(all(isinstance(body, str) and body.strip() for body in BODIES.values()))


if __name__ == "__main__":
    unittest.main()
