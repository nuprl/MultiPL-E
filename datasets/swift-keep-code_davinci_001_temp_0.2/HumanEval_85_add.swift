
// Given a non-empty list of integers lst. add the even elements that are at odd indices..
// Examples:
// add([4, 2, 6, 7]) ==> 2
func add(lst: [Int]) -> Int {
    var sum = 0
    for (index, value) in lst.enumerated() {
        if index % 2 == 0 && value % 2 == 0 {
            sum += value
        }
    }
    return sum

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
            
assert(add(lst: [4, 88]) == 88)
assert(add(lst: [4, 5, 6, 7, 2, 122]) == 122)
assert(add(lst: [4, 0, 6, 7]) == 0)
assert(add(lst: [4, 4, 6, 8]) == 12)