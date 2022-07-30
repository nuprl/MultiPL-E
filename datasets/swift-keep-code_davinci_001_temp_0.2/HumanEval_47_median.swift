
// Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
func median(l: [Int]) -> Double {
	fatalError("unimplemented")

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
            
assert(median(l: [3, 1, 2, 4, 5]) == 3)
assert(median(l: [-10, 4, 6, 1000, 10, 20]) == 8.0)
assert(median(l: [5]) == 5)
assert(median(l: [6, 5]) == 5.5)
assert(median(l: [8, 1, 3, 9, 9, 2, 7]) == 7)