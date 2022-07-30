
// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with any positive integer n. Then each term is obtained from the 
// previous term as follows: if the previous term is even, the next term is one half of 
// the previous term. If the previous term is odd, the next term is 3 times the previous
// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
// Note: 
// 1. Collatz(1) is [1].
// 2. returned list sorted in increasing order.
// For example:
// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
func get_odd_collatz(n: Int) -> [Int] {
	fatalError("unimplemented")

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
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])