
/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers('three one five')
/// 'one three five'
func sort_numbers(numbers: String) -> String {
    let numbers = numbers.components(separatedBy: " ")
    let sortedNumbers = numbers.sorted(by: <)
    return sortedNumbers.joined(separator: " ")

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
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")