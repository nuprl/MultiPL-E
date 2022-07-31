
/// Given two positive integers a and b, return the even digits between a
/// and b, in ascending order.
/// For example:
/// generate_integers(2, 8) => [2, 4, 6, 8]
/// generate_integers(8, 2) => [2, 4, 6, 8]
/// generate_integers(10, 14) => []
func generate_integers(a: Int, b: Int) -> [Int] {
    var result = [Int]()
    for i in a...b {
        if i % 2 == 0 {
            result.append(i)
        }
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
            
assert(generate_integers(a: 2, b: 10) == [2, 4, 6, 8])
assert(generate_integers(a: 10, b: 2) == [2, 4, 6, 8])
assert(generate_integers(a: 132, b: 2) == [2, 4, 6, 8])
assert(generate_integers(a: 17, b: 89) == [] as [Int])