
/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// digitSum("") => 0
/// digitSum("abAB") => 131
/// digitSum("abcCd") => 67
/// digitSum("helloE") => 69
/// digitSum("woArBld") => 131
/// digitSum("aAaaaXa") => 153
func digitSum(s: String) -> Int {
    var sum = 0
    for char in s.characters {
        if char.isUppercase {
            sum += Int(String(char).unicodeScalars.first!.value)
        }
    }
    return sum

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
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)