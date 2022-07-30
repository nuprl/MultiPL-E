
// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
func sum_squares(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        sum += Int(ceil(i)) * Int(ceil(i))
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
            
assert(sum_squares(lst: [1.0, 2.0, 3.0]) == 14)
assert(sum_squares(lst: [1.0, 2.0, 3.0]) == 14)
assert(sum_squares(lst: [1.0, 3.0, 5.0, 7.0]) == 84)
assert(sum_squares(lst: [1.4, 4.2, 0.0]) == 29)
assert(sum_squares(lst: [-2.4, 1.0, 1.0]) == 6)
assert(sum_squares(lst: [100.0, 1.0, 15.0, 2.0]) == 10230)
assert(sum_squares(lst: [10000.0, 10000.0]) == 200000000)
assert(sum_squares(lst: [-1.4, 4.6, 6.3]) == 75)
assert(sum_squares(lst: [-1.4, 17.9, 18.9, 19.9]) == 1086)
assert(sum_squares(lst: [0.0]) == 0)
assert(sum_squares(lst: [-1.0]) == 1)
assert(sum_squares(lst: [-1.0, 1.0, 0.0]) == 2)