
/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome('')
/// ''
/// >>> make_palindrome('cat')
/// 'catac'
/// >>> make_palindrome('cata')
/// 'catac'
func make_palindrome(string: String) -> String {
    let reversed = String(string.characters.reversed())
    let reversed_prefix = reversed.prefix(string.characters.count)
    let reversed_suffix = reversed.suffix(string.characters.count)
    let reversed_prefix_is_palindrome = reversed_prefix == String(reversed_prefix.characters.reversed())
    let reversed_suffix_is_palindrome = reversed_suffix == String(reversed_suffix.characters.reversed())
    if reversed_prefix_is_palindrome && reversed_suffix_is_palindrome {
        return string + reversed_prefix
    } else if reversed_prefix_is_palindrome {
        return string + reversed_prefix + reversed_suffix
    } else if reversed_suffix_is_palindrome {
        return string + reversed_suffix + reversed_prefix
    } else {
        return string + reversed_prefix + reversed_suffix + reversed_prefix
    }

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