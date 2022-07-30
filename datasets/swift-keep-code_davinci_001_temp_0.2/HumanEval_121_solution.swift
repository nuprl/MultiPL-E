
// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
func solution(lst: [Int]) -> Int {
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
            
assert(solution(lst: [5, 8, 7, 1]) == 12)
assert(solution(lst: [3, 3, 3, 3, 3]) == 9)
assert(solution(lst: [30, 13, 24, 321]) == 0)
assert(solution(lst: [5, 9]) == 5)
assert(solution(lst: [2, 4, 8]) == 0)
assert(solution(lst: [30, 13, 23, 32]) == 23)
assert(solution(lst: [3, 13, 2, 9]) == 3)