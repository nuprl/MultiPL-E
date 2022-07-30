// Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
func total_match(lst1: [String], lst2: [String]) -> [String] {
	fatalError("unimplemented")

}

assert(total_match(lst1: [], lst2: []) == [])
assert(total_match(lst1: [hi, admin], lst2: [hi, hi]) == [hi, hi])
assert(total_match(lst1: [hi, admin], lst2: [hi, hi, admin, project]) == [hi, admin])
assert(total_match(lst1: [4], lst2: [1, 2, 3, 4, 5]) == [4])
assert(total_match(lst1: [hi, admin], lst2: [hI, Hi]) == [hI, Hi])
assert(total_match(lst1: [hi, admin], lst2: [hI, hi, hi]) == [hI, hi, hi])
assert(total_match(lst1: [hi, admin], lst2: [hI, hi, hii]) == [hi, admin])
assert(total_match(lst1: [], lst2: [this]) == [])
assert(total_match(lst1: [this], lst2: []) == [])