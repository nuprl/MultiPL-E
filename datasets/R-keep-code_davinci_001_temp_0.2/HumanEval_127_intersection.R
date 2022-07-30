# You are given two intervals,
# where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
# The given intervals are closed which means that the interval (start, end)
# includes both start and end.
# For each given interval, it is assumed that its start is less or equal its end.
# Your task is to determine whether the length of intersection of these two 
# intervals is a prime number.
# Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
# which its length is 1, which not a prime number.
# If the length of the intersection is a prime number, return "YES",
# otherwise, return "NO".
# If the two intervals don't intersect, return "NO".
# [input/output] samples:
# intersection((1, 2), (2, 3)) ==> "NO"
# intersection((-1, 1), (0, 4)) ==> "NO"
# intersection((-3, -1), (-5, 5)) ==> "YES"
intersection <- function(interval1, interval2) {
    if (interval1[1] > interval2[2] || interval2[1] > interval1[2]) {
        return("NO")
    }
    if (interval1[1] <= interval2[1] && interval2[2] <= interval1[2]) {
        return(interval2[2] - interval2[1] == 1)
    }
    if (interval2[1] <= interval1[1] && interval1[2] <= interval2[2]) {
        return(interval1[2] - interval1[1] == 1)
    }
    return("NO")
}
intersection((1, 2), (2, 3))
intersection((-1, 1), (0, 4))
intersection((-3, -1), (-5, 5))


test_humaneval <- function() {
candidate <- intersection
    if(!identical(candidate(list(1, 2), list(2, 3)), 'NO')){quit('no', 1)}
    if(!identical(candidate(list(-1, 1), list(0, 4)), 'NO')){quit('no', 1)}
    if(!identical(candidate(list(-3, -1), list(-5, 5)), 'YES')){quit('no', 1)}
    if(!identical(candidate(list(-2, 2), list(-4, 0)), 'YES')){quit('no', 1)}
    if(!identical(candidate(list(-11, 2), list(-1, -1)), 'NO')){quit('no', 1)}
    if(!identical(candidate(list(1, 2), list(3, 5)), 'NO')){quit('no', 1)}
    if(!identical(candidate(list(1, 2), list(1, 2)), 'NO')){quit('no', 1)}
    if(!identical(candidate(list(-2, -2), list(-3, -2)), 'NO')){quit('no', 1)}
}
test_humaneval()