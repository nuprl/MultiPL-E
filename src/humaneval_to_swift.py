# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Go.
#
# ----- Some specific issues about Go -----
#
# Due to Go's composite literals, we have to type annotate each literal with its type.
# For example, if we want a slice of ints, we have to write:
# []int{1, 2, 3}
# Or a map of string -> int:
# map[string]int{"a": 1, "b": 2}
# Therefore, this creates some slight issues with the translation, but it is
# possible to translate the code by using python's ast annotations, which is what we have done here.
#
# Unfortunately, Go does not have Union, Tuple or Optional types, so we reject those.
# For testing, Go does not have a real testing framework, therefore we ship a small testing program
# with each problem. For equality, we have exploited Go's value formatting (the "%v" format), which
# will create the same string if two values are equal. Additionally, all go test filenames have to
# end in "_test.go", otherwise go will reject them.

from __future__ import annotations
import re
import ast
from typing import Any, List, Optional, OrderedDict
from base_language_translator import LanguageTranslator
from generic_translator import main
from abc import ABC, abstractmethod
from typing import Tuple, List, TypeVar, Generic
import ast

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class SwiftType(ABC):
    @abstractmethod
    def gen_type(self) -> str:
        pass

    def simplify(self) -> SwiftType:
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
        return "any" # TODO(donald): I'm not sure if this is right
    

class SwiftTypeArray(SwiftType):
    def __init__(self, type_arg: SwiftType) -> None:
        super().__init__()
        self.type_arg = type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_arg == other.type_arg

    def simplify(self) -> SwiftType:
        return SwiftTypeArray(self.type_arg.simplify())

    def gen_type(self) -> str:
        return f"[{self.type_arg.gen_type()}]"


class SwiftTypeDictionary(SwiftType):
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

    def simplify(self) -> SwiftType:
        return SwiftTypeDictionary(self.key_type_arg.simplify(), self.value_type_arg.simplify())
    
    def gen_type(self) -> str:
        return f"[{self.key_type_arg.gen_type()} : {self.value_type_arg.gen_type()}]"

class SwiftTypeOptional(SwiftType):
    def __init__(self, type_arg: SwiftType) -> None:
        super().__init__()
        self.type_arg = type_arg

    def _key(self) -> Any:
        return type(self).__name__, self.type_arg

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_arg == other.type_arg

    def simplify(self) -> SwiftType:
        return SwiftTypeOptional(self.type_arg.simplify())

    def gen_type(self) -> str:
        return f"{self.type_arg.gen_type()}?"

class SwiftTypeTuple(SwiftType):
    def __init__(self, type_args: Tuple[SwiftType, ...] | Tuple[()]) -> None:
        super().__init__()
        self.type_args = type_args

    def _key(self) -> Any:
        return type(self).__name__, self.type_args

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.type_args == other.type_args

    def simplify(self) -> SwiftType:
        simpl = tuple(t.simplify() for t in self.type_args)
        if len(simpl) == 1:
            return simpl[0]
        else:
            return SwiftTypeTuple(simpl)
    
    def gen_type(self) -> str:
        type_strs = ", ".join([ty.gen_type() for ty in self.type_args])
        return f"({type_strs})"

class SwiftTypeResult(SwiftType):
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
    
    def simplify(self) -> SwiftType:
        ok_s = self.ok_type_arg.simplify()
        err_s = self.err_type_arg.simplify()
        match err_s:
            case SwiftTypeTuple([]):
                return SwiftTypeOptional(ok_s)
            case _other:
                return SwiftTypeResult(ok_s, err_s)

    def gen_type(self) -> str:
        # TODO(donald): perhaps I need an import
        return f"Result<{self.ok_type_arg.gen_type()}, {self.err_type_arg.gen_type()}>"

class SwiftTypeUnion(SwiftType):
    def __init__(self, case_types: OrderedDict[SwiftType, None]) -> None:
        super().__init__
        self.case_types = case_types

    def _key(self) -> Any:
        return type(self).__name__, frozenset(self.case_types)

    def __hash__(self):
        return hash(self._key())

    def __eq__(self, other: object) -> bool:
        return isinstance(other, type(self)) and self.case_types == other.case_types
    
    def simplify(self) -> SwiftType:
        case_types_simpl = OrderedDict.fromkeys(t.simplify() for t in self.case_types)
        
        make_optional = SwiftTypeTuple(()) in case_types_simpl
        if make_optional:
            del case_types_simpl[SwiftTypeTuple(())]
    
        case_types_simpl_final = list(case_types_simpl.keys())
        if len(case_types_simpl_final) == 0:
            return SwiftTypeTuple(())
        elif len(case_types_simpl_final) == 1:
            non_optional_t = case_types_simpl_final[0]
        elif len(case_types_simpl_final) == 2:
            non_optional_t = SwiftTypeResult(case_types_simpl_final[0], case_types_simpl_final[1]).simplify()
        else:
            non_optional_t = SwiftTypeUnion(OrderedDict.fromkeys(case_types_simpl_final))

        if make_optional:
            return SwiftTypeOptional(non_optional_t).simplify()
        else:
            return non_optional_t

    def gen_type(self) -> str:
        return "UNIMPLEMENTED UNIONS"


TargetExp = str

class SwiftTranslator(LanguageTranslator[TargetExp]):
    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """
        Translate a literal expression
        c: is the literal value
        """
        return "LITERAL"

    def gen_var(self, v: str) -> TargetExp:
        """
        Translate a variable with name v.
        """
        return "VAR"

    def gen_list(self, l: List[Tuple[str, ast.Expr]]) -> TargetExp:
        """
        Translate a list with elements l
        """
        return "LIST"

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """
        Translate a tuple with elements t
        """
        return "TUPLE"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """
        Translate a dictionary with keys and values
        """
        return "DICT"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        """
        Translate a function call `func(args)`
        """
        return "CALL"


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
        self.param_names_types = [(arg.arg, self.translate_type(arg.annotation).simplify()) for arg in args]
        self.return_type = self.translate_type(returns).simplify()


        swift_description = "// " + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip()) + "\n"
        swift_params = ", ".join([f"{name}: {ty.gen_type()}" for name, ty in self.param_names_types])
        swift_return = self.return_type.gen_type()
        return f"{swift_description}func {name}({swift_params}) -> {swift_return} {{\n"


    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        return "EQUALITY"

    
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




if __name__ == "__main__":
    # NOTE: go test need to end with _test.go
    translator = SwiftTranslator()
    main(translator)
