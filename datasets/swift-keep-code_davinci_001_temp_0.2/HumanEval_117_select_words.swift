
// Given a string s and a natural number n, you have been tasked to implement 
// a function that returns a list of all words from string s that contain exactly 
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
func select_words(s: String, n: Int) -> [String] {
    var result: [String] = []
    let words = s.components(separatedBy: " ")
    for word in words {
        let count = word.characters.filter { $0 != " " }.count
        if count == n {
            result.append(word)
        }
    }
    return result

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
            
assert(select_words(s: "Mary had a little lamb", n: 4) == ["little"])
assert(select_words(s: "Mary had a little lamb", n: 3) == ["Mary", "lamb"])
assert(select_words(s: "simple white space", n: 2) == [] as [String])
assert(select_words(s: "Hello world", n: 4) == ["world"])
assert(select_words(s: "Uncle sam", n: 3) == ["Uncle"])
assert(select_words(s: "", n: 4) == [] as [String])
assert(select_words(s: "a b c d e f", n: 1) == ["b", "c", "d", "f"])