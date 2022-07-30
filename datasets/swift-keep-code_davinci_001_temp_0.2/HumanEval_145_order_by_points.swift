
// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// For example:
// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> order_by_points([]) == []
func order_by_points(nums: [Int]) -> [Int] {
    var result = [Int]()
    var sum = [Int]()
    var index = [Int]()
    var i = 0
    for num in nums {
        var sum_num = 0
        var j = 0
        while num > 0 {
            sum_num += num % 10
            num /= 10
            j += 1
        }
        sum.append(sum_num)
        index.append(i)
        i += 1
    }
    for i in 0..<sum.count {
        for j in i..<sum.count {
            if sum[i] > sum[j] {
                let temp = sum[i]
                sum[i] = sum[j]
                sum[j] = temp
                let temp_index = index[i]
                index[i] = index[j]
                index[j] = temp_index
            }
        }
    }
    for i in 0..<index.count {
        result.append(nums[index[i]])
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
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])