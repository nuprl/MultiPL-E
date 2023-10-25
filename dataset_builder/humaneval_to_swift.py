# This script translates problems from the OpenAI HumanEval dataset into Swift.
#
# ----- Some specifics with the Swift translation -----
#
# We use Swift 5.8 to run tests. Every single test case is translated successfully to Swift. 
# Python docstrings are translated to Swift doc comments (starting with ///). 
# The Python function signature is translated to Swift, recursively translating Python types to Swift types (more detail below). 
# The function signature type, and parameter names, are remembered, and then used to translate Python test expressions 
# into Swift in a type-directed manner. Note that parameter names must be remembered, 
# as they must be added into the call site in the tests. “\n}” is used for the stop token.

# For translating Python types to Swift types, the following conversions occur:
# - Tuple is translated to Swift tuples
# - Tuple[x, …] is translated to an Array<x>
# - Optional[x] is translated to x?
# - Union[x, y] is translated to Result<x, y>
# - Union[..., None] is translated to T? where T is the result of translating Union[...]
# - Union[x, y, z, etc.] is translated to a generated alg. Datatype.
# - Any (or missing annotations) are translated to AnyHashable. Note that translating to Any could be possible, but in Swift you can’t do == on Any values, nor can they be keys in dictionaries. So AnyHashable is a closer match to Any in Python.

# When translating test expressions to Swift types, we must do so in a type-directed manner, 
# especially due to the complicated type translations. 
# For example, when encountering a Python expression that should be translated into Swift at type Result<Int, Bool>, 
# we automatically choose the best possible data constructor for Result.
# In addition, we sometimes need to apply type annotations into Swift expressions explicitly, 
# for instance this is required in some cases to get empty arrays to typecheck.

from __future__ import annotations
import re
import ast
from typing import Any, List, Optional, OrderedDict, Set
from base_language_translator import LanguageTranslator
from generic_translator import translate_expr
from abc import ABC, abstractmethod
from typing import Tuple, List, TypeVar, Generic
import ast

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")


def type_is_simple(t) -> bool:
    match t:
        case SwiftTypeString() | SwiftTypeBool() | SwiftTypeDouble() | SwiftTypeInt():
            return True
        case _other:
            return False

class SwiftType(ABC):
    @abstractmethod
    def gen_type(self) -> str:
        pass

    def simplify(self, needs: NeedTracker) -> SwiftType:
        return self

class SwiftTypeString(SwiftType):
    def _key(self) -> Any:
        return type(self).__name__

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self))

    def gen_type(self) -> str:
        return "String"

class SwiftTypeInt(SwiftType):
    def _key(self) -> Any:
        return type(self).__name__

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self))

    def gen_type(self) -> str:
        return "Int"

class SwiftTypeDouble(SwiftType):
    def _key(self) -> Any:
        return type(self).__name__

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self))

    def gen_type(self) -> str:
        return "Double"

class SwiftTypeBool(SwiftType):
    def _key(self) -> Any:
        return type(self).__name__

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self))

    def gen_type(self) -> str:
        return "Bool"

class SwiftTypeAny(SwiftType):
    def _key(self) -> Any:
        return type(self).__name__

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self))

    def gen_type(self) -> str:
        return "AnyHashable"
    

class SwiftTypeArray(SwiftType):
    __match_args__ = ("type_arg",)

    def __init__(self, type_arg: SwiftType) -> None:
        super().__init__()
        self.type_arg = type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_arg == other.type_arg

    def simplify(self, needs: NeedTracker) -> SwiftType:
        return SwiftTypeArray(self.type_arg.simplify(needs))

    def gen_type(self) -> str:
        return f"[{self.type_arg.gen_type()}]"


class SwiftTypeDictionary(SwiftType):
    __match_args__ = ("key_type_arg", "value_type_arg")

    def __init__(self, key_type_arg: SwiftType, value_type_arg: SwiftType) -> None:
        super().__init__()
        self.key_type_arg = key_type_arg
        self.value_type_arg = value_type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.key_type_arg, self.value_type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.key_type_arg == other.key_type_arg and self.value_type_arg == other.value_type_arg

    def simplify(self, needs: NeedTracker) -> SwiftType:
        return SwiftTypeDictionary(self.key_type_arg.simplify(needs), self.value_type_arg.simplify(needs))
    
    def gen_type(self) -> str:
        return f"[{self.key_type_arg.gen_type()} : {self.value_type_arg.gen_type()}]"

