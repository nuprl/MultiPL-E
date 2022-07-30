// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of exchanged elements between lst1 and lst2.
// If it is possible to exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
func exchange(lst1: [Int], lst2: [Int]) -> String {
	fatalError("unimplemented")

}

assert(exchange(lst1: [1, 2, 3, 4], lst2: [1, 2, 3, 4]) == YES)
assert(exchange(lst1: [1, 2, 3, 4], lst2: [1, 5, 3, 4]) == NO)
assert(exchange(lst1: [1, 2, 3, 4], lst2: [2, 1, 4, 3]) == YES)
assert(exchange(lst1: [5, 7, 3], lst2: [2, 6, 4]) == YES)
assert(exchange(lst1: [5, 7, 3], lst2: [2, 6, 3]) == NO)
assert(exchange(lst1: [3, 2, 6, 1, 8, 9], lst2: [3, 5, 5, 1, 1, 1]) == NO)
assert(exchange(lst1: [100, 200], lst2: [200, 200]) == YES)