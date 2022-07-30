
// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
func parse_nested_parens(paren_string: String) -> [Int] {
    var paren_stack = [Int]()
    var max_depth = 0
    var depth = 0
    for char in paren_string {
        if char == "(" {
            depth += 1
            if depth > max_depth {
                max_depth = depth
            }
            paren_stack.append(depth)
        } else if char == ")" {
            depth -= 1
            paren_stack.append(depth)
        }
    }
    return paren_stack

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
            
assert(parse_nested_parens(paren_string: "(()()) ((())) () ((())()())") == [2, 3, 1, 3])
assert(parse_nested_parens(paren_string: "() (()) ((())) (((())))") == [1, 2, 3, 4])
assert(parse_nested_parens(paren_string: "(()(())((())))") == [4])