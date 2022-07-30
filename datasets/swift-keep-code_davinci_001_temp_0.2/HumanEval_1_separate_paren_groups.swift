
// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
func separate_paren_groups(paren_string: String) -> [String] {
	fatalError("unimplemented")

}


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
            
assert(separate_paren_groups(paren_string: "(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
assert(separate_paren_groups(paren_string: "() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
assert(separate_paren_groups(paren_string: "(()(())((())))") == ["(()(())((())))"])
assert(separate_paren_groups(paren_string: "( ) (( )) (( )( ))") == ["()", "(())", "(()())"])