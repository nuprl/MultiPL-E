"""Type-directed, monomorphic adapters for the pinned native Sounio runtime.

This module generates source; it does not execute benchmark algorithms or
compute reference answers. Compound values use stable, heap-backed handles.
"""

import ast
from dataclasses import dataclass
from pathlib import Path


EFFECTS = " with Alloc, Mut, Panic, Div"


@dataclass(frozen=True)
class Type:
    kind: str
    args: tuple = ()

    @property
    def stem(self):
        tag = self.kind + str(len(self.args)) if self.kind == "tuple" else self.kind
        return "_".join((tag, *(arg.stem for arg in self.args)))

    @property
    def code(self):
        if self.kind in ("i64", "f64", "bool"):
            return self.kind
        return "MP" + "".join(part.capitalize() for part in self.stem.split("_"))

    @property
    def prefix(self):
        return "mp_" + self.stem


def parse_type(node):
    if isinstance(node, str):
        node = ast.parse(node, mode="eval").body
    if isinstance(node, ast.Name):
        # A fixed annotation-only contract: test values never select types.
        names = {"int": "bigint", "float": "f64", "bool": "bool", "str": "str"}
        if node.id in names:
            return Type(names[node.id])
        raise ValueError(f"Unsupported Sounio annotation: {node.id}")
    if isinstance(node, ast.Subscript) and isinstance(node.value, ast.Name):
        kinds = {"List": ("list", 1), "Tuple": ("tuple", None),
                 "Dict": ("dict", 2), "Optional": ("option", 1), "Set": ("set", 1)}
        if node.value.id not in kinds:
            raise ValueError(f"Unsupported Sounio generic: {node.value.id}")
        kind, arity = kinds[node.value.id]
        nodes = node.slice.elts if isinstance(node.slice, ast.Tuple) else [node.slice]
        if arity is not None and len(nodes) != arity:
            raise ValueError(f"Invalid arity for {node.value.id}")
        if not nodes:
            raise ValueError("Empty tuple annotations are unsupported")
        result = Type(kind, tuple(parse_type(child) for child in nodes))
        if kind in ("dict", "set") and not hashable_type(result.args[0]):
            raise ValueError("Python dictionary keys and set elements must be hashable")
        return result
    raise ValueError(f"Unsupported Sounio annotation: {ast.dump(node) if node else None}")


def hashable_type(type_):
    if type_.kind in ("i64", "bigint", "f64", "bool", "str"):
        return True
    return type_.kind in ("tuple", "option") and all(hashable_type(child) for child in type_.args)


def to_word(type_, value):
    if type_.kind == "i64":
        return value
    if type_.kind == "f64":
        return f"mp_float_word({value})"
    if type_.kind == "bool":
        return f"(if {value} {{ 1 }} else {{ 0 }})"
    return f"({value}).handle"


def from_word(type_, value):
    if type_.kind == "i64":
        return value
    if type_.kind == "f64":
        return f"mp_word_float({value})"
    if type_.kind == "bool":
        return f"({value} != 0)"
    return f"{type_.code} {{ handle: {value} }}"


def equal(type_, left, right):
    if type_.kind in ("i64", "f64", "bool"):
        return f"({left} == {right})"
    return f"{type_.prefix}_eq({left}, {right})"


def ordered(type_):
    return type_.kind in ("i64", "bigint", "f64", "bool", "str") or (
        type_.kind in ("list", "tuple") and all(ordered(t) for t in type_.args)
    )


def less(type_, left, right):
    if type_.kind in ("i64", "f64"):
        return f"({left} < {right})"
    if type_.kind == "bool":
        return f"(!{left} && {right})"
    return f"{type_.prefix}_lt({left}, {right})"


def function(name, parameters, result, body):
    params = ", ".join(f"{name}: {type_}" for name, type_ in parameters)
    returns = "" if result is None else " -> " + result
    lines = "\n".join("    " + line for line in body.splitlines())
    return f"fn {name}({params}){returns}{EFFECTS} {{\n{lines}\n}}\n"


