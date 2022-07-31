
/// Given an array of non-negative integers, return a copy of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// * sort_array([]) => []
/// * sort_array([5]) => [5]
/// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
/// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    var result = array
    var sum = 0
    for i in 0..<array.count {
        sum += array[i]
    }
    if sum % 2 == 0 {
        result.sort(by: >)
    } else {
        result.sort(by: <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])