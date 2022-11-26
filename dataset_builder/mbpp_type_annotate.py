# An attempt at adding type annotations to a MBPP program
# Which is a Python program with a single function definition
# and a set of assert statements written in specific syntax
# check the MBPP test cases for examples

import ast
import sys
import re
import argparse
import traceback
from pathlib import Path
from shutil import get_unpack_formats
from types import GenericAlias, NoneType
from typing import Any, Optional, Union
import typing

from itertools import groupby

def all_equal(iterable):
    "Returns True if all the elements are equal to each other"
    g = groupby(iterable)
    return next(g, True) and not next(g, False)

def extract_arg_names(func_def: ast.AST) -> list[str]:
    match func_def:
        case ast.FunctionDef(name, args, _body):
            arglist = args.args
            return [a.arg for a in arglist]
        case _other:
            raise Exception(f"Not a function definition: {func_def}")

def get_union_type(types):
    match types:
        case [ type ]:
            return type
        case [ type, *rest ]:
            return Union[type, get_union_type(rest)]

def value_to_type(ast_value: ast.AST):
    """given a AST value, give its type"""

    def get_underlying_values(ast_value):
        return eval(ast.unparse(ast_value))
        # match ast_value:
        #     # This is for negative numbers
        #     case ast.UnaryOp(ast.USub(), ast.Constant(value)):
        #         return value
        #     case ast.Constant(value):
        #         return value
        #     case ast.List(elts, _ctx):
        #         return [get_underlying_values(e) for e in elts]
        #     case ast.Tuple(elts, _ctx):
        #         return tuple([get_underlying_values(e) for e in elts])
        #     case ast.Set(elts):
        #         return {get_underlying_values(e) for e in elts}
        #     case ast.Dict(keys, values):
        #         return dict(zip([get_underlying_values(k) for k in keys],  
        #                         [get_underlying_values(v) for v in values]))
        #     case _other:
        #         return eval(ast.unparse(ast_value))
                # raise Exception(f"Unsupported AST value, or not an AST value: {ast_value}")

    def get_type(value):
        if isinstance(value, list):
            return list[get_union_type([get_type(e) for e in value])]
        elif isinstance(value, tuple):
            types = [get_type(e) for e in value]
            return GenericAlias(tuple, tuple(types))
        elif isinstance(value, set):
            return set[get_union_type([get_type(e) for e in value])]
        elif isinstance(value, dict):
            return dict[get_union_type([get_type(k) for k in value]), 
                        get_union_type([get_type(value[k]) for k in value])]
        else:
            return type(value)

    value = get_underlying_values(ast_value)
    return get_type(value)

def unify_types(types):

    def pred_pair(t1, t2, f, g):
        return (f(t1) and g(t2)) or (g(t1) and f(t2))
    
    def unify_types2(t1, t2):
        if t1 == t2:
            return t1
        elif t1 == NoneType or t1 == Optional[t2]:
            return Optional[t2]
        elif t2 == NoneType or t2 == Optional[t1]:
            return Optional[t1]
        elif pred_pair(t1, t2, lambda t: t == int, lambda t: t == float):
            return float
        elif isinstance(t1, typing._UnionGenericAlias) or isinstance(t2, typing._UnionGenericAlias):
            return Union[t1, t2]
        elif not isinstance(t1, GenericAlias) or not isinstance(t2, GenericAlias):
            print(f"is instance test: {t1}, {t2}")
            return Any
        elif t1.__origin__ != t2.__origin__:
            if pred_pair(t1, t2, lambda t: t == dict[None, None], lambda t: t.__origin__ == set):
                return t1 if t1.__origin__ == set else t2
            print(f"origin test: {t1}, {t2}")
            return Any
        elif t1.__origin__ == tuple:
            if t1.__args__ != t2.__args__:
                print(f"tuple params must match exactly: {t1}, {t2}")
                return Any
            else:
                return t1
        else:
            t1_args = list(t1.__args__)
            t2_args = list(t2.__args__)
            if len(t1_args) != len(t2_args):
                print(f"arglength: {t1}, {t2}")
                return Any
            result = [unify_types2(t1arg, t2arg) for t1arg, t2arg in zip(t1_args, t2_args)]
            return GenericAlias(t1.__origin__, tuple(result))

    if len(types) <= 1:
        return types[0]
    
    acc = types[0]
    [acc := unify_types2(acc, t) for t in types[1:]]
    return acc
    
def extract_types_assert(assert_stmt: ast.AST):
    match assert_stmt:
        case ast.Assert(test, msg):
            match test:
                case ast.Compare(ast.Call(ast.Name(id, _ctx), args), ops, comparators):
                    assert id == "candidate"

                    args_type = [value_to_type(arg) for arg in args]
                    # TODO: we are assuming there is only one return value here.
                    return_type = value_to_type(comparators[0]) 

                    return args_type, return_type

                case ast.Call(ast.Name(id, _ctx), args) | ast.UnaryOp(ast.Not(), ast.Call(ast.Name(id, _ctx), args)):
                    assert id == "candidate" 

                    args_type = [value_to_type(arg) for arg in args]

                    return args_type, bool

        case _other:
            raise Exception(f"Not an assert statement: {assert_stmt}")