def runtime(roots):
    roots = list(roots)
    def has_bigint(type_):
        return type_.kind == "bigint" or any(has_bigint(child) for child in type_.args)
    if any(has_bigint(root) for root in roots):
        roots.append(Type("list", (Type("bigint"),)))
    visited = set()
    types = []

    def visit(type_):
        if type_ in visited:
            return
        visited.add(type_)
        for child in type_.args:
            visit(child)
        if type_.kind == "dict":
            for child in type_.args:
                visit(Type("list", (child,)))
        types.append(type_)

    for root in roots:
        visit(root)
    compound = [t for t in types if t.kind not in ("i64", "f64", "bool")]
    if not compound:
        return ""
    parts = [Path(__file__).with_name("sounio_runtime.sio").read_text()]
    for type_ in compound:
        parts.append(f"\n// {type_.stem}: process-lifetime heap value; no fixed capacity.\n")
        parts.append(f"struct {type_.code} {{ handle: i64 }}\n")
        parts.extend(adapters(type_))
    return "\n".join(parts) + "\n"


def adapters(type_):
    p, code = type_.prefix, type_.code
    output = []

    def emit(suffix, parameters, result, body):
        output.append(function(p + "_" + suffix, parameters, result, body))

    if type_.kind == "bigint":
        return [Path(__file__).with_name("sounio_bigint.sio.in").read_text()]

    if type_.kind in ("str", "list", "set", "dict"):
        emit("new", [], code, f"{code} {{ handle: mp_seq_new() }}")
        length = "mp_seq_len(value.handle)"
        if type_.kind == "dict":
            length += " / 2"
        emit("len", [("value", code)], "i64", length)

    if type_.kind == "str":
        emit("codepoint", [("value", code), ("index", "i64")], "i64",
             "mp_seq_get(value.handle, index)")
        emit("from_codepoint", [("point", "i64")], code,
             "assert(point >= 0)\nassert(point <= 1114111)\n"
             f"let result = {p}_new()\nmp_seq_push(result.handle, point)\nresult")
        emit("eq", [("a", code), ("b", code)], "bool", "mp_seq_equal(a.handle, b.handle)")
        emit("lt", [("a", code), ("b", code)], "bool",
             "let al = mp_seq_len(a.handle)\nlet bl = mp_seq_len(b.handle)\nvar i: i64 = 0\n"
             "while i < al {\n    if i >= bl { return false }\n"
             "    let av = mp_seq_get(a.handle, i)\n    let bv = mp_seq_get(b.handle, i)\n"
             "    if av < bv { return true }\n    if av > bv { return false }\n    i = i + 1\n}\nal < bl")
        emit("concat", [("a", code), ("b", code)], code,
             f"let result = {code} {{ handle: mp_seq_copy(a.handle) }}\nvar i: i64 = 0\n"
             "while i < mp_seq_len(b.handle) {\n    mp_seq_push(result.handle, mp_seq_get(b.handle, i))\n"
             "    i = i + 1\n}\nresult")
        emit("slice", [("value", code), ("start", "i64"), ("stop", "i64")], code,
             _slice_body(type_))
        emit("get", [("value", code), ("index", "i64")], code,
             f"{p}_from_codepoint(mp_seq_get(value.handle, index))")
        emit("starts_with", [("value", code), ("prefix", code)], "bool",
             "let length = mp_seq_len(prefix.handle)\n"
             "if length > mp_seq_len(value.handle) { return false }\nvar i: i64 = 0\n"
             "while i < length {\n    if mp_seq_get(value.handle, i) != mp_seq_get(prefix.handle, i) { return false }\n"
             "    i = i + 1\n}\ntrue")
        output.append(Path(__file__).with_name("sounio_unicode.sio.in").read_text())
        return output

    if type_.kind in ("list", "set"):
        element = type_.args[0]
        emit("get", [("value", code), ("index", "i64")], element.code,
             from_word(element, "mp_seq_get(value.handle, index)"))
        emit("contains", [("value", code), ("item", element.code)], "bool",
             "var i: i64 = 0\nwhile i < mp_seq_len(value.handle) {\n"
             f"    if {equal(element, p + '_get(value, i)', 'item')} {{ return true }}\n"
             "    i = i + 1\n}\nfalse")
        if type_.kind == "set":
            emit("add", [("value", code), ("item", element.code)], None,
                 f"if !{p}_contains(value, item) {{ mp_seq_push(value.handle, {to_word(element, 'item')}) }}")
            emit("eq", [("a", code), ("b", code)], "bool",
                 "if mp_seq_len(a.handle) != mp_seq_len(b.handle) { return false }\nvar i: i64 = 0\n"
                 f"while i < mp_seq_len(a.handle) {{\n    if !{p}_contains(b, {p}_get(a, i)) {{ return false }}\n"
                 "    i = i + 1\n}\ntrue")
            return output
        emit("push", [("value", code), ("item", element.code)], None,
             f"mp_seq_push(value.handle, {to_word(element, 'item')})")
        emit("set", [("value", code), ("index", "i64"), ("item", element.code)], None,
             f"mp_seq_set(value.handle, index, {to_word(element, 'item')})")
        emit("pop", [("value", code)], element.code,
             "let word = mp_seq_get(value.handle, -1)\n"
             "mp_header_set(value.handle, 1, mp_seq_len(value.handle) - 1)\n" + from_word(element, "word"))
        emit("copy", [("value", code)], code, f"{code} {{ handle: mp_seq_copy(value.handle) }}")
        emit("slice", [("value", code), ("start", "i64"), ("stop", "i64")], code,
             _slice_body(type_))
        emit("eq", [("a", code), ("b", code)], "bool",
             "if mp_seq_len(a.handle) != mp_seq_len(b.handle) { return false }\nvar i: i64 = 0\n"
             f"while i < mp_seq_len(a.handle) {{\n    if !{equal(element, p + '_get(a, i)', p + '_get(b, i)')} {{ return false }}\n"
             "    i = i + 1\n}\ntrue")
        if ordered(element):
            emit("lt", [("a", code), ("b", code)], "bool",
                 "let al = mp_seq_len(a.handle)\nlet bl = mp_seq_len(b.handle)\nvar i: i64 = 0\n"
                 "while i < al {\n    if i >= bl { return false }\n"
                 f"    let av = {p}_get(a, i)\n    let bv = {p}_get(b, i)\n"
                 f"    if {less(element, 'av', 'bv')} {{ return true }}\n"
                 f"    if {less(element, 'bv', 'av')} {{ return false }}\n    i = i + 1\n}}\nal < bl")
            emit("sort", [("value", code)], None,
                 "var i: i64 = 1\nwhile i < mp_seq_len(value.handle) {\n    var j = i\n"
                 f"    while j > 0 {{\n        let a = {p}_get(value, j)\n        let b = {p}_get(value, j - 1)\n"
                 f"        if !{less(element, 'a', 'b')} {{ break }}\n"
                 f"        {p}_set(value, j - 1, a)\n        {p}_set(value, j, b)\n        j = j - 1\n"
                 "    }\n    i = i + 1\n}")
        return output

    if type_.kind == "tuple":
        parameters = [(f"a{i}", child.code) for i, child in enumerate(type_.args)]
        body = [f"let result = {code} {{ handle: mp_seq_new() }}"]
        body += [f"mp_seq_push(result.handle, {to_word(child, 'a' + str(i))})"
                 for i, child in enumerate(type_.args)]
        emit("new", parameters, code, "\n".join(body + ["result"]))
        comparisons = []
        for i, child in enumerate(type_.args):
            emit(f"get_{i}", [("value", code)], child.code,
                 from_word(child, f"mp_seq_get(value.handle, {i})"))
            comparisons.append(f"if !{equal(child, p + '_get_' + str(i) + '(a)', p + '_get_' + str(i) + '(b)')} {{ return false }}")
        emit("eq", [("a", code), ("b", code)], "bool", "\n".join(comparisons + ["true"]))
        if ordered(type_):
            body = []
            for i, child in enumerate(type_.args):
                left, right = f"{p}_get_{i}(a)", f"{p}_get_{i}(b)"
                body += [f"if {less(child, left, right)} {{ return true }}",
                         f"if {less(child, right, left)} {{ return false }}"]
            emit("lt", [("a", code), ("b", code)], "bool", "\n".join(body + ["false"]))
        return output

    if type_.kind == "option":
        child = type_.args[0]
        for suffix, tag, value, parameters in (
            ("none", "0", "0", []),
            ("some", "1", to_word(child, "value"), [("value", child.code)]),
        ):
            emit(suffix, parameters, code, f"let result = {code} {{ handle: mp_seq_new() }}\n"
                 f"mp_seq_push(result.handle, {tag})\nmp_seq_push(result.handle, {value})\nresult")
        emit("is_some", [("value", code)], "bool", "mp_seq_get(value.handle, 0) == 1")
        emit("get", [("value", code)], child.code,
             f"assert({p}_is_some(value))\n" + from_word(child, "mp_seq_get(value.handle, 1)"))
        emit("eq", [("a", code), ("b", code)], "bool",
             f"if {p}_is_some(a) != {p}_is_some(b) {{ return false }}\n"
             f"if !{p}_is_some(a) {{ return true }}\n" + equal(child, p + "_get(a)", p + "_get(b)"))
        return output

    if type_.kind == "dict":
        key, value = type_.args
        emit("key_at", [("value", code), ("index", "i64")], key.code,
             from_word(key, "mp_seq_get(value.handle, index * 2)"))
        emit("value_at", [("value", code), ("index", "i64")], value.code,
             from_word(value, "mp_seq_get(value.handle, index * 2 + 1)"))
        emit("find", [("value", code), ("key", key.code)], "i64",
             f"var i: i64 = 0\nwhile i < {p}_len(value) {{\n"
             f"    if {equal(key, p + '_key_at(value, i)', 'key')} {{ return i }}\n"
             "    i = i + 1\n}\n-1")
        emit("get", [("value", code), ("key", key.code)], value.code,
             f"let index = {p}_find(value, key)\nassert(index >= 0)\n{p}_value_at(value, index)")
        emit("contains", [("value", code), ("key", key.code)], "bool", f"{p}_find(value, key) >= 0")
        emit("set", [("value", code), ("key", key.code), ("item", value.code)], None,
             f"let index = {p}_find(value, key)\nif index >= 0 {{\n"
             f"    mp_seq_set(value.handle, index * 2 + 1, {to_word(value, 'item')})\n}} else {{\n"
             f"    mp_seq_push(value.handle, {to_word(key, 'key')})\n"
             f"    mp_seq_push(value.handle, {to_word(value, 'item')})\n}}")
        for suffix, child, getter in (("keys", key, "key_at"), ("values", value, "value_at")):
            list_ = Type("list", (child,))
            emit(suffix, [("value", code)], list_.code,
                 f"let result = {list_.prefix}_new()\nvar i: i64 = 0\nwhile i < {p}_len(value) {{\n"
                 f"    {list_.prefix}_push(result, {p}_{getter}(value, i))\n    i = i + 1\n}}\nresult")
        emit("eq", [("a", code), ("b", code)], "bool",
             f"if {p}_len(a) != {p}_len(b) {{ return false }}\nvar i: i64 = 0\n"
             f"while i < {p}_len(a) {{\n    let key = {p}_key_at(a, i)\n"
             f"    let index = {p}_find(b, key)\n    if index < 0 {{ return false }}\n"
             f"    if !{equal(value, p + '_value_at(a, i)', p + '_value_at(b, index)')} {{ return false }}\n"
             "    i = i + 1\n}\ntrue")
        return output
    raise ValueError(f"No Sounio adapter for {type_}")


def _slice_body(type_):
    return (
        "let length = mp_seq_len(value.handle)\nvar begin = start\nvar end = stop\n"
        "if begin < 0 { begin = begin + length }\nif end < 0 { end = end + length }\n"
        "if begin < 0 { begin = 0 }\nif end < 0 { end = 0 }\n"
        "if begin > length { begin = length }\nif end > length { end = length }\n"
        f"let result = {type_.prefix}_new()\nvar i = begin\nwhile i < end {{\n"
        "    mp_seq_push(result.handle, mp_seq_get(value.handle, i))\n    i = i + 1\n}\nresult"
    )
