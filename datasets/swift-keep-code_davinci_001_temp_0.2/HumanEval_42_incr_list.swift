
/// Return list with elements incremented by 1.
/// >>> incr_list([1, 2, 3])
/// [2, 3, 4]
/// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
/// [6, 4, 6, 3, 4, 4, 10, 1, 124]
func incr_list(l: [Int]) -> [Int] {
    var result = [Int]()
    for i in l {
        result.append(i + 1)
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
            
assert(incr_list(l: [] as [Int]) == [] as [Int])
assert(incr_list(l: [3, 2, 1]) == [4, 3, 2])
assert(incr_list(l: [5, 2, 5, 2, 3, 3, 9, 0, 123]) == [6, 3, 6, 3, 4, 4, 10, 1, 124])