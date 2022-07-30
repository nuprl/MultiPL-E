
// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
// Example:
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
func add_elements(arr: [Int], k: Int) -> Int {
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
            
assert(add_elements(arr: [1, -2, -3, 41, 57, 76, 87, 88, 99], k: 3) == -4)
assert(add_elements(arr: [111, 121, 3, 4000, 5, 6], k: 2) == 0)
assert(add_elements(arr: [11, 21, 3, 90, 5, 6, 7, 8, 9], k: 4) == 125)
assert(add_elements(arr: [111, 21, 3, 4000, 5, 6, 7, 8, 9], k: 4) == 24)
assert(add_elements(arr: [1], k: 1) == 1)