
/// Find how many times a given substring can be found in the original string. Count overlaping cases.
/// >>> how_many_times('', 'a')
/// 0
/// >>> how_many_times('aaa', 'a')
/// 3
/// >>> how_many_times('aaaa', 'aa')
/// 3
func how_many_times(string: String, substring: String) -> Int {
    var count = 0
    var index = string.startIndex
    while index < string.endIndex {
        if let range = string.range(of: substring, options: [], range: index..<string.endIndex) {
            count += 1
            index = range.upperBound
        } else {
            break
        }
    }
    return count

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
            
assert(how_many_times(string: "", substring: "x") == 0)
assert(how_many_times(string: "xyxyxyx", substring: "x") == 4)
assert(how_many_times(string: "cacacacac", substring: "cac") == 4)
assert(how_many_times(string: "john doe", substring: "john") == 1)