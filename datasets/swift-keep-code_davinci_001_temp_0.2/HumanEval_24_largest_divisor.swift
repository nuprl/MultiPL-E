
/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(15)
/// 5
func largest_divisor(n: Int) -> Int {
    var divisor = n
    while divisor > 0 {
        if n % divisor == 0 {
            return divisor
        }
        divisor -= 1
    }
    return divisor

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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)