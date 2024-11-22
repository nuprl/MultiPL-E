"""This script can be used to translate problems from the HumanEval and
MBPP datasets into Ada 2022.

There are several limitations of this script, including:
- Ada does not have a tuple type. We've chosen to use a record in these cases,
    though it doesn't behave the same as a tuple in Python
- There are a few untyped problems or problems that use a container type but
    don't specify the type of the contained elements e.g. `List` or `List[Any]`
    vs `List[int]`. We can't easily, and so haven't translated these types
- On that note, it won't translate any problem that uses the type `Any`
- Ada doesn't have a built-in Optional equivalent. You can build your own using
    a variant record, which is what we've chosen to do. To attempt to translate
    test cases that use Optional, we have used the same approach and workaround
    as in humaneval_to_rs.py
- While we have tried to limit the likelihood, it is possible that some of
    translations contain invalid types or signatures, making it impossible to
    pass those benchmarks

Note also that these translations won't include examples of a large number of
Ada features which include but are not limited to:
- Subtypes
- Enumerations
- Multi-dimensional array types
- Access types
- Fixed point types
- Limited types
- Generic packages or subprograms
- Private parts
- Tasks
- Contracts
- Much of the standard library
"""

import ast
import base64
import re
from typing import List

from base_language_translator import LanguageTranslator
from humaneval_to_cpp import DOCSTRING_LINESTART_RE

TargetExp = str

ADA_KEYWORDS = {
    "abort",
    "abs",
    "abstract",
    "accept",
    "access",
    "aliased",
    "all",
    "and",
    "array",
    "at",
    "begin",
    "body",
    "case",
    "constant",
    "declare",
    "delay",
    "delta",
    "digits",
    "do",
    "else",
    "elsif",
    "end",
    "entry",
    "exception",
    "exit",
    "for",
    "function",
    "generic",
    "goto",
    "if",
    "in",
    "interface",
    "is",
    "limited",
    "loop",
    "mod",
    "new",
    "not",
    "null",
    "of",
    "or",
    "others",
    "out",
    "overriding",
    "package",
    "pragma",
    "private",
    "procedure",
    "protected",
    "raise",
    "range",
    "record",
    "rem",
    "renames",
    "requeue",
    "return",
    "reverse",
    "select",
    "separate",
    "some",
    "subtype",
    "synchronized",
    "tagged",
    "task",
    "terminate",
    "then",
    "type",
    "until",
    "use",
    "when",
    "while",
    "with",
    "xor",
}
STANDARD_LIBRARY_TYPES = {
    "boolean",
    "integer",
    "short_short_integer",
    "short_integer",
    "long_integer",
    "long_long_integer",
    "short_float",
    "float",
    "long_float",
    "long_long_float",
    "string",
    "wide_string",
    "duration",
}

# These types might be generated, but are not valid. For now we'll just fail to
# translate prompts that try to generate these types
INVALID_TYPES = [
    "Integer_Array_Array",
    "Unbounded_String_Array_Array",
    "Integer_Integer_Array_Tuple",
]

ASCII_CHARACTERS = {
    "\x00": "ASCII.NUL",
    "\x01": "ASCII.SOH",
    "\x02": "ASCII.STX",
    "\x03": "ASCII.ETX",
    "\x04": "ASCII.EOT",
    "\x05": "ASCII.ENQ",
    "\x06": "ASCII.ACK",
    "\x07": "ASCII.BEL",
    "\x08": "ASCII.BS",
    "\x09": "ASCII.HT",
    "\x0a": "ASCII.LF",
    "\x0b": "ASCII.VT",
    "\x0c": "ASCII.FF",
    "\x0d": "ASCII.CR",
    "\x0e": "ASCII.SO",
    "\x0f": "ASCII.SI",
    "\x10": "ASCII.DLE",
    "\x11": "ASCII.DC1",
    "\x12": "ASCII.DC2",
    "\x13": "ASCII.DC3",
    "\x14": "ASCII.DC4",
    "\x15": "ASCII.NAK",
    "\x16": "ASCII.SYN",
    "\x17": "ASCII.ETB",
    "\x18": "ASCII.CAN",
    "\x19": "ASCII.EM",
    "\x1a": "ASCII.SUB",
    "\x1b": "ASCII.ESC",
    "\x1c": "ASCII.FS",
    "\x1d": "ASCII.GS",
    "\x1e": "ASCII.RS",
    "\x1f": "ASCII.US",
    "\x7f": "ASCII.DEL",
}

