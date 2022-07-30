
// Create a function that returns True if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and False otherwise.
// Note: "word" is a group of characters separated by space.
// Examples:
// check_if_last_char_is_a_letter("apple pie") ➞ False
// check_if_last_char_is_a_letter("apple pi e") ➞ True
// check_if_last_char_is_a_letter("apple pi e ") ➞ False
// check_if_last_char_is_a_letter("") ➞ False
func check_if_last_char_is_a_letter(txt: String) -> Bool {
    let lastChar = txt.last
    if lastChar == nil {
        return false
    }
    let lastCharString = String(lastChar!)
    let lastCharIsLetter = lastCharString.isLetter
    let lastCharIsNotPartOfWord = !txt.contains(" ")
    return lastCharIsLetter && lastCharIsNotPartOfWord

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
            
assert(check_if_last_char_is_a_letter(txt: "apple") == false)
assert(check_if_last_char_is_a_letter(txt: "apple pi e") == true)
assert(check_if_last_char_is_a_letter(txt: "eeeee") == false)
assert(check_if_last_char_is_a_letter(txt: "A") == true)
assert(check_if_last_char_is_a_letter(txt: "Pumpkin pie ") == false)
assert(check_if_last_char_is_a_letter(txt: "Pumpkin pie 1") == false)
assert(check_if_last_char_is_a_letter(txt: "") == false)
assert(check_if_last_char_is_a_letter(txt: "eeeee e ") == false)
assert(check_if_last_char_is_a_letter(txt: "apple pie") == false)
assert(check_if_last_char_is_a_letter(txt: "apple pi e ") == false)