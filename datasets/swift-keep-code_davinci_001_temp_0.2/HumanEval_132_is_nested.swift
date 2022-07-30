
/// Create a function that takes a string as input which contains only square brackets.
/// The function should return True if and only if there is a valid subsequence of brackets 
/// where at least one bracket in the subsequence is nested.
/// is_nested('[[]]') ➞ True
/// is_nested('[]]]]]]][[[[[]') ➞ False
/// is_nested('[][]') ➞ False
/// is_nested('[]') ➞ False
/// is_nested('[[][]]') ➞ True
/// is_nested('[[]][[') ➞ True
func is_nested(string: String) -> Bool {
    var stack = [Character]()
    for char in string {
        if char == "[" {
            stack.append(char)
        } else if char == "]" {
            if stack.isEmpty {
                return false
            } else {
                stack.removeLast()
            }
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
            
assert(is_nested(string: "[[]]") == true)
assert(is_nested(string: "[]]]]]]][[[[[]") == false)
assert(is_nested(string: "[][]") == false)
assert(is_nested(string: "[]") == false)
assert(is_nested(string: "[[[[]]]]") == true)
assert(is_nested(string: "[]]]]]]]]]]") == false)
assert(is_nested(string: "[][][[]]") == true)
assert(is_nested(string: "[[]") == false)
assert(is_nested(string: "[]]") == false)
assert(is_nested(string: "[[]][[") == true)
assert(is_nested(string: "[[][]]") == true)
assert(is_nested(string: "") == false)
assert(is_nested(string: "[[[[[[[[") == false)
assert(is_nested(string: "]]]]]]]]") == false)