// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// For example:
// >>> special_factorial(4)
// 288
// The function will receive an integer as input and should return the special
// factorial of this integer.
func special_factorial(n: Int) -> Int {
	fatalError("unimplemented")

}

assert(special_factorial(n: 4) == 288)
assert(special_factorial(n: 5) == 34560)
assert(special_factorial(n: 7) == 125411328000)
assert(special_factorial(n: 1) == 1)