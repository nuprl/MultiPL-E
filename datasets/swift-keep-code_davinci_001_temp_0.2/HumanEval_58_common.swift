
// Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
func common(l1: [Int], l2: [Int]) -> [Int] {
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
            
assert(common(l1: [1, 4, 3, 34, 653, 2, 5], l2: [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653])
assert(common(l1: [5, 3, 2, 8], l2: [3, 2]) == [2, 3])
assert(common(l1: [4, 3, 2, 8], l2: [3, 2, 4]) == [2, 3, 4])
assert(common(l1: [4, 3, 2, 8], l2: [] as [Int]) == [] as [Int])