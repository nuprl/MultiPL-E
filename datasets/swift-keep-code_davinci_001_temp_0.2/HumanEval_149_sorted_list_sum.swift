
// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
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
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])