
/// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
/// Example
/// is_equal_to_sum_even(4) == False
/// is_equal_to_sum_even(6) == False
/// is_equal_to_sum_even(8) == True
func is_equal_to_sum_even(n: Int) -> Bool {
    var sum = 0
    for i in 1...n {
        if i % 2 == 0 {
            sum += i
        }
    }
    return sum == n

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
            
assert(is_equal_to_sum_even(n: 4) == false)
assert(is_equal_to_sum_even(n: 6) == false)
assert(is_equal_to_sum_even(n: 8) == true)
assert(is_equal_to_sum_even(n: 10) == true)
assert(is_equal_to_sum_even(n: 11) == false)
assert(is_equal_to_sum_even(n: 12) == true)
assert(is_equal_to_sum_even(n: 13) == false)
assert(is_equal_to_sum_even(n: 16) == true)