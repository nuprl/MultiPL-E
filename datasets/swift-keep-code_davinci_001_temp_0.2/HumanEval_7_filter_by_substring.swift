// Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
func filter_by_substring(strings: [String], substring: String) -> [String] {
	fatalError("unimplemented")

}

assert(filter_by_substring(strings: [], substring: john) == [])
assert(filter_by_substring(strings: [xxx, asd, xxy, john doe, xxxAAA, xxx], substring: xxx) == [xxx, xxxAAA, xxx])
assert(filter_by_substring(strings: [xxx, asd, aaaxxy, john doe, xxxAAA, xxx], substring: xx) == [xxx, aaaxxy, xxxAAA, xxx])
assert(filter_by_substring(strings: [grunt, trumpet, prune, gruesome], substring: run) == [grunt, prune])