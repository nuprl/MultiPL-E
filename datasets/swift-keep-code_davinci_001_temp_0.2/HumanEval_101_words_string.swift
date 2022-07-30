// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
func words_string(s: String) -> [String] {
	fatalError("unimplemented")

}

assert(words_string(s: Hi, my name is John) == [Hi, my, name, is, John])
assert(words_string(s: One, two, three, four, five, six) == [One, two, three, four, five, six])
assert(words_string(s: Hi, my name) == [Hi, my, name])
assert(words_string(s: One,, two, three, four, five, six,) == [One, two, three, four, five, six])
assert(words_string(s: ) == [])
assert(words_string(s: ahmed     , gamal) == [ahmed, gamal])