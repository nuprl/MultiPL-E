
// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
func make_palindrome(string: String) -> String {
    var result = string
    var reversed = String(string.characters.reverse())
    var i = 0
    while i < string.characters.count {
        if string.substringFromIndex(string.endIndex.advancedBy(-i)) == reversed.substringToIndex(reversed.startIndex.advancedBy(i)) {
            break
        }
        i += 1
    }
    result = reversed.substringToIndex(reversed.startIndex.advancedBy(i)) + result
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")