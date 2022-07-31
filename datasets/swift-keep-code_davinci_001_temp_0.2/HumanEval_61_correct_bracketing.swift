
/// brackets is a string of "(" and ")".
/// return True if every opening bracket has a corresponding closing bracket.
/// >>> correct_bracketing("(")
/// False
/// >>> correct_bracketing("()")
/// True
/// >>> correct_bracketing("(()())")
/// True
/// >>> correct_bracketing(")(()")
/// False
func correct_bracketing(brackets: String) -> Bool {
    var stack = [Character]()
    for bracket in brackets {
        if bracket == "(" {
            stack.append(bracket)
        } else if bracket == ")" {
            if stack.isEmpty {
                return false
            }
            stack.removeLast()
        }
    }
    return stack.isEmpty

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
            
assert(correct_bracketing(brackets: "()") == true)
assert(correct_bracketing(brackets: "(()())") == true)
assert(correct_bracketing(brackets: "()()(()())()") == true)
assert(correct_bracketing(brackets: "()()((()()())())(()()(()))") == true)
assert(correct_bracketing(brackets: "((()())))") == false)
assert(correct_bracketing(brackets: ")(()") == false)
assert(correct_bracketing(brackets: "(") == false)
assert(correct_bracketing(brackets: "((((") == false)
assert(correct_bracketing(brackets: ")") == false)
assert(correct_bracketing(brackets: "(()") == false)
assert(correct_bracketing(brackets: "()()(()())())(()") == false)
assert(correct_bracketing(brackets: "()()(()())()))()") == false)