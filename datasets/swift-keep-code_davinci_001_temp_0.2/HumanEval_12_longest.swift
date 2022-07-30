// Out of list of strings, return the longest one. Return the first one in case of multiple
// strings of the same length. Return None in case the input list is empty.
// >>> longest([])
// >>> longest(['a', 'b', 'c'])
// 'a'
// >>> longest(['a', 'bb', 'ccc'])
// 'ccc'
func longest(strings: [String]) -> String? {
	fatalError("unimplemented")

}

assert(longest(strings: []) == nil)
assert(longest(strings: [x, y, z]) == x)
assert(longest(strings: [x, yyy, zzzz, www, kkkk, abc]) == zzzz)