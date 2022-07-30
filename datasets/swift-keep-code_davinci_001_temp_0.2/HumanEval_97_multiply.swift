
// Complete the function that takes two integers and returns 
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
func multiply(a: Int, b: Int) -> Int {
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
            
assert(multiply(a: 148, b: 412) == 16)
assert(multiply(a: 19, b: 28) == 72)
assert(multiply(a: 2020, b: 1851) == 0)
assert(multiply(a: 14, b: -15) == 20)
assert(multiply(a: 76, b: 67) == 42)
assert(multiply(a: 17, b: 27) == 49)
assert(multiply(a: 0, b: 1) == 0)
assert(multiply(a: 0, b: 0) == 0)