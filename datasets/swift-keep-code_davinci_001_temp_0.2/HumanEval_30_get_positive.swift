// Return only positive numbers in the list.
// >>> get_positive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
func get_positive(l: [Int]) -> [Int] {
	fatalError("unimplemented")

}

assert(get_positive(l: [-1, -2, 4, 5, 6]) == [4, 5, 6])
assert(get_positive(l: [5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1])
assert(get_positive(l: [-1, -2]) == [])
assert(get_positive(l: []) == [])