// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
func any_int(x: Double, y: Double, z: Double) -> Bool {
	fatalError("unimplemented")

}

assert(any_int(x: 2, y: 3, z: 1) == true)
assert(any_int(x: 2.5, y: 2, z: 3) == false)
assert(any_int(x: 1.5, y: 5, z: 3.5) == false)
assert(any_int(x: 2, y: 6, z: 2) == false)
assert(any_int(x: 4, y: 2, z: 2) == true)
assert(any_int(x: 2.2, y: 2.2, z: 2.2) == false)
assert(any_int(x: -4, y: 6, z: 2) == true)
assert(any_int(x: 2, y: 1, z: 1) == true)
assert(any_int(x: 3, y: 4, z: 7) == true)
assert(any_int(x: 3.0, y: 4, z: 7) == false)