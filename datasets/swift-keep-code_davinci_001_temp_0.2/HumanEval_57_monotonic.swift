
// Return True is list elements are monotonically increasing or decreasing.
// >>> monotonic([1, 2, 4, 20])
// True
// >>> monotonic([1, 20, 4, 10])
// False
// >>> monotonic([4, 1, 0, -10])
// True
func monotonic(l: [Int]) -> Bool {
    var isIncreasing = true
    var isDecreasing = true
    for i in 0..<l.count-1 {
        if l[i] > l[i+1] {
            isIncreasing = false
        }
        if l[i] < l[i+1] {
            isDecreasing = false
        }
    }
    return isIncreasing || isDecreasing

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
            
assert(monotonic(l: [1, 2, 4, 10]) == true)
assert(monotonic(l: [1, 2, 4, 20]) == true)
assert(monotonic(l: [1, 20, 4, 10]) == false)
assert(monotonic(l: [4, 1, 0, -10]) == true)
assert(monotonic(l: [4, 1, 1, 0]) == true)
assert(monotonic(l: [1, 2, 3, 2, 5, 60]) == false)
assert(monotonic(l: [1, 2, 3, 4, 5, 60]) == true)
assert(monotonic(l: [9, 9, 9, 9]) == true)