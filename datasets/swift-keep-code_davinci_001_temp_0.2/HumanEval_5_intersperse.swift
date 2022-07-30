// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse([], 4)
// []
// >>> intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
	fatalError("unimplemented")

}

assert(intersperse(numbers: [], delimeter: 7) == [])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])