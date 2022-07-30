
// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return False. Assume no negative numbers and only integers.
// Examples
// is_sorted([5]) ➞ True
// is_sorted([1, 2, 3, 4, 5]) ➞ True
// is_sorted([1, 3, 2, 4, 5]) ➞ False
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
func is_sorted(lst: [Int]) -> Bool {
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)