
/// Return sorted unique elements in a list
/// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
/// [0, 2, 3, 5, 9, 123]
func unique(l: [Int]) -> [Int] {
    var result: [Int] = []
    for i in l {
        if !result.contains(i) {
            result.append(i)
        }
    }
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
            
assert(unique(l: [5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123])