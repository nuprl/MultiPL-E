// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// double_the_difference([-1, -2, 0]) == 0
// double_the_difference([9, -2]) == 81
// double_the_difference([0]) == 0  
// If the input list is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
	fatalError("unimplemented")

}

assert(double_the_difference(lst: []) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)