
/// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
/// Empty sum should be equal to 0 and empty product should be equal to 1.
/// >>> sum_product([])
/// (0, 1)
/// >>> sum_product([1, 2, 3, 4])
/// (10, 24)
func sum_product(numbers: [Int]) -> (Int, Int) {
    var sum = 0
    var product = 1
    for number in numbers {
        sum += number
        product *= number
    }
    return (sum, product)

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
            
assert(sum_product(numbers: [] as [Int]) == (0, 1))
assert(sum_product(numbers: [1, 1, 1]) == (3, 1))
assert(sum_product(numbers: [100, 0]) == (100, 0))
assert(sum_product(numbers: [3, 5, 7]) == (15, 105))
assert(sum_product(numbers: [10]) == (10, 10))