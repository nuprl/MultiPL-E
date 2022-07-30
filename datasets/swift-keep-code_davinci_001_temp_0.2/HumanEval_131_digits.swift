
// Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
func digits(n: Int) -> Int {
    var product = 1
    var n = n
    while n > 0 {
        let digit = n % 10
        if digit % 2 != 0 {
            product *= digit
        }
        n /= 10
    }
    return product

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
            
assert(digits(n: 5) == 5)
assert(digits(n: 54) == 5)
assert(digits(n: 120) == 1)
assert(digits(n: 5014) == 5)
assert(digits(n: 98765) == 315)
assert(digits(n: 5576543) == 2625)
assert(digits(n: 2468) == 0)