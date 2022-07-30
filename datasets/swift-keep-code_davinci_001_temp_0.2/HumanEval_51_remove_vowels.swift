
/// remove_vowels is a function that takes string and returns string without vowels.
/// >>> remove_vowels('')
/// ''
/// >>> remove_vowels('abcdef')
/// 'bcdf'
/// >>> remove_vowels('aaaaa')
/// ''
/// >>> remove_vowels('aaBAA')
/// 'B'
/// >>> remove_vowels('zbcd')
/// 'zbcd'
func remove_vowels(text: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    var newText = ""
    for char in text {
        if !vowels.contains(String(char)) {
            newText += String(char)
        }
    }
    return newText

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
            
assert(remove_vowels(text: "") == "")
assert(remove_vowels(text: "abcdef\nghijklm") == "bcdf\nghjklm")
assert(remove_vowels(text: "fedcba") == "fdcb")
assert(remove_vowels(text: "eeeee") == "")
assert(remove_vowels(text: "acBAA") == "cB")
assert(remove_vowels(text: "EcBOO") == "cB")
assert(remove_vowels(text: "ybcd") == "ybcd")