def extract_types_check_fn(check_fn: ast.AST):
    match check_fn:
        case ast.FunctionDef('check', _args, body):
            type_from_asserts = [extract_types_assert(stmt) for stmt in body]
            if not all_equal(type_from_asserts):
                # Unify the corresponding positions
                # [([arg1, arg2, ... , argn], return_type)_1, ([arg1, arg2, ... , argn], return_type)_2, ... ] 
                # => [([unified_arg1s, unified_arg2s, ... unified_argns], unified_return_types)]
                args_types = [argst for argst, _ in type_from_asserts]
                return_types = [returnt for _, returnt in type_from_asserts]
                final_args_types = [ unify_types([args[i] for args in args_types]) for i in range(len(args_types[0])) ]
                final_return_type = unify_types(return_types)
                
                return (final_args_types, final_return_type)
            else:
                return type_from_asserts[0]
        case _other:
            raise Exception(f"Not a definition for function check(): {check_fn}")

def get_component(entity: Any) -> ast.AST:
    """
    Get the corresponding entity in Python AST representation.
    """
    # basic types and custom classes (we don't have them in mbpp I think) need special treatment... 
    # This is essentially a hack. How to do this better?
    string_rep = str(entity)
    class_match = re.match(r"<class '(.*)'>", string_rep)

    if class_match:
        string_rep = class_match[1]

    parsed_module = ast.parse(string_rep)

    match parsed_module:
        case ast.Module([ast.Expr(value)], _):
            return value
        case _other:
            raise Exception(f"unexpected entity: {parsed_module}")


def type_annotation_to_func(func_def: ast.AST, args_type, return_type) -> ast.AST:
    match func_def:
        case ast.FunctionDef(name, ast.arguments(posonlyargs, args, kwonlyargs, kw_defaults, defaults), body, decorator_list):
            returns = get_component(return_type)
            annotated_args = [ast.arg(arg=arg.arg, annotation=get_component(ann)) for arg, ann in zip(args, args_type)]
            arguments = ast.arguments(posonlyargs=posonlyargs, args=annotated_args, vararg=None, kwonlyargs=kwonlyargs,\
                 kw_defaults=kw_defaults, kwarg=None, defaults=defaults)

            return ast.FunctionDef(name, arguments, body, decorator_list, returns)
        case _other:
            raise Exception(f"Not a function definition: {func_def}")

def annotate_files(path: Path, write_handler = sys.stdout):
    with open(path) as f:
        module_ast = ast.parse(f.read())
        # print(ast.dump(module_ast, indent=4))

    match module_ast:
        case ast.Module(body, _type_ignores):
            # Theses are the assumptions of the mbpp benchmark.
            prompt_function = body[0]
            check_function = body[1]
            test_check_function = body[2]

            args_type, return_type = extract_types_check_fn(check_function)

            annotated_prompt_fn = type_annotation_to_func(prompt_function, args_type, return_type)

            write_handler.write(ast.unparse(ast.fix_missing_locations(annotated_prompt_fn)))
            write_handler.write("\n\n")
            write_handler.write("### Unit tests below ###\n")
            write_handler.write(ast.unparse(ast.fix_missing_locations(check_function)))
            write_handler.write("\n\n")
            write_handler.write(ast.unparse(ast.fix_missing_locations(test_check_function)))
            write_handler.write("\n\n")

        case _other:
            raise Exception(f"Not a module: {module_ast}")


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--datasets",
        type=Path,
        default=Path(Path(__file__).parent, "..", "datasets"),
        help="specify the datasets to use")

    args.add_argument(
        "--output",
        type=Path,
        default=Path(Path(__file__).parent, "..", "output"),
        help="specify the output directory")

    args.add_argument(
        "--regex",
        type=str,
        default=".*",
        help="filter the file to be translated by regular expression")

    args.add_argument(
        "--post-process",
        help="Is post-processing for legacy Python type annotation needed?",
        action="store_true",
        default=True)

    args = args.parse_args()

    args.output.mkdir(mode=0o755, exist_ok=True, parents=True)

    translated_count = 0
    files = [file for file in args.datasets.glob("*.py") if re.search(args.regex, file.name)]
    output_files = []
    for file in files:
        print(file)
        output_file = args.output / file.name
        with open(output_file, "w") as of: 
            try:
                annotate_files(file, of)
                translated_count += 1
            except Exception as e:
                print(f"unable to translate {file}: {str(e)}")
                print(traceback.format_exc())
        
        output_files.append(output_file)

    if args.post_process:
        POST_PROCESS_DICT = {"list[": "List[", "tuple[": "Tuple[", "dict[": "Dict[", "set[": "Set[", "typing.": "", \
                "pass": "### Canonical solution below ###\n    pass"}
        for file in output_files:
            with open(file) as f:
                content = f.read()
                for k, v in POST_PROCESS_DICT.items():
                    content = content.replace(k, v)
            with open(file, "w") as f:
                f.write("from typing import List, Dict, Tuple\n\n")
                f.write(content)

    print(f"translated: {translated_count}, total: {len(files)}")


if __name__ == "__main__":
    main()