class SwiftTypeOptional(SwiftType):
    __match_args__ = ("type_arg",)

    def __init__(self, type_arg: SwiftType) -> None:
        super().__init__()
        self.type_arg = type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_arg == other.type_arg

    def simplify(self, needs: NeedTracker) -> SwiftType:
        return SwiftTypeOptional(self.type_arg.simplify(needs))

    def gen_type(self) -> str:
        return f"{self.type_arg.gen_type()}?"

class SwiftTypeTuple(SwiftType):
    __match_args__ = ("type_args",)

    def __init__(self, type_args: Tuple[SwiftType, ...] | Tuple[()]) -> None:
        super().__init__()
        self.type_args = type_args

    def _key(self) -> Any:
        return type(self).__name__, self.type_args

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_args == other.type_args

    def simplify(self, needs: NeedTracker) -> SwiftType:
        simpl = tuple(t.simplify(needs) for t in self.type_args)
        if len(simpl) == 1:
            return simpl[0]
        else:
            return SwiftTypeTuple(simpl)
    
    def gen_type(self) -> str:
        type_strs = ", ".join([ty.gen_type() for ty in self.type_args])
        return f"({type_strs})"

class SwiftTypeResult(SwiftType):
    __match_args__ = ("ok_type_arg", "err_type_arg")

    def __init__(self, ok_type_arg: SwiftType, err_type_arg: SwiftType) -> None:
        super().__init__()
        self.ok_type_arg = ok_type_arg
        self.err_type_arg = err_type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.ok_type_arg, self.err_type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.ok_type_arg == other.ok_type_arg and self.err_type_arg == other.err_type_arg
    
    def simplify(self, needs: NeedTracker) -> SwiftType:
        ok_s = self.ok_type_arg.simplify(needs)
        err_s = self.err_type_arg.simplify(needs)
        match err_s:
            case SwiftTypeTuple([]):
                return SwiftTypeOptional(ok_s)
            case _other:
                needs.add_protocol_conformance(err_s.gen_type(), 'Error', '{}')
                return SwiftTypeResult(ok_s, err_s)

    def gen_type(self) -> str:
        return f"Result<{self.ok_type_arg.gen_type()}, {self.err_type_arg.gen_type()}>"

class SwiftTypeUnion(SwiftType):
    __match_args__ = ("case_types",)

    def __init__(self, case_types: OrderedDict[SwiftType, None]) -> None:
        super().__init__
        self.case_types = case_types

    def _key(self) -> Any:
        return type(self).__name__, frozenset(self.case_types)

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.case_types == other.case_types
    
    def simplify(self, needs: NeedTracker) -> SwiftType:
        case_types_simpl = OrderedDict.fromkeys(t.simplify(needs) for t in self.case_types)
        
        make_optional = SwiftTypeTuple(()) in case_types_simpl
        if make_optional:
            del case_types_simpl[SwiftTypeTuple(())]
    
        case_types_simpl_final = list(case_types_simpl.keys())
        if len(case_types_simpl_final) == 0:
            return SwiftTypeTuple(())
        elif len(case_types_simpl_final) == 1:
            non_optional_t = case_types_simpl_final[0]
        elif len(case_types_simpl_final) == 2:
            non_optional_t = SwiftTypeResult(case_types_simpl_final[0], case_types_simpl_final[1]).simplify(needs)
        else:
            non_optional_t = SwiftTypeUnion(OrderedDict.fromkeys(case_types_simpl_final))

        if make_optional:
            return SwiftTypeOptional(non_optional_t).simplify(needs)
        else:
            if isinstance(non_optional_t, SwiftTypeUnion):
                needs.add_enum_definition(non_optional_t)
            return non_optional_t


    def gen_type(self) -> str:
        all_simple = all([type_is_simple(t) for t in self.case_types])
        if not all_simple:
            raise Exception("Can't generate enum with non-simple types")
            
        return "Value"

    def gen_constructor(self, idx: int, arg: str) -> str:
        t = list(self.case_types)[idx]
        if type_is_simple(t):
            return f"{t.gen_type().lower()}Value({arg})"
        else:
            raise Exception(f"Can't generate case for complex type: {t}")
                


TargetExp = ast.expr


