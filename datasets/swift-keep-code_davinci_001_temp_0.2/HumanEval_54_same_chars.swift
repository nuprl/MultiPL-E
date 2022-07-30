
// Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = [Character](s0.characters)
    var s1_chars = [Character](s1.characters)
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars

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
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)