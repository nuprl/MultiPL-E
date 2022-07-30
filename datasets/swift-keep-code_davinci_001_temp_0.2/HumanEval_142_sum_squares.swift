
/// "
/// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
/// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
/// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
/// Examples:
/// For lst = [1,2,3] the output should be 6
/// For lst = []  the output should be 0
/// For lst = [-1,-5,2,-1,-5]  the output should be -126
func sum_squares(lst: [Int]) -> Int {
    var sum = 0
    for i in 0..<lst.count {
        if i % 3 == 0 {
            sum += lst[i] * lst[i]
        } else if i % 4 == 0 && i % 3 != 0 {
            sum += lst[i] * lst[i] * lst[i]
        }
    }
    return sum

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
            
assert(sum_squares(lst: [1, 2, 3]) == 6)
assert(sum_squares(lst: [1, 4, 9]) == 14)
assert(sum_squares(lst: [] as [Int]) == 0)
assert(sum_squares(lst: [1, 1, 1, 1, 1, 1, 1, 1, 1]) == 9)
assert(sum_squares(lst: [-1, -1, -1, -1, -1, -1, -1, -1, -1]) == -3)
assert(sum_squares(lst: [0]) == 0)
assert(sum_squares(lst: [-1, -5, 2, -1, -5]) == -126)
assert(sum_squares(lst: [-56, -99, 1, 0, -2]) == 3030)
assert(sum_squares(lst: [-1, 0, 0, 0, 0, 0, 0, 0, -1]) == 0)
assert(sum_squares(lst: [-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37]) == -14196)
assert(sum_squares(lst: [-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10]) == -1448)