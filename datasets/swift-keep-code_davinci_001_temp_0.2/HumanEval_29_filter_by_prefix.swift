
/// Filter an input list of strings only for ones that start with a given prefix.
/// >>> filter_by_prefix([], 'a')
/// []
/// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
/// ['abc', 'array']
func filter_by_prefix(strings: [String], prefix: String) -> [String] {
    return strings.filter { $0.hasPrefix(prefix) }

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
            
assert(filter_by_prefix(strings: [] as [String], prefix: "john") == [] as [String])
assert(filter_by_prefix(strings: ["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], prefix: "xxx") == ["xxx", "xxxAAA", "xxx"])