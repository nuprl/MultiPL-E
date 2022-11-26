# Modify mbpp test cases.

import ast
import argparse
from pathlib import Path

def tuple_to_list(value):
    """Converts value to a list, if it is a tuple."""
    if isinstance(value, tuple) or isinstance(value, list):
        return [tuple_to_list(elem) for elem in value]
    
    return value

def tuple_to_list_testcases(source: ast.AST) -> ast.AST:
    """Converts all first-level tuples in a MBPP source ast to lists."""

    class RewriteTuple(ast.NodeTransformer):
        def visit_Tuple(self, node: ast.Tuple) -> ast.List:
            return ast.List(elts=node.elts, ctx=node.ctx)

    return RewriteTuple().visit(source)

def main():
    args = argparse.ArgumentParser()
    args.add_argument("sources", nargs="+", type=Path)
    args = args.parse_args()

    for source in args.sources:
        with open(source, "r") as f:
            source_ast = ast.parse(f.read())

        source_ast = tuple_to_list_testcases(source_ast)

        with open(source, "w") as f:
            f.write(ast.unparse(source_ast))


if __name__ == "__main__":
    main()