def translate_expr_at_type_toplevel(e: ast.expr, t: SwiftType) -> str:
    translated = translate_expr_at_type(e, t)
    if translated is None:
        raise Exception(f"Failed to translate expr:\n{ast.dump(e, indent=4)}\n\nat type:\n{t}")
    return translated[0]

def translate_literal_at_type(c: bool | str | int | float | None, t: SwiftType | None) -> Optional[Tuple[str, bool]]:
    lit_str = f"{c}"

    untyped = t is None or type(t) == SwiftTypeAny

    if type(c) == bool and (type(t) == SwiftTypeBool or untyped):
        if c:
            return ("true", False)
        else:
            return ("false", False)
    elif isinstance(c, str) and (type(t) == SwiftTypeString or untyped):
        c = c.replace('\\', '\\\\')
        c = c.replace('"', '\\"')
        c = c.replace('\n', '\\n')
        c = c.replace('\t', '\\t')
        
        return (f'"{c}"', False)
    elif type(c) == float and (type(t) == SwiftTypeDouble or untyped):
        return (lit_str, False)
    elif type(c) == int and (type(t) == SwiftTypeInt or untyped):
        return (lit_str, False)
    elif type(c) == int and type(t) == SwiftTypeDouble:
        return (lit_str, True)
    else:
        # raise Exception(f"Unhandlded: c = {c}, t = {t}")
        return None


def make_translation_choice(e: ast.expr, ts: List[SwiftType]) -> Optional[Tuple[Tuple[str, bool], int]]:
    assert len(ts) > 0

    results = [(translate_expr_at_type(e, t), idx) for (idx, t) in enumerate(ts)]
    def sort_key(v: Tuple[Optional[Tuple[str, bool]], int]) -> int:
        val = v[0]
        if val is None:
            return 2
        elif val[1] == True:
            return 1
        else:
            return 0
    results.sort(key=sort_key)

    res, idx = results[0]
    if res is None:
        return None
    else:
        return (res, idx)



    

