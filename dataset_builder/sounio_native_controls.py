"""Complete native adapter controls; expected results are asserted in Sounio."""

from humaneval_to_sounio import Expression, coerce
from sounio_types import EFFECTS, Type, parse_type, runtime


def program(annotation, body):
    return runtime([annotation if isinstance(annotation, Type) else parse_type(annotation)]) + "\nfn main() -> i64" + EFFECTS + " {\n" + body + "\n0\n}\n"


def controls():
    cases = []
    # Native-word storage controls are internal-runtime tests, not the int ABI.
    cases.append(("dynamic_list_and_aliases", program(Type("list", (Type("i64"),)), """
let value = mp_list_i64_new()
let alias = value
var i: i64 = 0
while i < 1025 { mp_list_i64_push(value, i); i = i + 1 }
assert(mp_list_i64_len(alias) == 1025)
assert(mp_list_i64_get(alias, 0) == 0)
assert(mp_list_i64_get(alias, -1) == 1024)
mp_list_i64_set(alias, 0, -7)
assert(mp_list_i64_get(value, 0) == -7)
let copied = mp_list_i64_copy(value)
mp_list_i64_set(copied, 0, 123)
assert(mp_list_i64_get(value, 0) == -7)
assert(!mp_list_i64_eq(value, copied))
let tail = mp_list_i64_slice(value, -2, 2000)
assert(mp_list_i64_len(tail) == 2)
assert(mp_list_i64_get(tail, 0) == 1023)
let sorted = mp_list_i64_new()
mp_list_i64_push(sorted, 7)
mp_list_i64_push(sorted, -3)
mp_list_i64_push(sorted, 1)
mp_list_i64_sort(sorted)
assert(mp_list_i64_get(sorted, 0) == -3)
assert(mp_list_i64_get(sorted, 2) == 7)
assert(mp_list_i64_pop(sorted) == 7)
assert(mp_list_i64_len(sorted) == 2)
"""), "OK"))
    floats = coerce(Expression("list", children=(Expression("literal", -2), Expression("literal", 0.5))), "List[float]")
    cases.append(("float_list", program("List[float]", f"""
let value = {floats}
assert(mp_list_f64_get(value, 0) == -2.0)
assert(mp_list_f64_get(value, 1) == 0.5)
let other = mp_list_f64_copy(value)
assert(mp_list_f64_eq(value, other))
mp_list_f64_set(other, 1, 0.25)
assert(!mp_list_f64_eq(value, other))
"""), "OK"))
    text = coerce(Expression("literal", "é🚀e\u0301"), "str")
    rocket = coerce(Expression("literal", "🚀"), "str")
    decomposed = coerce(Expression("literal", "e\u0301"), "str")
    composed = coerce(Expression("literal", "é"), "str")
    odd = coerce(Expression("literal", '"\x00\\\n'), "str")
    cases.append(("unicode_strings", program("str", f"""
let value = {text}
assert(mp_str_len(value) == 4)
assert(mp_str_codepoint(value, 1) == 128640)
assert(mp_str_eq(mp_str_get(value, 1), {rocket}))
assert(mp_str_eq(mp_str_slice(value, -2, 4), {decomposed}))
assert(!mp_str_eq({decomposed}, {composed}))
let odd = {odd}
assert(mp_str_len(odd) == 4)
assert(mp_str_codepoint(odd, 1) == 0)
let appended = mp_str_concat(value, odd)
assert(mp_str_len(appended) == 8)
assert(mp_str_len(value) == 4)
assert(mp_str_starts_with(value, {composed}))
"""), "OK"))
    # Expected strings are fixed conformance fixtures, not Python case results.
    casing = []
    for index, (original, expected) in enumerate((
        ("ΟΣ", "ος"), ("ΟΣΑ", "οσα"), ("ßİﬃ", "SSi\u0307FFI"),
        ("\u0345Σ", "Ισ"), ("aΣ\u0345", "AςΙ"),
        ("aΣ\u0301B", "Aσ\u0301b"), ("aΣ'", "Aς'"),
        ("aΣ'B", "Aσ'b"), ("ǅ\x00🚀𐐀𐐨", "ǅ\x00🚀𐐨𐐀"), ("", ""),
    )):
        source = coerce(Expression("literal", original), "str")
        target = coerce(Expression("literal", expected), "str")
        casing.append(f"let input{index} = {source}\nassert(mp_str_eq(mp_str_swapcase(input{index}), {target}))\nassert(mp_str_eq(input{index}, {source}))")
    cases.append(("unicode_swapcase", program("str", "\n".join(casing)), "OK"))
    key_a = coerce(Expression("literal", "a"), "str")
    key_b = coerce(Expression("literal", "🚀"), "str")
    cases.append(("dictionary_order_and_replacement", program(Type("dict", (Type("str"), Type("i64"))), f"""
let a = mp_dict_str_i64_new()
let b = mp_dict_str_i64_new()
mp_dict_str_i64_set(a, {key_a}, 1)
mp_dict_str_i64_set(a, {key_b}, 2)
mp_dict_str_i64_set(b, {key_b}, 2)
mp_dict_str_i64_set(b, {key_a}, 1)
assert(mp_dict_str_i64_eq(a, b))
mp_dict_str_i64_set(b, {key_a}, 9)
assert(mp_dict_str_i64_len(b) == 2)
assert(!mp_dict_str_i64_eq(a, b))
assert(mp_dict_str_i64_get(b, {key_a}) == 9)
let keys = mp_dict_str_i64_keys(a)
assert(mp_list_str_len(keys) == 2)
assert(mp_str_eq(mp_list_str_get(keys, 0), {key_a}))
"""), "OK"))
    option_tuple = Type("tuple", (Type("option", (Type("i64"),)), Type("option", (Type("f64"),))))
    tuple_value = Expression("tuple", children=(Expression("literal", -2), Expression("literal", -1.25)))
    none_value = Expression("tuple", children=(Expression("literal", None), Expression("literal", None)))
    cases.append(("optional_tuple", program(option_tuple, f"""
let value = {coerce(tuple_value, option_tuple)}
let other = {coerce(none_value, option_tuple)}
assert(mp_option_i64_get(mp_tuple2_option_i64_option_f64_get_0(value)) == -2)
assert(mp_option_f64_get(mp_tuple2_option_i64_option_f64_get_1(value)) == -1.25)
assert(!mp_tuple2_option_i64_option_f64_eq(value, other))
assert(!mp_option_i64_eq(mp_option_i64_none(), mp_option_i64_some(0)))
"""), "OK"))
    nested = "List[Tuple[str, List[float]]]"
    nested_value = Expression("list", children=(Expression("tuple", children=(
        Expression("literal", "🚀"), Expression("list", children=(Expression("literal", 0.5),))
    )),))
    cases.append(("nested_containers", program(nested, f"""
let value = {coerce(nested_value, nested)}
let pair = mp_list_tuple2_str_list_f64_get(value, 0)
assert(mp_str_eq(mp_tuple2_str_list_f64_get_0(pair), {key_b}))
let floats = mp_tuple2_str_list_f64_get_1(pair)
assert(mp_list_f64_len(floats) == 1)
assert(mp_list_f64_get(floats, 0) == 0.5)
"""), "OK"))
    cases.append(("set_unique_and_orderless", program("Set[str]", f"""
let a = mp_set_str_new()
let b = mp_set_str_new()
mp_set_str_add(a, {key_a})
mp_set_str_add(a, {key_a})
mp_set_str_add(a, {key_b})
mp_set_str_add(b, {key_b})
mp_set_str_add(b, {key_a})
assert(mp_set_str_len(a) == 2)
assert(mp_set_str_eq(a, b))
"""), "OK"))
    cases.append(("out_of_bounds_refused", program(Type("list", (Type("i64"),)), """
let value = mp_list_i64_new()
mp_list_i64_push(value, 7)
let invalid = mp_list_i64_get(value, 1)
assert(invalid == 0)
"""), "Exception"))
    first = parse_type("Tuple[Tuple[int, int], int, int]")
    second = parse_type("Tuple[Tuple[int, int, int], int]")
    first_value = Expression("tuple", children=(Expression("tuple", children=(
        Expression("literal", 1), Expression("literal", 2))), Expression("literal", 3), Expression("literal", 4)))
    second_value = Expression("tuple", children=(Expression("tuple", children=(
        Expression("literal", 1), Expression("literal", 2), Expression("literal", 3))), Expression("literal", 4)))
    source = runtime([first, second]) + "\nfn main() -> i64" + EFFECTS + " {\n"
    source += f"let first = {coerce(first_value, first)}\nlet second = {coerce(second_value, second)}\n"
    source += f"assert(mp_bigint_eq({first.prefix}_get_2(first), mp_bigint_from_i64(4)))\nassert(mp_bigint_eq({second.prefix}_get_1(second), mp_bigint_from_i64(4)))\n0\n}}\n"
    cases.append(("nested_tuple_type_identity", source, "OK"))
    bigint = Type("bigint")
    expected = coerce(Expression("literal", 6775685320645824322581483068371419745979053216268760300), bigint)
    boundary = coerce(Expression("literal", -9223372036854775808), bigint)
    big_body = f"""
let minimum = {boundary}
let beyond = mp_bigint_neg(minimum)
assert(mp_bigint_lt(minimum, mp_bigint_from_i64(0)))
assert(mp_bigint_eq(mp_bigint_add(minimum, beyond), mp_bigint_new()))
assert(mp_bigint_eq(mp_bigint_sub(mp_bigint_from_i64(7), mp_bigint_from_i64(10)), mp_bigint_from_i64(-3)))
let product = mp_bigint_mul(mp_bigint_from_i64(-1000000000), mp_bigint_from_i64(1000000000))
assert(mp_bigint_eq(product, mp_bigint_from_i64(-1000000000000000000)))
let initial = mp_list_bigint_new()
mp_list_bigint_push(initial, mp_bigint_from_i64(1))
var row = initial
var i: i64 = 1
while i <= 56 {{
    let next = mp_list_bigint_new()
    mp_list_bigint_push(next, mp_list_bigint_get(row, -1))
    var j: i64 = 1
    while j <= i {{
        mp_list_bigint_push(next, mp_bigint_add(mp_list_bigint_get(next, j - 1), mp_list_bigint_get(row, j - 1)))
        j = j + 1
    }}
    row = next
    i = i + 1
}}
assert(mp_bigint_eq(mp_list_bigint_get(row, 0), {expected}))
assert(!mp_bigint_eq(mp_list_bigint_get(row, 0), mp_bigint_from_i64(115975)))
"""
    cases.append(("exact_bigint_bell56", runtime([bigint]) + "\nfn main() -> i64" + EFFECTS + " {\n" + big_body + "\n0\n}\n", "OK"))
    cases.append(("bigint_signed_division", program(bigint, """
var a: i64 = -12
while a <= 12 {
    var b: i64 = -9
    while b <= 9 {
        if b != 0 {
            var q = a / b
            var r = a % b
            if r != 0 { if (r < 0) != (b < 0) { q = q - 1; r = r + b } }
            let pair = mp_bigint_divmod(mp_bigint_from_i64(a), mp_bigint_from_i64(b))
            assert(mp_bigint_eq(pair.quotient, mp_bigint_from_i64(q)))
            assert(mp_bigint_eq(pair.remainder, mp_bigint_from_i64(r)))
        }
        b = b + 1
    }
    a = a + 1
}
let base = mp_bigint_from_i64(1000000000)
let divisor = mp_bigint_add(mp_bigint_mul(base, base), mp_bigint_from_i64(37))
let quotient = mp_bigint_add(mp_bigint_mul(divisor, base), mp_bigint_from_i64(19))
let remainder = mp_bigint_sub(divisor, mp_bigint_from_i64(1))
let dividend = mp_bigint_add(mp_bigint_mul(divisor, quotient), remainder)
let pair = mp_bigint_divmod(dividend, divisor)
assert(mp_bigint_eq(pair.quotient, quotient))
assert(mp_bigint_eq(pair.remainder, remainder))
let opposite = mp_bigint_divmod(mp_bigint_neg(dividend), divisor)
assert(mp_bigint_eq(opposite.quotient, mp_bigint_sub(mp_bigint_neg(quotient), mp_bigint_from_i64(1))))
assert(mp_bigint_eq(opposite.remainder, mp_bigint_from_i64(1)))
assert(mp_bigint_eq(mp_bigint_add(mp_bigint_mul(opposite.quotient, divisor), opposite.remainder), mp_bigint_neg(dividend)))
assert(mp_bigint_eq(mp_bigint_floordiv(mp_bigint_mul(divisor, quotient), divisor), quotient))
assert(mp_bigint_eq(dividend, mp_bigint_add(mp_bigint_mul(divisor, quotient), remainder)))
assert(mp_bigint_to_i64(mp_bigint_from_i64(9223372036854775807)) == 9223372036854775807)
let minimum = 0 - 9223372036854775807 - 1
assert(mp_bigint_to_i64(mp_bigint_from_i64(minimum)) == minimum)
assert(mp_bigint_to_f64(mp_bigint_from_i64(9007199254740993)) == 9007199254740992.0)
assert(mp_bigint_to_f64(mp_bigint_from_i64(9007199254740995)) == 9007199254740996.0)
assert(mp_bigint_to_f64(mp_bigint_from_i64(-9007199254740995)) == -9007199254740996.0)
"""), "OK"))
    cases.append(("bigint_zero_division_refused", program(bigint, """
let invalid = mp_bigint_floordiv(mp_bigint_from_i64(1), mp_bigint_new())
assert(mp_bigint_eq(invalid, mp_bigint_new()))
"""), "Exception"))
    cases.append(("bigint_positive_index_overflow_refused", program(bigint, """
let too_large = mp_bigint_neg(mp_bigint_from_i64(0 - 9223372036854775807 - 1))
let invalid = mp_bigint_to_i64(too_large)
assert(invalid == 0)
"""), "Exception"))
    cases.append(("bigint_negative_index_overflow_refused", program(bigint, """
let too_small = mp_bigint_sub(mp_bigint_from_i64(0 - 9223372036854775807 - 1), mp_bigint_from_i64(1))
let invalid = mp_bigint_to_i64(too_small)
assert(invalid == 0)
"""), "Exception"))
    schema = parse_type("Dict[int, List[Optional[int]]]")
    nested_value = Expression("dict", children=((Expression("literal", 100000000000000000000),
        Expression("list", children=(Expression("literal", -100000000000000000000), Expression("literal", None)))),))
    cases.append(("uniform_bigint_nested_interface", program(schema, f"""
let value = {coerce(nested_value, schema)}
let key = {coerce(Expression('literal', 100000000000000000000), bigint)}
let items = mp_dict_bigint_list_option_bigint_get(value, key)
assert(mp_list_option_bigint_len(items) == 2)
assert(mp_bigint_eq(mp_option_bigint_get(mp_list_option_bigint_get(items, 0)), mp_bigint_neg(key)))
assert(!mp_option_bigint_is_some(mp_list_option_bigint_get(items, 1)))
"""), "OK"))
    return cases
