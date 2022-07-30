
// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
func string_xor(a: String, b: String) -> String {
    var result = ""
    for i in 0..<a.characters.count {
        let a_char = a[a.index(a.startIndex, offsetBy: i)]
        let b_char = b[b.index(b.startIndex, offsetBy: i)]
        if a_char == "1" && b_char == "1" {
            result += "0"
        } else if a_char == "0" && b_char == "0" {
            result += "0"
        } else {
            result += "1"
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
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")