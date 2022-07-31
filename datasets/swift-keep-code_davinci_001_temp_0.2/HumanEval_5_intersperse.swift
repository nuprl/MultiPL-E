
/// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
/// >>> intersperse([], 4)
/// []
/// >>> intersperse([1, 2, 3], 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result = [Int]()
    for (index, number) in numbers.enumerate() {
        result.append(number)
        if index < numbers.count - 1 {
            result.append(delimeter)
        }
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
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])