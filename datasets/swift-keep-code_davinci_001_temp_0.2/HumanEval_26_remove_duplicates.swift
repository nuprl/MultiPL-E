// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
func remove_duplicates(numbers: [Int]) -> [Int] {
	fatalError("unimplemented")

}

assert(remove_duplicates(numbers: []) == [])
assert(remove_duplicates(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(remove_duplicates(numbers: [1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5])