// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
func parse_nested_parens(paren_string: String) -> [Int] {
	fatalError("unimplemented")

}

assert(parse_nested_parens(paren_string: (()()) ((())) () ((())()())) == [2, 3, 1, 3])
assert(parse_nested_parens(paren_string: () (()) ((())) (((())))) == [1, 2, 3, 4])
assert(parse_nested_parens(paren_string: (()(())((())))) == [4])