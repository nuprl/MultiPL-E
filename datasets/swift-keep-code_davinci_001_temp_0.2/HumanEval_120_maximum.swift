// Given an array arr of integers and a positive integer k, return a sorted list 
// of length k with the maximum k numbers in arr.
// Example 1:
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
// Example 2:
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
// Example 3:
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
	fatalError("unimplemented")

}

assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [])