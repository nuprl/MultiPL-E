
extension Int: Error {}
        
// You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m). 
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// rounded_avg(1, 5) => "0b11"
// rounded_avg(7, 5) => -1
// rounded_avg(10, 20) => "0b1111"
// rounded_avg(20, 33) => "0b11010"
func rounded_avg(n: Int, m: Int) -> Result<String, Int> {
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
            
assert(rounded_avg(n: 1, m: 5) == .success("0b11"))
assert(rounded_avg(n: 7, m: 13) == .success("0b1010"))
assert(rounded_avg(n: 964, m: 977) == .success("0b1111001010"))
assert(rounded_avg(n: 996, m: 997) == .success("0b1111100100"))
assert(rounded_avg(n: 560, m: 851) == .success("0b1011000010"))
assert(rounded_avg(n: 185, m: 546) == .success("0b101101110"))
assert(rounded_avg(n: 362, m: 496) == .success("0b110101101"))
assert(rounded_avg(n: 350, m: 902) == .success("0b1001110010"))
assert(rounded_avg(n: 197, m: 233) == .success("0b11010111"))
assert(rounded_avg(n: 7, m: 5) == .failure(-1))
assert(rounded_avg(n: 5, m: 1) == .failure(-1))
assert(rounded_avg(n: 5, m: 5) == .success("0b101"))