
// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums([]) == 0
// >>> count_nums([-1, 11, -11]) == 1
// >>> count_nums([1, 1, 2]) == 3
func count_nums(arr: [Int]) -> Int {
    var count = 0
    for i in arr {
        if i < 0 {
            let num = String(i)
            let index = num.index(num.startIndex, offsetBy: 1)
            let num2 = Int(String(num[index...]))
            if num2! > 0 {
                count += 1
            }
        } else {
            if i > 0 {
                count += 1
            }
        }
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
            
assert(count_nums(arr: [] as [Int]) == 0)
assert(count_nums(arr: [-1, -2, 0]) == 0)
assert(count_nums(arr: [1, 1, 2, -2, 3, 4, 5]) == 6)
assert(count_nums(arr: [1, 6, 9, -6, 0, 1, 5]) == 5)
assert(count_nums(arr: [1, 100, 98, -7, 1, -1]) == 4)
assert(count_nums(arr: [12, 23, 34, -45, -56, 0]) == 5)
assert(count_nums(arr: [0, 1]) == 1)
assert(count_nums(arr: [1]) == 1)