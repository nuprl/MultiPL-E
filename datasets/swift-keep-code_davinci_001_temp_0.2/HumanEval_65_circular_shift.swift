
// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
func circular_shift(x: Int, shift: Int) -> String {
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")