
/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(13195)
/// 29
/// >>> largest_prime_factor(2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var n = n
    var i = 2
    while i * i <= n {
        while n % i == 0 {
            n /= i
        }
        i += 1
    }
    return n

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
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)