// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
func generate_integers(a: Int, b: Int) -> [Int] {
	fatalError("unimplemented")

}

assert(generate_integers(a: 2, b: 10) == [2, 4, 6, 8])
assert(generate_integers(a: 10, b: 2) == [2, 4, 6, 8])
assert(generate_integers(a: 132, b: 2) == [2, 4, 6, 8])
assert(generate_integers(a: 17, b: 89) == [])