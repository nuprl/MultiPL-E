
/// Out of list of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return None in case the input list is empty.
/// >>> longest([])
/// >>> longest(['a', 'b', 'c'])
/// 'a'
/// >>> longest(['a', 'bb', 'ccc'])
/// 'ccc'
func longest(strings: [String]) -> String? {
    guard !strings.isEmpty else { return nil }
    var longest = strings[0]
    for string in strings {
        if string.count > longest.count {
            longest = string
        }
    }
    return longest

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
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")