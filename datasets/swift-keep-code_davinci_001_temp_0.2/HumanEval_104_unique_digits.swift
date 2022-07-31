
/// Given a list of positive integers x. return a sorted list of all 
/// elements that hasn't any even digit.
/// Note: Returned list should be sorted in increasing order.
/// For example:
/// >>> unique_digits([15, 33, 1422, 1])
/// [1, 15, 33]
/// >>> unique_digits([152, 323, 1422, 10])
/// []
func unique_digits(x: [Int]) -> [Int] {
    var result = [Int]()
    for i in x {
        if i.digits.filter({$0 % 2 == 0}).count == 0 {
            result.append(i)
        }
    }
    return result.sorted()

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
            
assert(unique_digits(x: [15, 33, 1422, 1]) == [1, 15, 33])
assert(unique_digits(x: [152, 323, 1422, 10]) == [] as [Int])
assert(unique_digits(x: [12345, 2033, 111, 151]) == [111, 151])
assert(unique_digits(x: [135, 103, 31]) == [31, 135])