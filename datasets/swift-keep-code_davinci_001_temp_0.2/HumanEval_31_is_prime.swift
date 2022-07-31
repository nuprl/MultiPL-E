
/// Return true if a given number is prime, and false otherwise.
/// >>> is_prime(6)
/// False
/// >>> is_prime(101)
/// True
/// >>> is_prime(11)
/// True
/// >>> is_prime(13441)
/// True
/// >>> is_prime(61)
/// True
/// >>> is_prime(4)
/// False
/// >>> is_prime(1)
/// False
func is_prime(n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    if n % 2 == 0 || n % 3 == 0 {
        return false
    }
    var i = 5
    while i * i <= n {
        if n % i == 0 || n % (i + 2) == 0 {
            return false
        }
        i = i + 6
    }
    return true

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
            
assert(is_prime(n: 6) == false)
assert(is_prime(n: 101) == true)
assert(is_prime(n: 11) == true)
assert(is_prime(n: 13441) == true)
assert(is_prime(n: 61) == true)
assert(is_prime(n: 4) == false)
assert(is_prime(n: 1) == false)
assert(is_prime(n: 5) == true)
assert(is_prime(n: 11) == true)
assert(is_prime(n: 17) == true)
assert(is_prime(n: 85) == false)
assert(is_prime(n: 77) == false)
assert(is_prime(n: 255379) == false)