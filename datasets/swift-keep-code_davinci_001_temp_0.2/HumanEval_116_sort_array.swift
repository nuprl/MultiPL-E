
// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
func sort_array(arr: [Int]) -> [Int] {
    var sortedArr = arr
    var count = 0
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if (arr[i] & 1) > (arr[j] & 1) {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
    return arr

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
            
assert(sort_array(arr: [1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5])
assert(sort_array(arr: [-2, -3, -4, -5, -6]) == [-4, -2, -6, -5, -3])
assert(sort_array(arr: [1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3])
assert(sort_array(arr: [] as [Int]) == [] as [Int])
assert(sort_array(arr: [2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]) == [2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77])
assert(sort_array(arr: [3, 6, 44, 12, 32, 5]) == [32, 3, 5, 6, 12, 44])
assert(sort_array(arr: [2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])
assert(sort_array(arr: [2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])