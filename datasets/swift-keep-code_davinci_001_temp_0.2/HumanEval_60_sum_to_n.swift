
// sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
func sum_to_n(n: Int) -> Int {
	fatalError("unimplemented")

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
            
assert(sum_to_n(n: 1) == 1)
assert(sum_to_n(n: 6) == 21)
assert(sum_to_n(n: 11) == 66)
assert(sum_to_n(n: 30) == 465)
assert(sum_to_n(n: 100) == 5050)