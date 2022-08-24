import ast
import sys
from pathlib import Path
from shutil import get_unpack_formats
from typing import Any, Union

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
        match ast_value:
            case ast.Constant(value):
                return value
            case ast.List(elts, _ctx):
                return [get_underlying_values(e) for e in elts]
            case ast.Tuple(elts, _ctx):
                return tuple([get_underlying_values(e) for e in elts])
            case _other:
                raise Exception(f"Unsupported AST value, or not an AST value: {ast_value}")

    def get_type(value):
        if isinstance(value, list):
            return list[get_union_type([get_type(e) for e in value])]
        elif isinstance(value, tuple):
            return tuple[get_union_type([get_type(e) for e in value])]
        else:
            return type(value)

    value = get_underlying_values(ast_value)
    return get_type(value)
    
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

        case _other:
            raise Exception(f"Not an assert statement: {assert_stmt}")

def extract_types_check_fn(check_fn: ast.AST):
    match check_fn:
        case ast.FunctionDef('check', _args, body):
            type_from_asserts = [extract_types_assert(stmt) for stmt in body]
            if not all_equal(type_from_asserts):
                # TODO: Unify types from examples
                raise Exception(f"type from asserts differ:{type_from_asserts}")
            return type_from_asserts[0]
        case _other:
            raise Exception(f"Not a definition for function check(): {check_fn}")

def get_component(entity: Any) -> ast.AST:
    """
    Get the corresponding entity in Python AST representation.
    """
    parsed_module = ast.parse(str(entity))

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
            return ast.FunctionDef(name, ast.arguments(posonlyargs=posonlyargs, args=annotated_args, vararg=None, kwonlyargs=kwonlyargs, kw_defaults=kw_defaults, kwarg=None, defaults=defaults), body, decorator_list, returns)
        case _other:
            raise Exception(f"Not a function definition: {func_def}")

def annotate_files(path: Path, write_handler = sys.stdout):
    with open(path) as f:
        module_ast = ast.parse(f.read())
        print(ast.dump(module_ast, indent=4))

    match module_ast:
        case ast.Module(body, _type_ignores):
            # Theses are the assumptions of the mbpp benchmark.
            prompt_function = body[0]
            check_function = body[1]
            test_check_function = body[2]

            arglist = extract_arg_names(prompt_function)
            args_type, return_type = extract_types_check_fn(check_function)

            print(arglist)
            print(args_type)
            print(return_type)

            annotated_prompt_fn = type_annotation_to_func(prompt_function, args_type, return_type)

            write_handler.write(ast.unparse(ast.fix_missing_locations(annotated_prompt_fn)))
            write_handler.write("\n")
            write_handler.write(ast.unparse(ast.fix_missing_locations(check_function)))
            write_handler.write("\n")
            write_handler.write(ast.unparse(ast.fix_missing_locations(test_check_function)))
            write_handler.write("\n")

        case _other:
            raise Exception(f"Not a module: {module_ast}")


def main():
    fp = Path(Path(__file__).parent, "..", "datasets")
    op = Path(Path(__file__).parent, "..", "output")
    count = 0
    for file in fp.glob("*.py"):
        print(file.name)
        with open(op / file.name, "w") as of: 
            annotate_files(file, of)
        if count < 10:
            count += 1
        else:
            break


if __name__ == "__main__":
    main()