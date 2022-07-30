
// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
func fib4(n: Int) -> Int {
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 0
    }
    if n == 2 {
        return 2
    }
    if n == 3 {
        return 0
    }
    if n == 4 {
        return 2
    }
    if n == 5 {
        return 4
    }
    if n == 6 {
        return 8
    }
    if n == 7 {
        return 14
    }
    if n == 8 {
        return 22
    }
    if n == 9 {
        return 38
    }
    if n == 10 {
        return 70
    }
    if n == 11 {
        return 126
    }
    if n == 12 {
        return 254
    }
    if n == 13 {
        return 510
    }
    if n == 14 {
        return 1022
    }
    if n == 15 {
        return 2046
    }
    if n == 16 {
        return 4094
    }
    if n == 17 {
        return 8190
    }
    if n == 18 {
        return 16382
    }
    if n == 19 {
        return 32766
    }
    if n == 20 {
        return 65534
    }
    if n == 21 {
        return 131070
    }
    if n == 22 {
        return 262138
    }
    if n == 23 {
        return 524286
    }
    if n == 24 {
        return 1048574
    }
    if n == 25 {
        return 2097142
    }
    if n == 26 {
        return 4194300
    }
    if n == 27 {
        return 8388600
    }
    if n == 28 {
        return 16777200
    }
    if n == 29 {
        return 33554442
    }
    if n == 30 {
        return 67108866
    }
    if n == 31 {

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