"""Executable Sounio reference bodies, never Python benchmark oracles.

Unicode swapcase uses the version-pinned native runtime, including expansions
and original-text Final_Sigma context. No Python case algorithm is executed.
"""

BODIES = {
    3: """
var balance = mp_bigint_new()
var i: i64 = 0
while i < mp_list_bigint_len(operations) {
    balance = mp_bigint_add(balance, mp_list_bigint_get(operations, i))
    if mp_bigint_lt(balance, mp_bigint_new()) { return true }
    i = i + 1
}
false
""",
    8: """
var total = mp_bigint_new()
var product = mp_bigint_from_i64(1)
var i: i64 = 0
while i < mp_list_bigint_len(numbers) {
    let value = mp_list_bigint_get(numbers, i)
    total = mp_bigint_add(total, value)
    product = mp_bigint_mul(product, value)
    i = i + 1
}
mp_tuple2_bigint_bigint_new(total, product)
""",
    9: """
let result = mp_list_bigint_new()
var current = mp_bigint_new()
var i: i64 = 0
while i < mp_list_bigint_len(numbers) {
    let value = mp_list_bigint_get(numbers, i)
    if i == 0 { current = value }
    else { if mp_bigint_lt(current, value) { current = value } }
    mp_list_bigint_push(result, current)
    i = i + 1
}
result
""",
    13: """
var x = a
var y = b
while !mp_bigint_eq(y, mp_bigint_new()) {
    let previous = y
    y = mp_bigint_mod(x, y)
    x = previous
}
x
""",
    14: """
let result = mp_list_str_new()
var i: i64 = 1
while i <= mp_str_len(string) {
    mp_list_str_push(result, mp_str_slice(string, 0, i))
    i = i + 1
}
result
""",
    15: """
var result = mp_str_new()
var i: i64 = 0
while !mp_bigint_lt(n, mp_bigint_from_i64(i)) {
    if i > 0 { result = mp_str_concat(result, mp_str_from_codepoint(32)) }
    let reversed = mp_str_new()
    var remaining = i
    if remaining == 0 { mp_seq_push(reversed.handle, 48) }
    while remaining > 0 {
        mp_seq_push(reversed.handle, 48 + remaining % 10)
        remaining = remaining / 10
    }
    var digit = mp_str_len(reversed) - 1
    while digit >= 0 {
        result = mp_str_concat(result, mp_str_get(reversed, digit))
        digit = digit - 1
    }
    i = i + 1
}
result
""",
    18: """
var count: i64 = 0
var i: i64 = 0
let width = mp_str_len(substring)
while i + width <= mp_str_len(string) {
    if mp_str_eq(mp_str_slice(string, i, i + width), substring) { count = count + 1 }
    i = i + 1
}
mp_bigint_from_i64(count)
""",
    21: """
let result = mp_list_f64_new()
var low = mp_list_f64_get(numbers, 0)
var high = low
var i: i64 = 1
while i < mp_list_f64_len(numbers) {
    let value = mp_list_f64_get(numbers, i)
    if value < low { low = value }
    if value > high { high = value }
    i = i + 1
}
let span = high - low
i = 0
while i < mp_list_f64_len(numbers) {
    mp_list_f64_push(result, (mp_list_f64_get(numbers, i) - low) / span)
    i = i + 1
}
result
""",
    23: "mp_bigint_from_i64(mp_str_len(string))",
    24: """
var i = mp_bigint_sub(n, mp_bigint_from_i64(1))
while mp_bigint_lt(mp_bigint_new(), i) {
    if mp_bigint_eq(mp_bigint_mod(n, i), mp_bigint_new()) { return i }
    i = mp_bigint_sub(i, mp_bigint_from_i64(1))
}
mp_bigint_from_i64(1)
""",
    26: """
let result = mp_list_bigint_new()
var i: i64 = 0
while i < mp_list_bigint_len(numbers) {
    let value = mp_list_bigint_get(numbers, i)
    var count: i64 = 0
    var j: i64 = 0
    while j < mp_list_bigint_len(numbers) {
        if mp_bigint_eq(mp_list_bigint_get(numbers, j), value) { count = count + 1 }
        j = j + 1
    }
    if count == 1 { mp_list_bigint_push(result, value) }
    i = i + 1
}
result
""",
    27: "mp_str_swapcase(string)",
    28: """
var result = mp_str_new()
var i: i64 = 0
while i < mp_list_str_len(strings) {
    result = mp_str_concat(result, mp_list_str_get(strings, i))
    i = i + 1
}
result
""",
    29: """
let result = mp_list_str_new()
var i: i64 = 0
while i < mp_list_str_len(strings) {
    let value = mp_list_str_get(strings, i)
    if mp_str_starts_with(value, prefix) { mp_list_str_push(result, value) }
    i = i + 1
}
result
""",
    30: """
let result = mp_list_bigint_new()
var i: i64 = 0
while i < mp_list_bigint_len(l) {
    let value = mp_list_bigint_get(l, i)
    if mp_bigint_lt(mp_bigint_new(), value) { mp_list_bigint_push(result, value) }
    i = i + 1
}
result
""",
    31: """
if mp_bigint_lt(n, mp_bigint_from_i64(2)) { return false }
var i = mp_bigint_from_i64(2)
while !mp_bigint_lt(mp_bigint_floordiv(n, i), i) {
    if mp_bigint_eq(mp_bigint_mod(n, i), mp_bigint_new()) { return false }
    i = mp_bigint_add(i, mp_bigint_from_i64(1))
}
true
""",
    45: "mp_bigint_to_f64(mp_bigint_mul(a, h)) / 2.0",
    111: """
let counts = mp_dict_str_bigint_new()
let result = mp_dict_str_bigint_new()
var begin: i64 = 0
var i: i64 = 0
while i <= mp_str_len(test) {
    var boundary = i == mp_str_len(test)
    if !boundary { boundary = mp_str_codepoint(test, i) == 32 }
    if boundary {
        if i > begin {
            let word = mp_str_slice(test, begin, i)
            var count = mp_bigint_new()
            if mp_dict_str_bigint_contains(counts, word) { count = mp_dict_str_bigint_get(counts, word) }
            mp_dict_str_bigint_set(counts, word, mp_bigint_add(count, mp_bigint_from_i64(1)))
        }
        begin = i + 1
    }
    i = i + 1
}
var maximum = mp_bigint_new()
i = 0
while i < mp_dict_str_bigint_len(counts) {
    let count = mp_dict_str_bigint_value_at(counts, i)
    if mp_bigint_lt(maximum, count) { maximum = count }
    i = i + 1
}
i = 0
while i < mp_dict_str_bigint_len(counts) {
    let count = mp_dict_str_bigint_value_at(counts, i)
    if mp_bigint_eq(count, maximum) { mp_dict_str_bigint_set(result, mp_dict_str_bigint_key_at(counts, i), count) }
    i = i + 1
}
result
""",
    120: """
let sorted = mp_list_bigint_copy(arr)
mp_list_bigint_sort(sorted)
// Compare before conversion: an arbitrarily large k means the whole list.
let length = mp_list_bigint_len(sorted)
if !mp_bigint_lt(k, mp_bigint_from_i64(length)) { return sorted }
mp_list_bigint_slice(sorted, length - mp_bigint_to_i64(k), length)
""",
    136: """
var negative = mp_option_bigint_none()
var positive = mp_option_bigint_none()
var i: i64 = 0
while i < mp_list_bigint_len(lst) {
    let value = mp_list_bigint_get(lst, i)
    if mp_bigint_lt(value, mp_bigint_new()) {
        if mp_option_bigint_is_some(negative) {
            if mp_bigint_lt(mp_option_bigint_get(negative), value) { negative = mp_option_bigint_some(value) }
        } else { negative = mp_option_bigint_some(value) }
    }
    if mp_bigint_lt(mp_bigint_new(), value) {
        if mp_option_bigint_is_some(positive) {
            if mp_bigint_lt(value, mp_option_bigint_get(positive)) { positive = mp_option_bigint_some(value) }
        } else { positive = mp_option_bigint_some(value) }
    }
    i = i + 1
}
mp_tuple2_option_bigint_option_bigint_new(negative, positive)
""",
}

MBPP_BODIES = {
    67: """
let initial = mp_list_bigint_new()
mp_list_bigint_push(initial, mp_bigint_from_i64(1))
var row = initial
var i: i64 = 1
while !mp_bigint_lt(n, mp_bigint_from_i64(i)) {
    let next = mp_list_bigint_new()
    mp_list_bigint_push(next, mp_list_bigint_get(row, -1))
    var j: i64 = 1
    while j <= i {
        mp_list_bigint_push(next, mp_bigint_add(mp_list_bigint_get(next, j - 1), mp_list_bigint_get(row, j - 1)))
        j = j + 1
    }
    row = next
    i = i + 1
}
mp_list_bigint_get(row, 0)
""",
}