def translate_expr_at_type(e: ast.expr, t: SwiftType | None) -> Optional[Tuple[str, bool]]:
    """
        Return None if e can't be translated at type t.
        Else, return (translation, b), where b indicates if any numeric (int -> float) upcasting occurred
    """

    untyped = type(t) == SwiftTypeAny or t is None

    match e, t:
        case ast.Constant(value=None), SwiftTypeOptional(_opt_type):
            return "nil", False
        case _, SwiftTypeOptional(opt_type):
            return translate_expr_at_type(e, opt_type)
        case _, SwiftTypeResult(ok_type, err_type):
            constructors = [lambda x: f".success({x})", lambda x: f".failure({x})"]
            res_and_idx = make_translation_choice(e, [ok_type, err_type])
            if res_and_idx is None:
                return None
            (res, upc), idx = res_and_idx
            return constructors[idx](res), upc
        case _, SwiftTypeUnion(case_types):
            case_types_list = list(case_types)
            res_and_idx = make_translation_choice(e, case_types_list)
            if res_and_idx is None:
                return None
            (res, upc), idx = res_and_idx
            assert isinstance(t, SwiftTypeUnion) and t is not None # Just to make the type hint happy
            return f".{t.gen_constructor(idx, res)}", upc            
        case ast.Constant(value=c), _:
            return translate_literal_at_type(c, t)
        case ast.Name(v), _:
            return f"{v}", False
        case ast.Call(func, args), _:
            raise Exception("Can't handle function calls other than candidate(...)")
        case ast.List(elts=elts), _:
            if isinstance(t, SwiftTypeArray):
                type_arg = t.type_arg
            elif untyped:
                type_arg = None
            else:
                return None

            vals_and_ups = [translate_expr_at_type(v, type_arg) for v in elts]
            non_nones = [x for x in vals_and_ups if x is not None]
            if len(non_nones) != len(vals_and_ups):
                return None
            val_list = ", ".join(x[0] for x in non_nones)
            any_up = any(x[1] for x in non_nones)
            array_str = f"[{val_list}]"
            if len(non_nones) == 0:
                coerced_type_arg = type_arg if type_arg is not None else SwiftTypeAny()
                array_str = f"{array_str} as [{coerced_type_arg.gen_type()}]"
            return array_str, any_up
        case ast.Dict(keys=keys, values=values), _:
            if isinstance(t, SwiftTypeDictionary):
                value_type_arg = t.value_type_arg
                key_type_arg = t.key_type_arg
            elif untyped:
                value_type_arg = None
                key_type_arg = None
            else:
                return None
                
            vals_and_ups = [translate_expr_at_type(v, value_type_arg) for v in values]
            vals_non_nones = [x for x in vals_and_ups if x is not None]
            if len(vals_non_nones) != len(vals_and_ups):
                return None

            non_null_keys = [k for k in keys if k is not None]
            if len(non_null_keys) != len(keys):
                raise Exception("Can't handle null key case")
            
            keys_and_ups = [translate_expr_at_type(k, key_type_arg) for k in non_null_keys]
            keys_non_nones = [x for x in keys_and_ups if x is not None]
            if len(keys_non_nones) != len(keys_and_ups):
                return None

            vals_keys = [f"{key_trans} : {val_trans}" for ((val_trans, _), (key_trans, _)) in zip(vals_non_nones, keys_non_nones)]
            val_list = ", ".join(vals_keys)

            any_up = any(val_up or key_up for ((_, val_up), (_, key_up)) in zip(vals_non_nones, keys_non_nones))

            if len(vals_keys) == 0:
                coerced_key_type_arg = key_type_arg if key_type_arg is not None else SwiftTypeAny()
                coerced_value_type_arg = value_type_arg if value_type_arg is not None else SwiftTypeAny()
                dict_str = f"[:] as [{coerced_key_type_arg.gen_type()} : {coerced_value_type_arg.gen_type()}]"
            else:
                dict_str = f"[{val_list}]"

            return dict_str, any_up

        case ast.Tuple(elts=elts), _:
            if isinstance(t, SwiftTypeTuple):
                type_args = t.type_args
            elif untyped:
                type_args = [None for elt in elts]
            elif isinstance(t, SwiftTypeArray):
                type_args = [t.type_arg for elt in elts]
            else:
                return None

            if len(elts) != len(type_args):
                return None
            comp_trans = [translate_expr_at_type(elt, t_arg) for (elt, t_arg) in zip(elts, type_args)]
            non_nones = [x for x in comp_trans if x is not None]
            if len(non_nones) != len(comp_trans):
                return None
            
            val_list = ", ".join(x[0] for x in non_nones)
            any_up = any(x[1] for x in non_nones)
            
            if isinstance(t, SwiftTypeArray):
                final_str = f"[{val_list}]"
                if len(non_nones) == 0:
                    coerced_type_arg = t.type_arg if t.type_arg is not None else SwiftTypeAny()
                    final_str = f"{final_str} as [{coerced_type_arg.gen_type()}]"
            else:
                final_str = f"({val_list})"
            return final_str, any_up or isinstance(t, SwiftTypeArray)

        case _:
            raise Exception(f"Unhandled case: {e}, {t}")



class NeedTracker(object):
    def __init__(self) -> None:
        self.protocol_conformances: Set[str] = set()
        self.enum_definition = None

    def add_protocol_conformance(self, t: str, p: str, body: str):
        conf_str: str = f"""
extension {t}: {p} {body}
        """
        self.protocol_conformances.add(conf_str)

    def add_enum_definition(self, t: SwiftTypeUnion):
        if self.enum_definition is None:
            self.enum_definition = t
            return
        if self.enum_definition != t:
            raise Exception("Can't have more than 1 unique enum definition.")

    def gen_prompt_needs(self) -> str:
        needs_str = ""

        if self.enum_definition is not None:
            all_simple = all([type_is_simple(t) for t in self.enum_definition.case_types])
            if not all_simple:
                raise Exception("Can't generate enum definition with non-simple cases.")
            
            enum_name = self.enum_definition.gen_type()

            def gen_case_line(t, idx):
                assert self.enum_definition is not None # make type checker happy

                t_str = t.gen_type()
                return f"    case {self.enum_definition.gen_constructor(idx, t_str)}"

            case_lines = "\n".join([gen_case_line(t, idx) for idx, t in enumerate(self.enum_definition.case_types)])
            needs_str += f"""
enum {enum_name}: Equatable, Hashable {{
{case_lines}
}}

            """
        
        needs_str += "\n".join(self.protocol_conformances)
        return needs_str