CAMEL_REGEX_1 = re.compile("(.)([A-Z][a-z]+)")
CAMEL_REGEX_2 = re.compile("__([A-Z])")
CAMEL_REGEX_3 = re.compile("([a-z0-9])([A-Z])")


def camel_to_snake(name: str) -> str:
    # Taken from: https://stackoverflow.com/a/1176023
    name = CAMEL_REGEX_1.sub(r"\1_\2", name)
    name = CAMEL_REGEX_2.sub(r"_\1", name)
    name = CAMEL_REGEX_3.sub(r"\1_\2", name)
    return name.lower()


def ada_case(name: str) -> str:
    return camel_to_snake(name).title()


def python_string_to_ada_string(s: str) -> str:
    # TODO figure out what to do with UTF-8 🙈
    s = s.replace('"', '""')
    for c in ASCII_CHARACTERS:
        s.replace(c, f'" & {ASCII_CHARACTERS[c]} & "')
    return s


def make_valid_ada_name(name: str) -> str:
    """Make a valid Ada name from a string.
    This is a very simple implementation, and almost certainly not correct for
    all cases, but should be sufficient for our purposes. Replaces all non-word
    characters with underscores."""
    return re.sub(r"\W", "_", name)


def coerce(expr: str, type) -> str:
    """Addresses differences in literal syntax due to our selected method of translating types

    Optional: We've used a variant record to represent an optional type. This means we can't just
        use the value or None / equivalent. There is also one edge case for HumanEval 136 which is
        implemented in a non-generic way, but makes that benchmark valid.

    Strings: If a string is an argument to our candidate function, or the return type, we can use
        a regular String. If a string is part of a container like a record or an array for example,
        we can't just use the String type. For records we could use a discriminated record to define
        the length of the sting. We've however chosen to just use the Unbounded_String type in these
        cases. If a string is part of a Dict, we can't use an Unbounded_String as a key, so we've
        chosen to use the String type for both the key and value in this case.
    """

    def coerce_to_option(expr: str) -> str:
        if expr == "None" or expr == "null":
            return "(Valid => False)"
        else:
            return f"(Valid => True, Value => {make_strings_unbounded(expr)})"

    match expr, type:
        case expr, ast.Name(id="str"):
            return make_strings_bounded(expr)
        case expr, ast.Subscript(ast.Name("Optional"), _):
            return coerce_to_option(expr)
        case expr, ast.Subscript(
            ast.Name("Tuple"), ast.Tuple([_, ast.Constant(value=ast.Ellipsis)], _)
        ):
            return f"[{expr[1:-1]}]"  # Replace parentheses with square brackets
        case expr, ast.Subscript(
            ast.Name("Tuple"),
            ast.Tuple(
                [
                    ast.Subscript(ast.Name("Optional")),
                    ast.Subscript(ast.Name("Optional")),
                ],
                _,
            ),
        ):
            # This is a special case for just one benchmark (HumanEval_136), which
            # uses Tuple[Option[int], Option[int]]. There is something more rigorous
            # to be done here where we properly coerce things. But I, like the
            # implementor of the rust translator, do not want to do it
            l, r = expr.strip("()").split(", ")
            return f"({coerce_to_option(l)}, {coerce_to_option(r)})"
        case expr, ast.Subscript(
            ast.Name("Dict"),
            slice=ast.Tuple(
                elts=[ast.Name("str"), ast.Subscript(ast.Name("Optional"))]
            ),
        ):
            # Workaround for mbpp_465, which has an argument of type Dict[str, Optional[str]]
            expr = expr[1:-1]  # Remove the surrounding parentheses
            kv_pairs = expr.split(", ")
            for i in range(len(kv_pairs)):
                pair = kv_pairs[i]
                k, v = pair.split(" => ")
                kv_pairs[i] = f"{k} => {coerce_to_option(v)}"
            return f"[{', '.join(kv_pairs)}]"
        case _:
            return expr


