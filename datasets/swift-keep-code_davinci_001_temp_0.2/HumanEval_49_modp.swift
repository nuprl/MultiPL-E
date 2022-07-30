
// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
func modp(n: Int, p: Int) -> Int {
    return n % p

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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)