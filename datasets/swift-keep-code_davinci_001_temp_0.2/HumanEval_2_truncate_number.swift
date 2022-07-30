
/// Given a positive floating point number, it can be decomposed into
/// and integer part (largest integer smaller than given number) and decimals
/// (leftover part always smaller than 1).
/// Return the decimal part of the number.
/// >>> truncate_number(3.5)
/// 0.5
func truncate_number(number: Double) -> Double {
    return number - floor(number)

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
            
assert(truncate_number(number: 3.5) == 0.5)
assert(truncate_number(number: 1.25) == 0.25)
assert(truncate_number(number: 123.0) == 0.0)