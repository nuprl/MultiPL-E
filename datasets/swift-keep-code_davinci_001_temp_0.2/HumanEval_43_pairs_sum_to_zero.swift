
/// pairs_sum_to_zero takes a list of integers as an input.
/// it returns True if there are two distinct elements in the list that
/// sum to zero, and False otherwise.
/// >>> pairs_sum_to_zero([1, 3, 5, 0])
/// False
/// >>> pairs_sum_to_zero([1, 3, -2, 1])
/// False
/// >>> pairs_sum_to_zero([1, 2, 3, 7])
/// False
/// >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
/// True
/// >>> pairs_sum_to_zero([1])
/// False
func pairs_sum_to_zero(l: [Int]) -> Bool {
    var dic: [Int: Int] = [:]
    for i in l {
        if dic[i] != nil {
            return true
        }
        dic[-i] = i
    }
    return false

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
            
assert(pairs_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(pairs_sum_to_zero(l: [1, 3, -2, 1]) == false)
assert(pairs_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(pairs_sum_to_zero(l: [2, 4, -5, 3, 5, 7]) == true)
assert(pairs_sum_to_zero(l: [1]) == false)
assert(pairs_sum_to_zero(l: [-3, 9, -1, 3, 2, 30]) == true)
assert(pairs_sum_to_zero(l: [-3, 9, -1, 3, 2, 31]) == true)
assert(pairs_sum_to_zero(l: [-3, 9, -1, 4, 2, 30]) == false)
assert(pairs_sum_to_zero(l: [-3, 9, -1, 4, 2, 31]) == false)