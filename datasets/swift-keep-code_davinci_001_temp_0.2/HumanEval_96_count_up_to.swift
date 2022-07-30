
// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    var i = 2
    while i < n {
        if is_prime(n: i) {
            primes.append(i)
        }
        i += 1
    }
    return primes

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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])