
// Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
func fib(n: Int) -> Int {
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
            
assert(fib(n: 10) == 55)
assert(fib(n: 1) == 1)
assert(fib(n: 8) == 21)
assert(fib(n: 11) == 89)
assert(fib(n: 12) == 144)