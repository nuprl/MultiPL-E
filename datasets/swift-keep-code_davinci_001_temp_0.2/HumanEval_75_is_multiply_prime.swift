// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100. 
// Example:
// is_multiply_prime(30) == True
// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
	fatalError("unimplemented")

}

assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)