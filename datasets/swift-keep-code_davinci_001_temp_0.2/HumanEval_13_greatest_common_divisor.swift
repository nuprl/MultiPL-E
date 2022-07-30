
/// Return a greatest common divisor of two integers a and b
/// >>> greatest_common_divisor(3, 5)
/// 1
/// >>> greatest_common_divisor(25, 15)
/// 5
func greatest_common_divisor(a: Int, b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a

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
            
assert(greatest_common_divisor(a: 3, b: 7) == 1)
assert(greatest_common_divisor(a: 10, b: 15) == 5)
assert(greatest_common_divisor(a: 49, b: 14) == 7)
assert(greatest_common_divisor(a: 144, b: 60) == 12)