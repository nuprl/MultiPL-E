
extension Int: Error {}
        
// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
func split_words(txt: String) -> Result<[String], Int> {
    let words = txt.split(separator: " ")
    if words.count > 1 {
        return .success(words.map { String($0) })
    }
    let commas = txt.split(separator: ",")
    if commas.count > 1 {
        return .success(commas.map { String($0) })
    }
    let letters = txt.lowercased().filter { $0.isLetter }
    let count = letters.reduce(0) { $0 + ($1.unicodeScalars.first!.value % 2 == 0 ? 1 : -1) }
    if count == 0 {
        return .failure(0)
    }
    return .success([String(count)])

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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))