class Translator(LanguageTranslator[TargetExp]):
    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        return ast.Constant(value=c)

    def gen_var(self, v: str) -> TargetExp:
        return ast.Name(v)

    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        return ast.List(elts=l)

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        return ast.Tuple(elts=t)

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        return ast.Dict(keys, values)

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        return ast.Call(func, args)

    # These are in fact str, as finalize() turned them so
    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        return f"assert({left} == {right})"

    def translate_type(self, python_type: ast.expr | None) -> SwiftType:
        assert python_type is not None

        match python_type:
            case None:
                raise Exception("None unsupported")
            case ast.Name("Any"):
                return SwiftTypeAny()
            case ast.Name("int"):
                return SwiftTypeInt()
            case ast.Name("float"):
                return SwiftTypeDouble()
            case ast.Name("bool"):
                return SwiftTypeBool()
            case ast.Name("str"):
                return SwiftTypeString()
            case ast.Subscript(ast.Name(type_family_name), type_arg, _ctx):
                # print(f"Generic: {type_family_name}, {type_arg}")
                match type_family_name:
                    case "List":
                        return SwiftTypeArray(self.translate_type(type_arg))
                    case "Union":
                        match type_arg:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.translate_type(elem) for elem in elts]
                                return SwiftTypeUnion(OrderedDict.fromkeys(tys))
                            case other:
                                raise Exception(f"Bad union: {type_arg}")
                    case "Tuple":
                        match type_arg:
                            case ast.Tuple([start_type, ast.Ellipsis()], _ctx):
                                return SwiftTypeArray(self.translate_type(start_type))
                            case ast.Tuple(elts, _ctx):
                                tys = [self.translate_type(elem) for elem in elts]
                                return SwiftTypeTuple(tuple(tys))
                            case other:
                                raise Exception(f"Bad tuple: {type_arg}")
                    case "Dict":
                        match type_arg:
                            case ast.Tuple([kt, vt], _ctx):
                                return SwiftTypeDictionary(self.translate_type(kt), self.translate_type(vt))
                            case other:
                                raise Exception(f"Bad dict: {type_arg}")
                    case "Optional":
                        return SwiftTypeOptional(self.translate_type(type_arg))
                    case other:
                        raise Exception(f"Bad generic {other}")
            case ast.Constant(None):
                return SwiftTypeTuple(())
            case ast.Constant(x):
                raise Exception(f"unknown constant: {x}")
            case _other:
                raise Exception(f"unknown annotation: {python_type}")
  
    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        """
        Translate Python prompt.
        """
        self.needs = NeedTracker()

        self.candidate_name = name
        self.param_names_types = [(arg.arg, self.translate_type(arg.annotation).simplify(self.needs)) for arg in args]
        self.return_type = self.translate_type(returns).simplify(self.needs)

        swift_needs = self.needs.gen_prompt_needs()
        swift_description = "/// " + re.sub(DOCSTRING_LINESTART_RE, "\n/// ", description.strip()) + "\n"
        swift_params = ", ".join([f"{name}: {ty.gen_type()}" for name, ty in self.param_names_types])
        swift_return = self.return_type.gen_type()
        return f"{swift_needs}\n{swift_description}func {name}({swift_params}) -> {swift_return} {{\n"
    
    def file_ext(self) -> str:
        """
        The file extension for this language
        """
        return "swift"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        The entry_point is ???
        """
        return [
            "}",
            "",
            # TODO: autogenerate this for other types
            """
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            """
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        """
        This code goes at the end of the test suite.
        """
        return []

    def stop(self) -> List[str]:
        """
        The list of stop tokens for this language
        """
        return ['\n}']

    def no_completion_prompt_stub(self) -> str:
        """
        A default stub to create a syntactically valid translation in case of not performing completion.
        For example, for Rust this could be:

            todo!()
        }
        
        """
        return "\tfatalError(\"unimplemented\")"

    def finalize(self, py_expr, context):
        match context:
            case "lhs":
                assert isinstance(py_expr, ast.Call)
                assert isinstance(py_expr.func, ast.Name)

                call_args_py = py_expr.args
                assert len(call_args_py) == len(self.param_names_types)

                call_args_swift = ", ".join(
                    f"{param_name}: {translate_expr_at_type_toplevel(arg, param_type_swift)}" 
                    for (arg, (param_name, param_type_swift)) in zip(call_args_py, self.param_names_types)
                )
                return f"{self.candidate_name}({call_args_swift})"
            case "rhs":
                return translate_expr_at_type_toplevel(py_expr, self.return_type)
            case _other:
                raise Exception("bad finalize context")
