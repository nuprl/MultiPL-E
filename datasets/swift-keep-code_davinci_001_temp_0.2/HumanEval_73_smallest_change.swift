
/// Given an array arr of integers, find the minimum number of elements that
/// need to be changed to make the array palindromic. A palindromic array is an array that
/// is read the same backwards and forwards. In one change, you can change one element to any other element.
/// For example:
/// smallest_change([1,2,3,5,4,7,9,6]) == 4
/// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
/// smallest_change([1, 2, 3, 2, 1]) == 0
func smallest_change(arr: [Int]) -> Int {
    var arr = arr
    var count = 0
    var i = 0
    while i < arr.count {
        if arr[i] != arr[arr.count - i - 1] {
            count += 1
            arr[i] = arr[arr.count - i - 1]
        }
        i += 1
    }
    return count

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
            
assert(smallest_change(arr: [1, 2, 3, 5, 4, 7, 9, 6]) == 4)
assert(smallest_change(arr: [1, 2, 3, 4, 3, 2, 2]) == 1)
assert(smallest_change(arr: [1, 4, 2]) == 1)
assert(smallest_change(arr: [1, 4, 4, 2]) == 1)
assert(smallest_change(arr: [1, 2, 3, 2, 1]) == 0)
assert(smallest_change(arr: [3, 1, 1, 3]) == 0)
assert(smallest_change(arr: [1]) == 0)
assert(smallest_change(arr: [0, 1]) == 1)