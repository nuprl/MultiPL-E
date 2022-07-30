
// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
// For example:
// anti_shuffle('Hi') returns 'Hi'
// anti_shuffle('hello') returns 'ehllo'
// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
func anti_shuffle(s: String) -> String {
    return ""

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
            
assert(anti_shuffle(s: "Hi") == "Hi")
assert(anti_shuffle(s: "hello") == "ehllo")
assert(anti_shuffle(s: "number") == "bemnru")
assert(anti_shuffle(s: "abcd") == "abcd")
assert(anti_shuffle(s: "Hello World!!!") == "Hello !!!Wdlor")
assert(anti_shuffle(s: "") == "")
assert(anti_shuffle(s: "Hi. My name is Mister Robot. How are you?") == ".Hi My aemn is Meirst .Rboot How aer ?ouy")