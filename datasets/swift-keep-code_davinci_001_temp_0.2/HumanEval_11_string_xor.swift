
/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor('010', '110')
/// '100'
func string_xor(a: String, b: String) -> String {
    let a_bytes = a.utf8.map { Int($0) }
    let b_bytes = b.utf8.map { Int($0) }
    var result = [Int]()
    for (a_byte, b_byte) in zip(a_bytes, b_bytes) {
        result.append(a_byte ^ b_byte)
    }
    return String(bytes: result, encoding: .utf8)!

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