// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
func filter_integers(values: [any]) -> [Int] {
	fatalError("unimplemented")

}

assert(filter_integers(values: []) == [])
assert(filter_integers(values: [4, [], [], 23.2, 9, adasd]) == [4, 9])
assert(filter_integers(values: [3, c, 3, 3, a, b]) == [3, 3, 3])