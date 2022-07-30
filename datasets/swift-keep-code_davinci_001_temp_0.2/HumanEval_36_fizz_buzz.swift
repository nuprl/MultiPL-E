
// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizz_buzz(50)
// 0
// >>> fizz_buzz(78)
// 2
// >>> fizz_buzz(79)
// 3
func fizz_buzz(n: Int) -> Int {
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
            
assert(fizz_buzz(n: 50) == 0)
assert(fizz_buzz(n: 78) == 2)
assert(fizz_buzz(n: 79) == 3)
assert(fizz_buzz(n: 100) == 3)
assert(fizz_buzz(n: 200) == 6)
assert(fizz_buzz(n: 4000) == 192)
assert(fizz_buzz(n: 10000) == 639)
assert(fizz_buzz(n: 100000) == 8026)