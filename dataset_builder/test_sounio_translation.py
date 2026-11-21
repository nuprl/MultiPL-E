"""Structural translator regressions; native semantics need separate gates."""

import ast
import unittest

from humaneval_to_sounio import Expression, Translator, coerce, translate_type
from sounio_types import Type, parse_type, runtime


class SounioTranslationTests(unittest.TestCase):
    def test_nested_annotations(self):
        self.assertEqual(parse_type("Dict[str, List[Optional[int]]]"),
                         Type("dict", (Type("str"), Type("list", (Type("option", (Type("bigint"),)),)))))

    def test_nested_dictionary_value_is_not_a_bare_name(self):
        self.assertIn("DictStrListBigint", translate_type("Dict[str, List[int]]"))

    def test_optional_tuple_does_not_strip_parentheses(self):
        translator = Translator()
        expression = translator.gen_tuple([translator.gen_literal(-2), translator.gen_literal(None)])
        code = coerce(expression, "Tuple[Optional[int], Optional[int]]")
        self.assertEqual(code, "mp_tuple2_option_bigint_option_bigint_new(mp_option_bigint_some(mp_bigint_from_i64(-2)), mp_option_bigint_none())")

    def test_negative_integer_in_float_context(self):
        self.assertEqual(coerce(Expression("literal", -2), "float"), "-2.0")

    def test_scientific_float_does_not_get_an_extra_decimal_suffix(self):
        self.assertEqual(coerce(Expression("literal", 1e-5), "float"), "1e-05")

    def test_empty_list_has_explicit_type(self):
        code = coerce(Expression("list"), "List[float]")
        self.assertIn("mp_list_f64_new()", code)
        self.assertNotIn("vec!", code)

    def test_unicode_and_quotes_are_codepoints_not_source_injection(self):
        code = coerce(Expression("literal", '"å🚀\\\n'), "str")
        for point in (34, 229, 128640, 92, 10):
            self.assertIn(f"mp_seq_push(value.handle, {point})", code)
        self.assertNotIn("String::from", code)

    def test_instance_state_does_not_leak(self):
        first, second = Translator(), Translator()
        first.translate_prompt("a", [], ast.parse("List[str]", mode="eval").body, "a")
        prompt = second.translate_prompt("b", [], ast.Name(id="int"), "b")
        self.assertNotIn("MPListStr", prompt)

    def test_unknown_annotations_refuse_explicitly(self):
        for annotation in ("Any", "Union[int, str]", "Dict[int]", "List[int, str]"):
            with self.subTest(annotation=annotation), self.assertRaises(ValueError):
                parse_type(annotation)

    def test_runtime_is_deterministic_and_has_no_rust_macros(self):
        type_ = parse_type("Tuple[Dict[str, int], List[float]]")
        code = runtime([type_])
        self.assertEqual(code, runtime([type_]))
        self.assertNotIn("vec!", code)
        self.assertNotIn("panic!", code)
        self.assertIn("heap_alloc", code)
        self.assertIn("mp_seq_reserve", code)

    def test_wrong_tuple_arity_is_not_silently_zipped(self):
        with self.assertRaises(ValueError):
            coerce(Expression("tuple", children=(Expression("literal", 1),)), "Tuple[int, int]")

    def test_integer_range_is_not_silently_narrowed(self):
        with self.assertRaises(ValueError):
            coerce(Expression("literal", 1 << 63), Type("i64"))

    def test_unhashable_key_types_are_not_given_new_python_semantics(self):
        for annotation in ("Dict[List[int], int]", "Set[Dict[str, int]]", "Set[Tuple[List[int], int]]"):
            with self.subTest(annotation=annotation), self.assertRaises(ValueError):
                parse_type(annotation)

    def test_nested_tuple_arities_have_distinct_type_identities(self):
        first = parse_type("Tuple[Tuple[int, int], int, int]")
        second = parse_type("Tuple[Tuple[int, int, int], int]")
        self.assertNotEqual(first.code, second.code)
        self.assertNotEqual(first.prefix, second.prefix)

    def test_integer_interface_is_fixed_without_preflight(self):
        translator = Translator()
        prompt = translator.translate_prompt("f", [ast.arg(arg="n", annotation=ast.Name(id="int"))],
                                             ast.Name(id="int"), "test")
        self.assertIn("fn f(n: MPBigint) -> MPBigint", prompt)
        self.assertEqual(translator.type[1], Type("bigint"))
        literal = coerce(Expression("literal", 100000000000000000000), translator.type[1])
        self.assertIn("mp_bigint_new()", literal)
        self.assertNotIn(" as i64", literal)

    def test_no_test_dependent_type_selection_hook(self):
        translator = Translator()
        self.assertFalse(hasattr(translator, "prepare_problem"))
        self.assertEqual(parse_type("int"), Type("bigint"))

    def test_nested_integer_leaves_always_use_bigint(self):
        schema = parse_type("Dict[int, List[Tuple[int, Optional[int]]]]")
        self.assertNotIn("i64", schema.stem)
        self.assertIn("bigint", schema.stem)

    def test_small_and_large_literals_have_same_public_type(self):
        small = coerce(Expression("literal", 7), "int")
        wide = coerce(Expression("literal", 100000000000000000000), "int")
        self.assertIn("mp_bigint_from_i64", small)
        self.assertIn("mp_bigint_new", wide)
        self.assertEqual(translate_type("int"), "MPBigint")

    def test_unicode_runtime_exposes_version_pinned_full_swapcase(self):
        code = runtime([Type("str")])
        self.assertIn("Unicode 15.0.0", code)
        self.assertIn("fn mp_str_swapcase", code)
        self.assertIn("fn mp_unicode_final_sigma", code)
        self.assertIn("fn mp_unicode_expansion", code)
        self.assertNotIn("assert(point < 128)", code)


if __name__ == "__main__":
    unittest.main()
