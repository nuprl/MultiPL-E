
// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as None.
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
// largest_smallest_integers([]) == (None, None)
// largest_smallest_integers([0]) == (None, None)
func largest_smallest_integers(lst: [Int]) -> (Int?, Int?) {
	fatalError("unimplemented")

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_smallest_integers(lst: [2, 4, 1, 3, 5, 7]) == (nil, 1))
assert(largest_smallest_integers(lst: [2, 4, 1, 3, 5, 7, 0]) == (nil, 1))
assert(largest_smallest_integers(lst: [1, 3, 2, 4, 5, 6, -2]) == (-2, 1))
assert(largest_smallest_integers(lst: [4, 5, 3, 6, 2, 7, -7]) == (-7, 2))
assert(largest_smallest_integers(lst: [7, 3, 8, 4, 9, 2, 5, -9]) == (-9, 2))
assert(largest_smallest_integers(lst: [] as [Int]) == (nil, nil))
assert(largest_smallest_integers(lst: [0]) == (nil, nil))
assert(largest_smallest_integers(lst: [-1, -3, -5, -6]) == (-1, nil))
assert(largest_smallest_integers(lst: [-1, -3, -5, -6, 0]) == (-1, nil))
assert(largest_smallest_integers(lst: [-6, -4, -4, -3, 1]) == (-3, 1))
assert(largest_smallest_integers(lst: [-6, -4, -4, -3, -100, 1]) == (-3, 1))