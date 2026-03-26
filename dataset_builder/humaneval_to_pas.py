import ast
from typing import List

TYPE_MAP = {
    "Int64": "TInt64Array",
    "Double": "TDoubleArray",
    "String": "TStringArray",
    "Boolean": "TBooleanArray",
    "TNullableInt64": "TNullableInt64Array",
}

RESERVED = {
    "string", "array", "operator", "type", "set", "file", "record",
    "begin", "end", "function", "procedure", "var", "const", "program",
    "unit", "uses", "label", "goto", "if", "then", "else", "while", "do",
    "for", "to", "repeat", "until", "case", "of", "with", "nil", "not",
    "and", "or", "div", "mod", "in", "is", "as", "class", "object",
}

def escape_id(name: str) -> str:
    if name.lower() in RESERVED:
        return "p_" + name
    return name

PREAMBLE = """\
{$mode objfpc}{$H+}{$C+}
uses SysUtils, Math, fgl;

type
  TInt64Array = array of Int64;
  TDoubleArray = array of Double;
  TBooleanArray = array of Boolean;
  TInt64ArrayArray = array of TInt64Array;
  TDoubleArrayArray = array of TDoubleArray;
  TStringArrayArray = array of TStringArray;
  TBooleanArrayArray = array of TBooleanArray;
  TMapStringString = specialize TFPGMap<String, String>;
  TMapStringInt64 = specialize TFPGMap<String, Int64>;
  TNullableInt64 = record IsNull: Boolean; Value: Int64; end;
  TNullableString = record IsNull: Boolean; Value: String; end;
  TNullableInt64Array = array of TNullableInt64;

function NullableInt64(AValue: Int64): TNullableInt64;
begin Result.IsNull := False; Result.Value := AValue; end;
function NullableString(AValue: String): TNullableString;
begin Result.IsNull := False; Result.Value := AValue; end;
function NullInt64: TNullableInt64;
begin Result.IsNull := True; Result.Value := 0; end;
function NullString: TNullableString;
begin Result.IsNull := True; Result.Value := ''; end;

"""

