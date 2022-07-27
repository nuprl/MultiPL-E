'''
Authored by Molly Q Feldman - based on scripts by Arjun Guha & Abhinav Jangda

This script translates problems from the OpenAI HumanEval dataset into Ruby.

INSTALLS REQUIRED ON VM:
sudo apt install ruby

RUBY_VERSION is 3.0.2
'''

import re
import ast
from typing import List
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class RubyTranslator:
    USub = "-"
    stop=  [ '\nclass', '\ndef', '\n#', '\n\n' ]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        """
        NOTE for Ruby: that the prompt start is based on multiple Ruby style guides to avoid block comment syntax.
        https://ruby-style-guide.shopify.dev/
        https://github.com/rubocop/ruby-style-guide
        """
        ruby_description = "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{ruby_description}def {name}({arg_list.lower()})\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.

        NOTE for Ruby: we use the Test::Unit library rather than RSpec (https://rspec.info/) because it 
        is simpler and still supported in 3.0.2. It returns 1 as a failure code. 
        """
        return ["require 'test/unit'", "class TestHumanEval < Test::Unit::TestCase", f"  def test_{entry_point}", f"    candidate = method(:{entry_point})"]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["  end", "end", ""]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.

        NOTE for Ruby: it has (expected, actual) ordering, so right then left. 
        NOTE for Ruby: https://docs.ruby-lang.org/en/2.0.0/Test/Unit/Assertions.html#method-i-assert_equal
        is the document for assert-equal which uses == equality (i.e. structural)
        """
        return "    assert_equal({}, {})".format(right, left)

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value

        NOTE for Ruby: lower case booleans, None equiv is nil 
        NOTE for Ruby: using double quoted strings because more general - style guides can't decide
        """
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            return f'"{c}"'
        elif c is None:
            return 'nil'
        return repr(c)

    def gen_unaryop(self, op: str, v: str) -> str:
        """Translate a unary operation (op, v)"""
        return op + v

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to [ x, y, z ] (a Ruby Array)
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to [ x, y, z ]

        NOTE for Ruby: there are no tuples in Ruby, so they are mapped to Arrays 
        """
        return "[" + ", ".join(t) + "]"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] => val1, ["key2"] => val2 }

        NOTE FOR RUBY: this is the idiomatic way of doing this, Python dictionaries also technically work
        """
        return "{" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + ".call(" + ", ".join(args) + ")"


if __name__ == "__main__":
    translator = RubyTranslator("rb")
    main(translator)
