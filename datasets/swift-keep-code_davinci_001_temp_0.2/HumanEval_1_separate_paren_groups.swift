
// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
func separate_paren_groups(paren_string: String) -> [String] {
    var result = [String]()
    var current_group = ""
    var current_group_start = 0
    var current_group_end = 0
    var current_group_level = 0
    for i in 0..<paren_string.characters.count {
        let c = paren_string[i]
        if c == "(" {
            current_group_level += 1
            if current_group_level == 1 {
                current_group_start = i
            }
        } else if c == ")" {
            current_group_level -= 1
            if current_group_level == 0 {
                current_group_end = i
                result.append(paren_string[current_group_start..<current_group_end])
            }
        }
    }
    return result

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