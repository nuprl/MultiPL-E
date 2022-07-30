
// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
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
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])