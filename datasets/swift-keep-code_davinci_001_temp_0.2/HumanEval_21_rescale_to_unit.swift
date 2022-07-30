
// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
func rescale_to_unit(numbers: [Double]) -> [Double] {
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
            
assert(rescale_to_unit(numbers: [2.0, 49.9]) == [0.0, 1.0])
assert(rescale_to_unit(numbers: [100.0, 49.9]) == [1.0, 0.0])
assert(rescale_to_unit(numbers: [1.0, 2.0, 3.0, 4.0, 5.0]) == [0.0, 0.25, 0.5, 0.75, 1.0])
assert(rescale_to_unit(numbers: [2.0, 1.0, 5.0, 3.0, 4.0]) == [0.25, 0.0, 1.0, 0.5, 0.75])
assert(rescale_to_unit(numbers: [12.0, 11.0, 15.0, 13.0, 14.0]) == [0.25, 0.0, 1.0, 0.5, 0.75])