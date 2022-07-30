
// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
func is_simple_power(x: Int, n: Int) -> Bool {
    return false

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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)