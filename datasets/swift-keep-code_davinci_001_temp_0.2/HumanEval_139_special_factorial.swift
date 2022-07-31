
/// The Brazilian factorial is defined as:
/// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
/// where n > 0
/// For example:
/// >>> special_factorial(4)
/// 288
/// The function will receive an integer as input and should return the special
/// factorial of this integer.
func special_factorial(n: Int) -> Int {
    var result = 1
    for i in 1...n {
        result *= i
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
            
assert(special_factorial(n: 4) == 288)
assert(special_factorial(n: 5) == 34560)
assert(special_factorial(n: 7) == 125411328000)
assert(special_factorial(n: 1) == 1)