class Translator:

    stop = ["\nfunction", "\nprocedure", "\n\n"]

    def file_ext(self):
        return "pas"

    def __init__(self):
        self.func_type = []
        self.entry_point = ""
        self.ret_type = ""

    def translate_type(self, t):
        match t:
            case ast.Subscript(ast.Name(id), slice, _ctx):
                match id:
                    case "List":
                        inner = self.translate_type(slice)
                        if inner in TYPE_MAP:
                            return TYPE_MAP[inner]
                        if inner.endswith("Array"):
                            return inner + "Array"
                        return f"array of {inner}"
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                if any(isinstance(e, ast.Constant) and e.value is Ellipsis for e in elts):
                                    non_ellipsis = [e for e in elts if not (isinstance(e, ast.Constant) and e.value is Ellipsis)]
                                    inner = self.translate_type(non_ellipsis[0])
                                    if inner in TYPE_MAP:
                                        return TYPE_MAP[inner]
                                    return f"array of {inner}"
                                tys = list(set(self.translate_type(e) for e in elts))
                                if len(tys) == 1:
                                    if tys[0] in TYPE_MAP:
                                        return TYPE_MAP[tys[0]]
                                    return f"array of {tys[0]}"
                                raise Exception("Heterogeneous tuples not supported")
                            case _other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        match slice:
                            case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                                val = self.translate_type(ast.Name(v))
                                return f"TMapString{val}"
                            case _other:
                                raise Exception(f"Bad dict: {slice}")
                    case "Optional":
                        inner = self.translate_type(slice)
                        if inner == "Int64":
                            return "TNullableInt64"
                        if inner == "String":
                            return "TNullableString"
                        return inner
                    case "Union":
                        raise Exception("Union not supported")
                    case other:
                        raise Exception(f"Unknown generic: {other}")
            case ast.Name("int") | "int":
                return "Int64"
            case ast.Name("float"):
                return "Double"
            case ast.Name("bool"):
                return "Boolean"
            case ast.Name("str") | "str":
                return "String"
            case _other:
                raise Exception(f"Unknown type: {t}")

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str):
        comment = "{ " + description.strip().replace("{", "(").replace("}", ")") + " }\n"
        try:
            self.func_type = [(self.translate_type(arg.annotation), escape_id(arg.arg)) for arg in args]
            self.ret_type = self.translate_type(returns)
            self.func_type.append((self.ret_type, ""))
            arg_parts = [f"{n}: {t}" for t, n in self.func_type[:-1]]
            arg_list = "; ".join(arg_parts)
            return f"{PREAMBLE}{comment}function {name}({arg_list}): {self.ret_type};\n"
        except Exception as e:
            print(e)
            return None

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        self.entry_point = entry_point
        lines = []
        for ty in ["Int64", "String", "Double", "Boolean"]:
            lines += [
                f"operator = (const a, b: array of {ty}) r: Boolean;",
                "var i: Integer;",
                "begin",
                "  if Length(a) <> Length(b) then begin r := False; Exit; end;",
                "  r := True;",
                f"  for i := 0 to High(a) do if a[i] <> b[i] then begin r := False; Exit; end;",
                "end;",
            ]
        for inner in ["TInt64Array", "TDoubleArray", "TStringArray", "TBooleanArray"]:
            lines += [
                f"operator = (const a, b: array of {inner}) r: Boolean;",
                "var i: Integer;",
                "begin",
                "  if Length(a) <> Length(b) then begin r := False; Exit; end;",
                "  r := True;",
                f"  for i := 0 to High(a) do if not (a[i] = b[i]) then begin r := False; Exit; end;",
                "end;",
            ]
        lines += [
            "function MakeMap(keys: TStringArray; values: TStringArray): TMapStringString;",
            "var i: Integer;",
            "begin",
            "  Result := TMapStringString.Create;",
            "  if keys <> nil then",
            "    for i := 0 to High(keys) do Result.Add(keys[i], values[i]);",
            "end;",
            "function MakeMapSI(keys: TStringArray; values: TInt64Array): TMapStringInt64;",
            "var i: Integer;",
            "begin",
            "  Result := TMapStringInt64.Create;",
            "  if keys <> nil then",
            "    for i := 0 to High(keys) do Result.Add(keys[i], values[i]);",
            "end;",
            "function EqualMapSS(const a, b: TMapStringString): Boolean;",
            "var i: Integer;",
            "begin",
            "  if a.Count <> b.Count then begin Result := False; Exit; end;",
            "  Result := True;",
            "  for i := 0 to a.Count - 1 do",
            "    if (a.Keys[i] <> b.Keys[i]) or (a.Data[i] <> b.Data[i]) then begin Result := False; Exit; end;",
            "end;",
            "function EqualMapSI(const a, b: TMapStringInt64): Boolean;",
            "var i: Integer;",
            "begin",
            "  if a.Count <> b.Count then begin Result := False; Exit; end;",
            "  Result := True;",
            "  for i := 0 to a.Count - 1 do",
            "    if (a.Keys[i] <> b.Keys[i]) or (a.Data[i] <> b.Data[i]) then begin Result := False; Exit; end;",
            "end;",
        ]
        lines += [
            "operator = (const a, b: array of TNullableInt64) r: Boolean;",
            "var i: Integer;",
            "begin",
            "  if Length(a) <> Length(b) then begin r := False; Exit; end;",
            "  r := True;",
            "  for i := 0 to High(a) do",
            "    if (a[i].IsNull <> b[i].IsNull) or ((not a[i].IsNull) and (a[i].Value <> b[i].Value)) then begin r := False; Exit; end;",
            "end;",
        ]
        lines += [
            "function EqualNullable(const a, b: TNullableInt64): Boolean;",
            "begin",
            "  if a.IsNull and b.IsNull then begin Result := True; Exit; end;",
            "  if a.IsNull or b.IsNull then begin Result := False; Exit; end;",
            "  Result := a.Value = b.Value;",
            "end;",
            "function EqualNullable(const a, b: TNullableString): Boolean;",
            "begin",
            "  if a.IsNull and b.IsNull then begin Result := True; Exit; end;",
            "  if a.IsNull or b.IsNull then begin Result := False; Exit; end;",
            "  Result := a.Value = b.Value;",
            "end;",
        ]
        lines.append("begin")
        return lines

    def test_suite_suffix_lines(self) -> List[str]:
        return ["end."]

    def _coerce_nullable(self, expr: str, ty: str) -> str:
        if expr == "nil":
            if ty == "TNullableInt64":
                return "NullInt64"
            if ty == "TNullableString":
                return "NullString"
        if ty == "TNullableInt64" and not expr.startswith("Null"):
            return f"NullableInt64({expr})"
        if ty == "TNullableString" and not expr.startswith("Null"):
            return f"NullableString({expr})"
        return expr

    def deep_equality(self, left: str, right: str) -> str:
        if self.ret_type == "TMapStringString":
            return f"  Assert(EqualMapSS({left}, {right}));"
        if self.ret_type == "TMapStringInt64":
            return f"  Assert(EqualMapSI({left}, {right}));"
        right = self._coerce_nullable(right, self.ret_type)
        if self.ret_type in ("TNullableInt64", "TNullableString"):
            return f"  Assert(EqualNullable({left}, {right}));"
        return f"  Assert({left} = {right});"

    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return str(c)
        if type(c) == str:
            escaped = c.replace("'", "''").replace("\n", "' + #10 + '")
            return f"'{escaped}'"
        if c is None:
            return "nil"
        return repr(c)

    def gen_var(self, v: str) -> str:
        return escape_id(v)

    def _infer_element_type(self, elements: List[str]) -> str:
        if not elements:
            return "Int64"
        has_nil = any(e == "nil" for e in elements)
        non_nil = [e for e in elements if e != "nil"]
        first = non_nil[0] if non_nil else "nil"
        if first in ("True", "False"):
            return "Boolean"
        if first.startswith("'"):
            return "String"
        if "." in first and not first.startswith("T") and not first.startswith("MakeMap") and not first.startswith("Null"):
            return "Double"
        if first.startswith("TInt64Array"):
            return "TInt64Array"
        if first.startswith("TDoubleArray"):
            return "TDoubleArray"
        if first.startswith("TStringArray"):
            return "TStringArray"
        if first.startswith("TBooleanArray"):
            return "TBooleanArray"
        if has_nil or first.startswith("Null"):
            return "TNullableInt64"
        return "Int64"

    def _coerce_list_elements(self, elements: List[str], elem_type: str) -> List[str]:
        if elem_type == "TNullableInt64":
            result = []
            for e in elements:
                if e == "nil":
                    result.append("NullInt64")
                elif not e.startswith("Null"):
                    result.append(f"NullableInt64({e})")
                else:
                    result.append(e)
            return result
        return elements

    def gen_list(self, l: List[str]) -> str:
        if not l:
            return "nil"
        elem_type = self._infer_element_type(l)
        l = self._coerce_list_elements(l, elem_type)
        if elem_type in TYPE_MAP:
            arr_type = TYPE_MAP[elem_type]
        elif elem_type.startswith("T") and elem_type.endswith("Array"):
            arr_type = elem_type + "Array"
        else:
            arr_type = f"array of {elem_type}"
        return f"{arr_type}.Create({', '.join(l)})"

    def gen_tuple(self, t: List[str]) -> str:
        return self.gen_list(t)

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        if not values:
            if self.ret_type == "TMapStringInt64":
                return "MakeMapSI(nil, nil)"
            return "MakeMap(nil, nil)"
        val_type = self._infer_element_type(values)
        if val_type == "Int64":
            func = "MakeMapSI"
            vtype = "TInt64Array"
        else:
            func = "MakeMap"
            vtype = "TStringArray"
        k_str = ", ".join(keys)
        v_str = ", ".join(values)
        return f"{func}(TStringArray.Create({k_str}), {vtype}.Create({v_str}))"

    def gen_call(self, func: str, args: List[str]) -> str:
        if func == "candidate":
            func = self.entry_point
        return func + "(" + ", ".join(args) + ")"

