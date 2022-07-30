// Return True if all numbers in the list l are below threshold t.
// >>> below_threshold([1, 2, 4, 10], 100)
// True
// >>> below_threshold([1, 20, 4, 10], 5)
// False
func below_threshold(l: [Int], t: Int) -> Bool {
	fatalError("unimplemented")

}

assert(below_threshold(l: [1, 2, 4, 10], t: 100) == true)
assert(below_threshold(l: [1, 20, 4, 10], t: 5) == false)
assert(below_threshold(l: [1, 20, 4, 10], t: 21) == true)
assert(below_threshold(l: [1, 20, 4, 10], t: 22) == true)
assert(below_threshold(l: [1, 8, 4, 10], t: 11) == true)
assert(below_threshold(l: [1, 8, 4, 10], t: 10) == false)