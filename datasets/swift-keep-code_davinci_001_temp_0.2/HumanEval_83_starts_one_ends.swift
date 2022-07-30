
/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        if i % 10 == 1 {
            count += 1
        }
    }
    return count

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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)