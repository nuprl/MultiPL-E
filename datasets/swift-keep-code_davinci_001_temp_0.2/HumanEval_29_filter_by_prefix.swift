// Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
func filter_by_prefix(strings: [String], prefix: String) -> [String] {
	fatalError("unimplemented")

}

assert(filter_by_prefix(strings: [], prefix: john) == [])
assert(filter_by_prefix(strings: [xxx, asd, xxy, john doe, xxxAAA, xxx], prefix: xxx) == [xxx, xxxAAA, xxx])