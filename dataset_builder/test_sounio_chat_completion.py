import unittest
import importlib.util
from pathlib import Path
from sounio_chat_completion import assemble_sounio_chat


class SounioChatAssemblyTest(unittest.TestCase):
    header = 'fn candidate(x: i64) -> i64 {\n'
    prelude = 'fn helper() -> i64 {\n    1\n}\n'
    prompt = prelude + '// problem\n' + header
    body = '    if x > 0 {\n        x\n    } else {\n        0\n    }'
    full_function = header + body + '\n}\n'

    def test_function_only_restores_exact_immutable_prefix(self):
        self.assertEqual(assemble_sounio_chat(self.prompt,self.full_function,['\n}']),self.prompt+self.body)

    def test_full_prefix_does_not_stop_at_helper_closing_brace(self):
        self.assertEqual(assemble_sounio_chat(self.prompt,self.prompt+self.body+'\n}\n',['\n}']),self.prompt+self.body)

    def test_nested_braces_are_not_removed(self):
        self.assertIn('\n    } else {',assemble_sounio_chat(self.prompt,self.full_function,['\n}']))

    def test_balanced_markdown_fence(self):
        self.assertEqual(assemble_sounio_chat(self.prompt,'```sounio\n'+self.full_function+'```\n',['\n}']),self.prompt+self.body)

    def test_incomplete_fence_is_not_repaired(self):
        self.assertIsNone(assemble_sounio_chat(self.prompt,'```sounio\n'+self.full_function,['\n}']))

    def test_changed_signature_is_not_repaired(self):
        self.assertIsNone(assemble_sounio_chat(self.prompt,self.full_function.replace('x: i64','x: f64'),['\n}']))

    def test_body_only_is_not_guessed(self):
        self.assertIsNone(assemble_sounio_chat(self.prompt,self.body,['\n}']))

    def test_algorithm_bytes_are_preserved_even_if_wrong(self):
        wrong='    42 // intentionally wrong'
        self.assertEqual(assemble_sounio_chat(self.prompt,self.header+wrong+'\n}\n',['\n}']),self.prompt+wrong)

    def test_no_tests_or_function_invented(self):
        self.assertIsNone(assemble_sounio_chat(self.prompt,'fn other() {\n}\n',['\n}']))

    def test_first_stop_wins(self):
        self.assertEqual(assemble_sounio_chat(self.prompt,self.header+'    x\nSTOP\n}\n',['\n}','\nSTOP']),self.prompt+'    x')

    def test_official_harness_assembles_function_only(self):
        if importlib.util.find_spec('dspy') is None:
            self.skipTest('Integration requires the official chat harness dependencies')
        from chat_completions import postprocess_completion
        self.assertEqual(postprocess_completion('sio',Path('control.json.gz'),['\n}'],self.prompt,self.full_function),self.prompt+self.body)


if __name__ == '__main__':
    unittest.main()
