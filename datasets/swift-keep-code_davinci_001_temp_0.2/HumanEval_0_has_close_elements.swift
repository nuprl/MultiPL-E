
// Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
func has_close_elements(numbers: [Double], threshold: Double) -> Bool {
    var i = 0
    while i < numbers.count {
        var j = i + 1
        while j < numbers.count {
            if abs(numbers[i] - numbers[j]) < threshold {
                return true
            }
            j += 1
        }
        i += 1
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
            
assert(has_close_elements(numbers: [1.0, 2.0, 3.9, 4.0, 5.0, 2.2], threshold: 0.3) == true)
assert(has_close_elements(numbers: [1.0, 2.0, 3.9, 4.0, 5.0, 2.2], threshold: 0.05) == false)
assert(has_close_elements(numbers: [1.0, 2.0, 5.9, 4.0, 5.0], threshold: 0.95) == true)
assert(has_close_elements(numbers: [1.0, 2.0, 5.9, 4.0, 5.0], threshold: 0.8) == false)
assert(has_close_elements(numbers: [1.0, 2.0, 3.0, 4.0, 5.0, 2.0], threshold: 0.1) == true)
assert(has_close_elements(numbers: [1.1, 2.2, 3.1, 4.1, 5.1], threshold: 1.0) == true)
assert(has_close_elements(numbers: [1.1, 2.2, 3.1, 4.1, 5.1], threshold: 0.5) == false)