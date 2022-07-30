
// Write a function that returns True if the object q will fly, and False otherwise.
// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
// Example:
// will_it_fly([1, 2], 5) ➞ False 
// # 1+2 is less than the maximum possible weight, but it's unbalanced.
// will_it_fly([3, 2, 3], 1) ➞ False
// # it's balanced, but 3+2+3 is more than the maximum possible weight.
// will_it_fly([3, 2, 3], 9) ➞ True
// # 3+2+3 is less than the maximum possible weight, and it's balanced.
// will_it_fly([3], 5) ➞ True
// # 3 is less than the maximum possible weight, and it's balanced.
func will_it_fly(q: [Int], w: Int) -> Bool {
    if q.count == 0 {
        return true
    }
    if q.count == 1 {
        return q[0] <= w
    }
    let sum = q.reduce(0, +)
    return sum <= w && is_palindrome(q)

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
            
assert(will_it_fly(q: [3, 2, 3], w: 9) == true)
assert(will_it_fly(q: [1, 2], w: 5) == false)
assert(will_it_fly(q: [3], w: 5) == true)
assert(will_it_fly(q: [3, 2, 3], w: 1) == false)
assert(will_it_fly(q: [1, 2, 3], w: 6) == false)
assert(will_it_fly(q: [5], w: 5) == true)