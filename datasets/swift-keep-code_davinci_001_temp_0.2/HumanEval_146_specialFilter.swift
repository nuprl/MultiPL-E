// Write a function that takes an array of numbers as input and returns 
// the number of elements in the array that are greater than 10 and both 
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialFilter([15, -73, 14, -15]) => 1 
// specialFilter([33, -2, -3, 45, 21, 109]) => 2
func specialFilter(nums: [Int]) -> Int {
	fatalError("unimplemented")

}

assert(specialFilter(nums: [5, -2, 1, -5]) == 0)
assert(specialFilter(nums: [15, -73, 14, -15]) == 1)
assert(specialFilter(nums: [33, -2, -3, 45, 21, 109]) == 2)
assert(specialFilter(nums: [43, -12, 93, 125, 121, 109]) == 4)
assert(specialFilter(nums: [71, -2, -33, 75, 21, 19]) == 3)
assert(specialFilter(nums: [1]) == 0)
assert(specialFilter(nums: []) == 0)