
/// Given a positive integer n, return a tuple that has the number of even and odd
/// integer palindromes that fall within the range(1, n), inclusive.
/// Example 1:
/// Input: 3
/// Output: (1, 2)
/// Explanation:
/// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
/// Example 2:
/// Input: 12
/// Output: (4, 6)
/// Explanation:
/// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
/// Note:
/// 1. 1 <= n <= 10^3
/// 2. returned tuple has the number of even and odd integer palindromes respectively.
func even_odd_palindrome(n: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for i in 1...n {
        if i.is_palindrome() {
            if i % 2 == 0 {
                even += 1
            } else {
                odd += 1
            }
        }
    }
    return (even, odd)

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
            
assert(even_odd_palindrome(n: 123) == (8, 13))
assert(even_odd_palindrome(n: 12) == (4, 6))
assert(even_odd_palindrome(n: 3) == (1, 2))
assert(even_odd_palindrome(n: 63) == (6, 8))
assert(even_odd_palindrome(n: 25) == (5, 6))
assert(even_odd_palindrome(n: 19) == (4, 6))
assert(even_odd_palindrome(n: 9) == (4, 5))
assert(even_odd_palindrome(n: 1) == (0, 1))