
/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// can_arrange([1,2,4,3,5]) = 3
/// can_arrange([1,2,3]) = -1
func can_arrange(arr: [Int]) -> Int {
    var index = 0
    var max = arr[0]
    for i in 1..<arr.count {
        if arr[i] < max {
            index = i
            max = arr[i]
        }
    }
    return index

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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)