
/// You are given an array arr of integers and you need to return
/// sum of magnitudes of integers multiplied by product of all signs
/// of each number in the array, represented by 1, -1 or 0.
/// Note: return None for empty arr.
/// Example:
/// >>> prod_signs([1, 2, 2, -4]) == -9
/// >>> prod_signs([0, 1]) == 0
/// >>> prod_signs([]) == None
func prod_signs(arr: [Int]) -> Int? {
    guard arr.count > 0 else { return nil }
    var result = 1
    for i in arr {
        result *= (i < 0 ? -1 : 1)
    }
    return result * arr.map { abs($0) }.reduce(0, +)

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
            
assert(prod_signs(arr: [1, 2, 2, -4]) == -9)
assert(prod_signs(arr: [0, 1]) == 0)
assert(prod_signs(arr: [1, 1, 1, 2, 3, -1, 1]) == -10)
assert(prod_signs(arr: [] as [Int]) == nil)
assert(prod_signs(arr: [2, 4, 1, 2, -1, -1, 9]) == 20)
assert(prod_signs(arr: [-1, 1, -1, 1]) == 4)
assert(prod_signs(arr: [-1, 1, 1, 1]) == -4)
assert(prod_signs(arr: [-1, 1, 1, 0]) == 0)