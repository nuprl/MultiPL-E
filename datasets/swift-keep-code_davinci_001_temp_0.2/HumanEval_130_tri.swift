
/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return a list of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// tri(3) = [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var tribonacci = [1, 1, 1]
    if n < 3 {
        return tribonacci[0...n]
    }
    for _ in 3...n {
        let newNumber = tribonacci[tribonacci.count - 3] + tribonacci[tribonacci.count - 2] + tribonacci[tribonacci.count - 1]
        tribonacci.append(newNumber)
    }
    return tribonacci

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
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])