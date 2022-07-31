
/// You are given two intervals,
/// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
/// The given intervals are closed which means that the interval (start, end)
/// includes both start and end.
/// For each given interval, it is assumed that its start is less or equal its end.
/// Your task is to determine whether the length of intersection of these two 
/// intervals is a prime number.
/// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
/// which its length is 1, which not a prime number.
/// If the length of the intersection is a prime number, return "YES",
/// otherwise, return "NO".
/// If the two intervals don't intersect, return "NO".
/// [input/output] samples:
/// intersection((1, 2), (2, 3)) ==> "NO"
/// intersection((-1, 1), (0, 4)) ==> "NO"
/// intersection((-3, -1), (-5, 5)) ==> "YES"
func intersection(interval1: (Int, Int), interval2: (Int, Int)) -> String {
    let intersection = (max(interval1.0, interval2.0), min(interval1.1, interval2.1))
    if intersection.0 > intersection.1 {
        return "NO"
    }
    let length = intersection.1 - intersection.0
    if length == 1 {
        return "YES"
    }
    if length > 1 && length.isPrime {
        return "YES"
    }
    return "NO"

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
            
assert(intersection(interval1: (1, 2), interval2: (2, 3)) == "NO")
assert(intersection(interval1: (-1, 1), interval2: (0, 4)) == "NO")
assert(intersection(interval1: (-3, -1), interval2: (-5, 5)) == "YES")
assert(intersection(interval1: (-2, 2), interval2: (-4, 0)) == "YES")
assert(intersection(interval1: (-11, 2), interval2: (-1, -1)) == "NO")
assert(intersection(interval1: (1, 2), interval2: (3, 5)) == "NO")
assert(intersection(interval1: (1, 2), interval2: (1, 2)) == "NO")
assert(intersection(interval1: (-2, -2), interval2: (-3, -2)) == "NO")