def extract_arguments(expr: str) -> List[str]:
    """Given a function call extract a list of the top level arguments. e.g.:
    - "Candidate (1, 2, 3)" -> ['1', '2', '3']
    - "Candidate ("foo", (1, 2, 3))" -> ['"foo"', '(1, 2, 3)']

    Assumes that expr has arguments, which is the case for HumanEval and MBPP.
    """
    # Remove the function name and parentheses
    start = expr.index("(") + 1
    end = expr.rindex(")")
    arguments_str = expr[start:end].strip()

    arguments = []
    current_arg = []
    nested_level = 0
    in_string = False

    for char in arguments_str:
        if char == "," and not in_string and nested_level == 0:
            # When we encounter a comma at the top level, split the argument
            arguments.append("".join(current_arg).strip())
            current_arg = []
        else:
            current_arg.append(char)
            # Handle nested parentheses
            if char == '"':
                in_string = not in_string
            elif not in_string and char in ["(", "["]:
                nested_level += 1
            elif not in_string and char in [")", "]"]:
                nested_level -= 1

    # Append the last argument
    if current_arg:
        arguments.append("".join(current_arg).strip())

    return arguments


BASE64_PATTERN = re.compile(
    r"`(?P<b64>(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}={2}))`"
)


def create_b64_encoded_string(value: str) -> str:
    """Convert a string to a base64 encoded string"""
    utf8_bytes = value.encode("utf-8")
    base64_bytes = base64.b64encode(utf8_bytes)
    base64_string = base64_bytes.decode("utf-8")
    return base64_string


def decode_bounded_string(match) -> str:
    """Decode a base64 encoded string that is surrounded by quotes to a bounded string e.g.:
    - '""' -> '""'
    - '"YWJj"' -> '"abc"'
    - '"Zm9vIiJiYXI="' => '"foo""bar"'
    """
    base64_string = match.group("b64")
    utf8_bytes = base64.b64decode(base64_string)
    utf8_string = utf8_bytes.decode("utf-8")
    return f'"{utf8_string}"'


def decode_unbounded_string(match) -> str:
    """Decode a base64 encoded string that is surrounded by quotes to an unbounded string e.g.:
    - '""' -> 'To_Unbounded_String ("")'
    - '"YWJj"' -> 'To_Unbounded_String ("abc")'
    - '"Zm9vIiJiYXI="' => 'To_Unbounded_String ("foo""bar")'
    """
    utf8_string = decode_bounded_string(match)
    return f"To_Unbounded_String ({utf8_string})"


def make_strings_bounded(expr: str) -> str:
    """Replace all strings in the expr with bounded strings,
    decoding the base64 format in the process"""
    if expr == "``":
        return '""'
    return BASE64_PATTERN.sub(decode_bounded_string, expr)


def make_strings_unbounded(expr: str) -> str:
    """Replace all strings in the expr with unbounded strings,
    decoding the base64 format in the process"""
    if expr == "``":
        return '""'
    return BASE64_PATTERN.sub(decode_unbounded_string, expr)


SUBP_NAME_PATTERN = re.compile(r"^(?P<subp>\S+)\s+\(.*\)$")


def get_subp_name(expr: str) -> str:
    """Get the subprogram name of the lhs expression. Should be Candidate"""
    return SUBP_NAME_PATTERN.match(expr).group("subp")


class TranslationDesignError(Exception):
    pass


