
// A simple program which should return the value of x if n is 
// a prime number and should return the value of y otherwise.
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
func x_or_y(n: Int, x: Int, y: Int) -> Int {
    // your code here
    if n == 1 {
        return x
    }
    if n == 2 {
        return y
    }
    if n % 2 == 0 {
        return x
    }
    return y

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
            
assert(x_or_y(n: 7, x: 34, y: 12) == 34)
assert(x_or_y(n: 15, x: 8, y: 5) == 5)
assert(x_or_y(n: 3, x: 33, y: 5212) == 33)
assert(x_or_y(n: 1259, x: 3, y: 52) == 3)
assert(x_or_y(n: 7919, x: -1, y: 12) == -1)
assert(x_or_y(n: 3609, x: 1245, y: 583) == 583)
assert(x_or_y(n: 91, x: 56, y: 129) == 129)
assert(x_or_y(n: 6, x: 34, y: 1234) == 1234)
assert(x_or_y(n: 1, x: 2, y: 0) == 0)
assert(x_or_y(n: 2, x: 2, y: 0) == 2)