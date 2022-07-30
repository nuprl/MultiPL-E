// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
func histogram(test: String) -> [String : Int] {
	fatalError("unimplemented")

}

assert(histogram(test: a b b a) == [a : 2, b : 2])
assert(histogram(test: a b c a b) == [a : 2, b : 2])
assert(histogram(test: a b c d g) == [a : 1, b : 1, c : 1, d : 1, g : 1])
assert(histogram(test: r t g) == [r : 1, t : 1, g : 1])
assert(histogram(test: b b b b a) == [b : 4])
assert(histogram(test: r t g) == [r : 1, t : 1, g : 1])
assert(histogram(test: ) == [])
assert(histogram(test: a) == [a : 1])