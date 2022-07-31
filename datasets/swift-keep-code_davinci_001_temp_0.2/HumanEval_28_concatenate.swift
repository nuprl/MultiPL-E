
/// Concatenate list of strings into a single string
/// >>> concatenate([])
/// ''
/// >>> concatenate(['a', 'b', 'c'])
/// 'abc'
func concatenate(strings: [String]) -> String {
    return strings.reduce("", +)

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
            
assert(concatenate(strings: [] as [String]) == "")
assert(concatenate(strings: ["x", "y", "z"]) == "xyz")
assert(concatenate(strings: ["x", "y", "z", "w", "k"]) == "xyzwk")