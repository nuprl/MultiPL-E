
// Return maximum element in the list.
// >>> max_element([1, 2, 3])
// 3
// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
func max_element(l: [Int]) -> Int {
    return l.maxElement()!

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
            
assert(max_element(l: [1, 2, 3]) == 3)
assert(max_element(l: [5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]) == 124)