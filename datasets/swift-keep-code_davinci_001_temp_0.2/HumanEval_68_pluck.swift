
// "Given an array representing a branch of a tree that has non-negative integer nodes
// your task is to pluck one of the nodes and return it.
// The plucked node should be the node with the smallest even value.
// If multiple nodes with the same smallest even value are found return the node that has smallest index.
// The plucked node should be returned in a list, [ smalest_value, its index ],
// If there are no even values or the given array is empty, return [].
// Example 1:
// Input: [4,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
// Example 2:
// Input: [1,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index. 
// Example 3:
// Input: []
// Output: []
// Example 4:
// Input: [5, 0, 3, 0, 4, 2]
// Output: [0, 1]
// Explanation: 0 is the smallest value, but  there are two zeros,
// so we will choose the first zero, which has the smallest index.
// Constraints:
// * 1 <= nodes.length <= 10000
// * 0 <= node.value
func pluck(arr: [Int]) -> [Int] {
    var result = [Int]()
    var min = Int.max
    var minIndex = Int.max
    for (index, value) in arr.enumerated() {
        if value % 2 == 0 {
            if value < min {
                min = value
                minIndex = index
            }
        }
    }
    if minIndex != Int.max {
        result.append(min)
        result.append(minIndex)
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
            
assert(pluck(arr: [4, 2, 3]) == [2, 1])
assert(pluck(arr: [1, 2, 3]) == [2, 1])
assert(pluck(arr: [] as [Int]) == [] as [Int])
assert(pluck(arr: [5, 0, 3, 0, 4, 2]) == [0, 1])
assert(pluck(arr: [1, 2, 3, 0, 5, 3]) == [0, 3])
assert(pluck(arr: [5, 4, 8, 4, 8]) == [4, 1])
assert(pluck(arr: [7, 6, 7, 1]) == [6, 1])
assert(pluck(arr: [7, 9, 7, 1]) == [] as [Int])