
// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
func remove_duplicates(numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        if !result.contains(number) {
            result.append(number)
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
            
assert(remove_duplicates(numbers: [] as [Int]) == [] as [Int])
assert(remove_duplicates(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(remove_duplicates(numbers: [1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5])