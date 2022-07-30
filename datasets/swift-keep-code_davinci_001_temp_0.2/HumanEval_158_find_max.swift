// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
func find_max(words: [String]) -> String {
	fatalError("unimplemented")

}

assert(find_max(words: [name, of, string]) == string)
assert(find_max(words: [name, enam, game]) == enam)
assert(find_max(words: [aaaaaaa, bb, cc]) == aaaaaaa)
assert(find_max(words: [abc, cba]) == abc)
assert(find_max(words: [play, this, game, of, footbott]) == footbott)
assert(find_max(words: [we, are, gonna, rock]) == gonna)
assert(find_max(words: [we, are, a, mad, nation]) == nation)
assert(find_max(words: [this, is, a, prrk]) == this)
assert(find_max(words: [b]) == b)
assert(find_max(words: [play, play, play]) == play)