// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
func split_words(txt: String) -> Result<[String], Int> {
	fatalError("unimplemented")

}

assert(split_words(txt: Hello world!) == .success([Hello, world!]))
assert(split_words(txt: Hello,world!) == .success([Hello, world!]))
assert(split_words(txt: Hello world,!) == .success([Hello, world,!]))
assert(split_words(txt: Hello,Hello,world !) == .success([Hello,Hello,world, !]))
assert(split_words(txt: abcdef) == .failure(3))
assert(split_words(txt: aaabb) == .failure(2))
assert(split_words(txt: aaaBb) == .failure(1))
assert(split_words(txt: ) == .failure(0))