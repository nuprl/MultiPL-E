
// Given a positive integer N, return the total sum of its digits in binary.
// Example
// For N = 1000, the sum of digits will be 1 the output should be "1".
// For N = 150, the sum of digits will be 6 the output should be "110".
// For N = 147, the sum of digits will be 12 the output should be "1100".
// Variables:
// @N integer
// Constraints: 0 ≤ N ≤ 10000.
// Output:
// a string of binary number
func solve(N: Int) -> String {
    var result = 0
    var n = N
    while n > 0 {
        result += n % 2
        n /= 2
    }
    return String(result, radix: 2)

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
            
assert(solve(N: 1000) == "1")
assert(solve(N: 150) == "110")
assert(solve(N: 147) == "1100")
assert(solve(N: 333) == "1001")
assert(solve(N: 963) == "10010")