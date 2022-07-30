// You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return None if there is no such element.
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == None
// next_smallest([1, 1]) == None
func next_smallest(lst: [Int]) -> Int? {
	fatalError("unimplemented")

}

assert(next_smallest(lst: [1, 2, 3, 4, 5]) == 2)
assert(next_smallest(lst: [5, 1, 4, 3, 2]) == 2)
assert(next_smallest(lst: []) == nil)
assert(next_smallest(lst: [1, 1]) == nil)
assert(next_smallest(lst: [1, 1, 1, 1, 0]) == 1)
assert(next_smallest(lst: [1, 1]) == nil)
assert(next_smallest(lst: [-35, 34, 12, -45]) == -35)