class Translator(LanguageTranslator[TargetExp]):
    """Translator class for Ada 2022

    This class can be used to translate problems from the HumanEval and MBPP datasets into Ada 2022.
    Note that this translator was crafted with the HumanEval and MBPP datasets in mind, and you may
    encounter issues with translating prompts from other datasets, even if they appear to use the
    same types as those supported in the HumanEval and MBPP datasets.

    Types will generally be translated as follows:
    - int -> Integer
    - float -> Float
    - bool -> Boolean
    - str
        - String
            - If the string is an argument to the candidate function or the return type
            - If the string is a key or value in a Dict
        - Unbounded_String - Otherwise
    - Optional -> Ada doesn't have a built in Optional type. We've implemented this as a variant record
    - None -> This is generally only used as a test value for Optional types. Assuming this is the
        case, we've translated this as (Valid => False), to match our implementation of Optional
    - List
        - Vector - If the list is an element of another container
        - Array - Otherwise
    - Tuple
        - Array / Vector - Translated as if it was a list, if it variable length e.g. Tuple[str, ...] in HumanEval_148
        - Record - Otherwise
    - Dict -> Indefinite_Ordered_Map
    - Set -> Indefinite_Ordered_Set
    """

    def __init__(self) -> None:
        super().__init__()
        self.reinit()
        self.float_type = "Float"
        self.int_type = "Integer"
        self.bool_type = "Boolean"
        self.array_type = "Array"
        self.indent = " " * 3
        self._custom_type_decls = []
        self._use_statements = set()

    def reinit(self) -> None:
        self.subprogram_name = None
        self._custom_type_decls = []
        self._use_statements = set()
        self._imports = set()

    def gen_set_type(self, elem_type):
        # Probably won't work complex examples, but there is only one "valid" problem that uses set in MBPP and HumanEval
        element = self.translate_pytype(elem_type)
        if element == "Integer_Integer_Tuple":
            # Workaround for MBPP_473, as we need a < operator for type to be able to use an ordered set
            self._custom_type_decls.append(
                'function "<" (Left, Right : Integer_Integer_Tuple) return Boolean is\n    (Left.Integer_1 < Right.Integer_1 or else (Left.Integer_1 = Right.Integer_1 and then Left.Integer_2 < Right.Integer_2));'
            )
        type_name = make_valid_ada_name(f"{element}_Sets")
        self._imports.add("with Ada.Containers.Indefinite_Ordered_Sets;")
        decl = f"package {type_name} is new Ada.Containers.Indefinite_Ordered_Sets (Element_Type => {element});\n   use {type_name};"
        self._custom_type_decls.append(decl)
        self._use_statements.add(f"use {type_name};")
        return f"{type_name}.Set"

    def gen_array_type(self, elem_type):
        # TODO handle cases where element isn't a fixed size e.g. strings, unconstrained arrays etc.
        element = self.translate_pytype(elem_type)
        type_name = make_valid_ada_name(f"{element}_Array")
        decl = f"type {type_name} is array (Positive range <>) of {element};"
        self._custom_type_decls.append(decl)
        return type_name

    def gen_vector_type(self, elem_type):
        element = self.translate_pytype(elem_type)
        type_name = make_valid_ada_name(f"{element}_Vector")
        self._imports.add("with Ada.Containers.Vectors;")
        decl = f"package {type_name} is new Ada.Containers.Vectors (Index_Type => Positive, Element_Type => {element});\n   use {type_name};"
        self._custom_type_decls.append(decl)
        self._use_statements.add(f"use {type_name};")
        return f"{type_name}.Vector"

    def gen_optional_type(self, elem_type):
        element = self.translate_pytype(elem_type)
        type_name = f"{element}_Option"
        decl = f"type {type_name} (Valid : Boolean := False) is record\n   case Valid is\n      when True =>\n         Value : {element};\n      when False =>\n         null;\n   end case;\nend record;"
        self._custom_type_decls.append(decl)
        return type_name

    def gen_tuple_type(self, elts):
        element_types = [self.translate_pytype(elem) for elem in elts]

        type_name = make_valid_ada_name("_".join(element_types) + "_Tuple")
        decl = f"type {type_name} is record\n"
        count = 1
        for elt in element_types:
            decl += f"      {make_valid_ada_name(elt)}_{count} : {elt};\n"
            count += 1
        decl += "   end record;\n"
        self._custom_type_decls.append(decl)
        return type_name

    def gen_dict_type(self, key_type, value_type):
        # We can't use an Unordered_String as a key in a Map
        key = self.translate_pytype(key_type, True)
        value = self.translate_pytype(value_type, True)
        type_name = make_valid_ada_name(f"{key}_{value}_Dict")
        self._imports.add("with Ada.Containers.Indefinite_Ordered_Maps;")
        decl = f"package {type_name} is new Ada.Containers.Indefinite_Ordered_Maps (Key_Type => {key}, Element_Type => {value});\n   use {type_name};"
        self._custom_type_decls.append(decl)
        self._use_statements.add(f"use {type_name};")
        return f"{type_name}.Map"

    def translate_pytype(self, ann: ast.expr | None, top_level: bool = False) -> str:
        """Traverses an AST annotation and translate Python type annotation to an Ada Type"""

        if ann is None:
            raise Exception("No annotation")

        # Todo add missing Set type
        match ann:
            case ast.Name(id="str"):
                if top_level:
                    return "String"
                self._imports.add(
                    "with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;"
                )
                return "Unbounded_String"
            case ast.Name(id="int"):
                return self.int_type
            case ast.Name(id="float"):
                return self.float_type
            case ast.Name(id="bool"):
                return self.bool_type
            case ast.Name(id="None"):
                # It appears None is always used in optional
                raise Exception("None type not implemented")
            case ast.Name(id="Set"):
                raise Exception("Set without defined element type not implemented")
            case ast.List:
                raise Exception("List without defined element type not implemented")
            case ast.Tuple:
                raise Exception("Tuple not implemented")
            case ast.Dict:
                raise Exception(
                    "Dict without defined key and value types not implemented"
                )
            case ast.Subscript(
                value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)
            ):
                return self.gen_dict_type(key_val_type[0], key_val_type[1])
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                if top_level:
                    return self.gen_array_type(elem_type)
                return self.gen_vector_type(elem_type)
            case ast.Subscript(
                value=ast.Name(id="Tuple"),
                slice=ast.Tuple([elem_type, ast.Constant(value=Ellipsis)], _),
            ):
                # Special case for when we have a variable length tuple with a typehint like Tuple[int, ...] e.g. HumanEval_148
                if top_level:
                    return self.gen_array_type(elem_type)
                return self.gen_vector_type(elem_type)
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=ast.Tuple(elts=elems)):
                return self.gen_tuple_type(elems)
            case ast.Subscript(value=ast.Name(id="Optional"), slice=elem_type):
                return self.gen_optional_type(elem_type)
            case ast.Subscript(value=ast.Name(id="Union"), slice=ast.Tuple(elts=elems)):
                raise Exception("Union Not implemented")
            case ast.Subscript(value=ast.Name(id="Set"), slice=elem_type):
                return self.gen_set_type(elem_type)
            case ast.Name(id="Any"):
                raise Exception("Any type not implemented")
            case ast.Constant(value=None):
                raise Exception("None constant type not implemented")
            case ast.Constant(value=ast.Ellipsis):
                raise Exception(
                    "Ellipsis constant type not implemented, other than the tuple workaround"
                )
            case _:
                print(f"Unhandled annotation: {ast.dump(ann)}")
                raise Exception(f"Unhandled annotation: {ann}")

    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """
        Translate a literal expression
        c: is the literal value
        """
        match c:
            case bool() | int() | float():
                return str(c)
            case str():
                """We don't know at this point if the string can be bounded, or must be unbounded.
                Instead we'll just output a string and then later during the call to `finalize`
                we'll create bounded or unbounded strings where needed.

                By formatting the string using b64, and surrounding it by backticks, which aren't
                used in ada, it makes it easier to identify which strings have or haven't been
                converted back to strings during the call to `finalize`
                """
                string = python_string_to_ada_string(c)
                return f"`{create_b64_encoded_string(string)}`"
            case None:
                return "null"
            case _:
                raise TranslationDesignError(f"Unhandled expression: {c}")

    def gen_var(self, v: str) -> TargetExp:
        """
        Translate a variable with name v.
        """
        v = v.lower()  # Ada is case insensitive

        # We don't have to rename variables who's names clash with types from the standard library
        # But doing some will make more normal subprogram specifications
        if v in ADA_KEYWORDS or v in STANDARD_LIBRARY_TYPES:
            return ada_case(f"my_{v}")
        return ada_case(v)

    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        """
        Translate a list with elements l
        """
        return "[" + ", ".join([make_strings_unbounded(i) for i in l]) + "]"

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """
        Translate a tuple with elements t
        """
        return "(" + ", ".join([make_strings_unbounded(i) for i in t]) + ")"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """
        Translate a dictionary with keys and values
        """
        return (
            "["
            + ", ".join(
                [
                    f"{make_strings_bounded(k)} => {make_strings_bounded(v)}"
                    for k, v in zip(keys, values)
                ]
            )
            + "]"
        )

    def gen_set(self, s: List[TargetExp]) -> TargetExp:
        """
        Translate a set with elements s
        """
        return "[" + ", ".join([make_strings_unbounded(i) for i in s]) + "]"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        """
        Translate a function call `func(args)`
        """
        return f"{func} ({', '.join(args)})"

    def package_imports(self) -> str:
        # TODO handle cases where more imports are needed e.g. vector/hashmap
        return "\n".join(["pragma Ada_2022;", *self._imports]) + "\n"

    def translate_prompt(
        self, name: str, args: List[ast.arg], returns: ast.expr, description: str
    ) -> str:
        """
        Translate Python prompt.
        """
        self.reinit()
        self.type = [[arg.annotation for arg in args], returns]

        comment_start = self.indent + "-- "
        ada_description = (
            comment_start
            + DOCSTRING_LINESTART_RE.sub("\n" + comment_start, description.strip())
            + "\n"
        )
        self.subprogram_name = ada_case(name)
        self.subprogram_type = "function"  # Will always use function as all subprograms in MBPP and HumanEval have return types
        self.args_type = [self.translate_pytype(arg.annotation, True) for arg in args]
        formal_args = [
            f"{self.gen_var(arg.arg)} : {self.translate_pytype(arg.annotation, True)}"
            for arg in args
        ]
        formal_arg_list = "; ".join(formal_args)
        self.return_type = self.translate_pytype(returns, True)
        subprogram_signature = (
            f"{self.subprogram_type} {self.subprogram_name} ({formal_arg_list})"
        )
        self.candidate_signature = (
            f"{self.subprogram_type} Candidate ({formal_arg_list})"
        )
        if self.subprogram_type == "function":
            subprogram_signature = f"{subprogram_signature} return {self.return_type}"
            self.candidate_signature = (
                f"{self.candidate_signature} return {self.return_type}"
            )

        # To be able to use custom types such as arrays of integers, the prompt
        # starts with the specification of a "Placeholder" pacakge where we
        # declare these types. Then comes the declaration the sub-program to be
        # competed, and finally the beginning of "Placeholder" package body.
        #
        # Later in the testsuite prefix/suffix, we add a Main procedure to the
        # output.
        #
        # The result should be an Ada file that contains both the specification
        # and body of a "Placeholder" package, and a main procedure. This will
        # will be split in several .ads and .adb files using gnatchop in
        # evaluation phase.

        for custom_type in set(self._custom_type_decls):
            for invalid_type in INVALID_TYPES:
                if invalid_type in custom_type:
                    raise TranslationDesignError(
                        f'Tried to generate invalid type: "{custom_type}"'
                    )

        ada_spec = f"{self.package_imports()}\n"
        ada_spec += "package Placeholder is\n"
        seen_types = set()
        for custom_type in self._custom_type_decls:
            if custom_type not in seen_types:
                seen_types.add(custom_type)
                ada_spec += f"{self.indent}{custom_type}\n"
        ada_spec += f"{self.indent}{subprogram_signature};\n{ada_description}\n"
        ada_spec += "end Placeholder;\n\n"

        ada_body = f"{self.package_imports()}\n"
        ada_body += "package body Placeholder is\n"
        ada_body += f"{self.indent}{subprogram_signature}"

        ada_prompt = ada_spec + ada_body
        return ada_prompt

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        The entry_point is ???
        """
        return [
            "",
            f"{self.indent}end {self.subprogram_name};",
            "",
            "end Placeholder;",
            "",
            self.package_imports().strip(),
            "with Placeholder; use Placeholder;",
            "",
            "procedure Main is",
            "",
            *[f"{self.indent}{use}" for use in self._use_statements],
            "",
            f"{self.indent}{self.candidate_signature} renames Placeholder.{self.subprogram_name};",
            "",
            "begin",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        """
        This code goes at the end of the test suite.
        """
        return ["end Main;"]

    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        return f"{self.indent}pragma Assert ({left} = {right});"

    def file_ext(self) -> str:
        """
        The file extension for this language
        """
        return "adb"

    def stop(self) -> List[str]:
        """
        The list of stop tokens for this language
        """
        if self.subprogram_name is None:
            raise TranslationDesignError("subprogram_name should never be None")
        return [f"\n{self.indent}end "]

    def no_completion_prompt_stub(self) -> str:
        """
        A default stub to create a syntactically valid translation in case of not performing completion.
        For example, for Rust this could be:

            todo!()
        }

        """
        if self.subprogram_name is None:
            raise TranslationDesignError("subprogram_name should never be None")
        return f'raise Program_Error with "Not implemented";\n   end {self.subprogram_name};'

    def create_strings_in_lhs(self, lhs_expr: str) -> str:
        """This is used to properly format strings in the lhs of a test case.

        Extract all of the top level arguments of the lhs expression. For each
        top level argument:
        - If it is a string, convert it to a bounded string
        - Otherwise extract all strings and convert them to unbounded strings
        Then rebuild the lhs function call.
        """
        subp_name = get_subp_name(lhs_expr)
        args = extract_arguments(lhs_expr)
        assert len(args) == len(self.type[0])
        args = [coerce(x, y) for x, y in zip(args, self.type[0])]
        return f"{subp_name} ({', '.join(args)})"

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                # return result
                return self.create_strings_in_lhs(result)
            case "rhs":
                return coerce(result, self.type[1])
            case _:
                raise Exception("bad context to finalize")
