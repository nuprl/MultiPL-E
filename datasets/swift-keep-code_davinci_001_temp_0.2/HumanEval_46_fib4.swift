
/// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fib4(0) -> 0
/// fib4(1) -> 0
/// fib4(2) -> 2
/// fib4(3) -> 0
/// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
/// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
/// >>> fib4(5)
/// 4
/// >>> fib4(6)
/// 8
/// >>> fib4(7)
/// 14
func fib4(n: Int) -> Int {
    var fib4 = [0, 0, 2]
    if n < 3 {
        return fib4[n]
    }
    for i in 3...n {
        fib4.append(fib4[i-1] + fib4[i-2] + fib4[i-3] + fib4[i-4])
    }
    return fib4[n]

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
            
assert(fib4(n: 5) == 4)
assert(fib4(n: 8) == 28)
assert(fib4(n: 10) == 104)
assert(fib4(n: 12) == 386)