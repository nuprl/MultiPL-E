
// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and True/False for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',False)
// For s = "abcdef", c = "b"  the result should be ('acdef',False)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
func reverse_delete(s: String, c: String) -> (String, Bool) {
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
            
assert(reverse_delete(s: "abcde", c: "ae") == ("bcd", false))
assert(reverse_delete(s: "abcdef", c: "b") == ("acdef", false))
assert(reverse_delete(s: "abcdedcba", c: "ab") == ("cdedc", true))
assert(reverse_delete(s: "dwik", c: "w") == ("dik", false))
assert(reverse_delete(s: "a", c: "a") == ("", true))
assert(reverse_delete(s: "abcdedcba", c: "") == ("abcdedcba", true))
assert(reverse_delete(s: "abcdedcba", c: "v") == ("abcdedcba", true))
assert(reverse_delete(s: "vabba", c: "v") == ("abba", true))
assert(reverse_delete(s: "mamma", c: "mia") == ("", true))