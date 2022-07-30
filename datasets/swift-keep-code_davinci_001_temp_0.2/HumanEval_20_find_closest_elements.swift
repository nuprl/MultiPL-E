
// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
func find_closest_elements(numbers: [Double]) -> (Double, Double) {
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
            
assert(find_closest_elements(numbers: [1.0, 2.0, 3.9, 4.0, 5.0, 2.2]) == (3.9, 4.0))
assert(find_closest_elements(numbers: [1.0, 2.0, 5.9, 4.0, 5.0]) == (5.0, 5.9))
assert(find_closest_elements(numbers: [1.0, 2.0, 3.0, 4.0, 5.0, 2.2]) == (2.0, 2.2))
assert(find_closest_elements(numbers: [1.0, 2.0, 3.0, 4.0, 5.0, 2.0]) == (2.0, 2.0))
assert(find_closest_elements(numbers: [1.1, 2.2, 3.1, 4.1, 5.1]) == (2.2, 3.1))