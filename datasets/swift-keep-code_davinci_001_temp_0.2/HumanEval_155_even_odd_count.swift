
/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// even_odd_count(-12) ==> (1, 1)
/// even_odd_count(123) ==> (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    var num = num
    while num > 0 {
        let digit = num % 10
        if digit % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
        num /= 10
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
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))