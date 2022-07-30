
/// Given an array of integers nums, find the minimum sum of any non-empty sub-array
/// of nums.
/// Example
/// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
/// minSubArraySum([-1, -2, -3]) == -6
func minSubArraySum(nums: [Int]) -> Int {
    var minSum = Int.max
    var currentSum = 0
    for i in 0..<nums.count {
        currentSum += nums[i]
        if currentSum < minSum {
            minSum = currentSum
        }
        if currentSum > 0 {
            currentSum = 0
        }
    }
    return minSum == Int.max ? 0 : minSum

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
            
assert(minSubArraySum(nums: [2, 3, 4, 1, 2, 4]) == 1)
assert(minSubArraySum(nums: [-1, -2, -3]) == -6)
assert(minSubArraySum(nums: [-1, -2, -3, 2, -10]) == -14)
assert(minSubArraySum(nums: [-9999999999999999]) == -9999999999999999)
assert(minSubArraySum(nums: [0, 10, 20, 1000000]) == 0)
assert(minSubArraySum(nums: [-1, -2, -3, 10, -5]) == -6)
assert(minSubArraySum(nums: [100, -1, -2, -3, 10, -5]) == -6)
assert(minSubArraySum(nums: [10, 11, 13, 8, 3, 4]) == 3)
assert(minSubArraySum(nums: [100, -33, 32, -1, 0, -2]) == -33)
assert(minSubArraySum(nums: [-10]) == -10)
assert(minSubArraySum(nums: [7]) == 7)
assert(minSubArraySum(nums: [1, -1]) == -1)