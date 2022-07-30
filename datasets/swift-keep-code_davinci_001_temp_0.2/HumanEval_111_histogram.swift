
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
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])