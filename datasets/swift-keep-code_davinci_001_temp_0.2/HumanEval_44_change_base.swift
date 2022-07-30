
/// Change numerical base of input number x to base.
/// return string representation after the conversion.
/// base numbers are less than 10.
/// >>> change_base(8, 3)
/// '22'
/// >>> change_base(8, 2)
/// '1000'
/// >>> change_base(7, 2)
/// '111'
func change_base(x: Int, base: Int) -> String {
    var result = ""
    var x = x
    while x > 0 {
        result += String(x % base)
        x /= base
    }
    return String(result.reversed())

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
            
assert(change_base(x: 8, base: 3) == "22")
assert(change_base(x: 9, base: 3) == "100")
assert(change_base(x: 234, base: 2) == "11101010")
assert(change_base(x: 16, base: 2) == "10000")
assert(change_base(x: 8, base: 2) == "1000")
assert(change_base(x: 7, base: 2) == "111")
assert(change_base(x: 2, base: 3) == "2")
assert(change_base(x: 3, base: 4) == "3")
assert(change_base(x: 4, base: 5) == "4")
assert(change_base(x: 5, base: 6) == "5")
assert(change_base(x: 6, base: 7) == "6")
assert(change_base(x: 7, base: 8) == "7")