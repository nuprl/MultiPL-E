// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
func match_parens(lst: [String]) -> String {
	fatalError("unimplemented")

}

assert(match_parens(lst: [()(, )]) == Yes)
assert(match_parens(lst: [), )]) == No)
assert(match_parens(lst: [(()(()), ())())]) == No)
assert(match_parens(lst: [)()), (()()(]) == Yes)
assert(match_parens(lst: [(()))), (()())((]) == Yes)
assert(match_parens(lst: [(), ())]) == No)
assert(match_parens(lst: [(()(, ()))()]) == Yes)
assert(match_parens(lst: [((((, ((())]) == No)
assert(match_parens(lst: [)((), (()(]) == No)
assert(match_parens(lst: [)(, )(]) == No)
assert(match_parens(lst: [(, )]) == Yes)
assert(match_parens(lst: [), (]) == Yes)