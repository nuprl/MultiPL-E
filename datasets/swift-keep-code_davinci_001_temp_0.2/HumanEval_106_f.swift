
// Implement the function f that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(5) == [1, 2, 6, 24, 15]
func f(n: Int) -> [Int] {
    var result = [Int]()
    for i in 1...n {
        if i % 2 == 0 {
            result.append(factorial(i))
        } else {
            result.append(sum(1...i))
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
            
assert(f(n: 5) == [1, 2, 6, 24, 15])
assert(f(n: 7) == [1, 2, 6, 24, 15, 720, 28])
assert(f(n: 1) == [1])
assert(f(n: 3) == [1, 2, 6])