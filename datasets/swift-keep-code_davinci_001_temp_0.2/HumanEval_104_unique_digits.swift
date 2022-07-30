
// Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
func unique_digits(x: [Int]) -> [Int] {
    var result = [Int]()
    for number in x {
        if number < 10 {
            result.append(number)
        } else {
            var digits = [Int]()
            var numberCopy = number
            while numberCopy > 0 {
                digits.append(numberCopy % 10)
                numberCopy /= 10
            }
            var hasEvenDigit = false
            for digit in digits {
                if digit % 2 == 0 {
                    hasEvenDigit = true
                    break
                }
            }
            if !hasEvenDigit {
                result.append(number)
            }
        }
    }
    return result.sort()

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