
/// Return list of prime factors of given integer in the order from smallest to largest.
/// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
/// Input number should be equal to the product of all factors
/// >>> factorize(8)
/// [2, 2, 2]
/// >>> factorize(25)
/// [5, 5]
/// >>> factorize(70)
/// [2, 5, 7]
func factorize(n: Int) -> [Int] {
    var result: [Int] = []
    var divider = 2
    var number = n
    while number > 1 {
        while number % divider == 0 {
            result.append(divider)
            number /= divider
        }
        divider += 1
    }
    return result

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
            
assert(factorize(n: 2) == [2])
assert(factorize(n: 4) == [2, 2])
assert(factorize(n: 8) == [2, 2, 2])
assert(factorize(n: 57) == [3, 19])
assert(factorize(n: 3249) == [3, 3, 19, 19])
assert(factorize(n: 185193) == [3, 3, 3, 19, 19, 19])
assert(factorize(n: 20577) == [3, 19, 19, 19])
assert(factorize(n: 18) == [2, 3, 3])