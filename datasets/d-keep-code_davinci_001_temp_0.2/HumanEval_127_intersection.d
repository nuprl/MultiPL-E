import std.math;
import std.typecons;
/*
You are given two intervals,
    where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
    The given intervals are closed which means that the interval (start, end)
    includes both start and end.
    For each given interval, it is assumed that its start is less or equal its end.
    Your task is to determine whether the length of intersection of these two 
    intervals is a prime number.
    Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
    which its length is 1, which not a prime number.
    If the length of the intersection is a prime number, return "YES",
    otherwise, return "NO".
    If the two intervals don't intersect, return "NO".


    [input/output] samples:
    intersection((1, 2), (2, 3)) ==> "NO"
    intersection((-1, 1), (0, 4)) ==> "NO"
    intersection((-3, -1), (-5, 5)) ==> "YES"
    
*/
string intersection(Tuple!(long, long) interval1, Tuple!(long, long) interval2) 
{
    long start = std.math.max(interval1[0], interval2[0]);
    long end = std.math.min(interval1[1], interval2[1]);
    if (start > end) return "NO";
    long length = end - start;
    if (std.math.is_prime(length)) return "YES";
    return "NO";
}

unittest
{
    alias candidate = intersection;

    assert(candidate(tuple(1L, 2L), tuple(2L, 3L)) == "NO");
    assert(candidate(tuple(-1L, 1L), tuple(0L, 4L)) == "NO");
    assert(candidate(tuple(-3L, -1L), tuple(-5L, 5L)) == "YES");
    assert(candidate(tuple(-2L, 2L), tuple(-4L, 0L)) == "YES");
    assert(candidate(tuple(-11L, 2L), tuple(-1L, -1L)) == "NO");
    assert(candidate(tuple(1L, 2L), tuple(3L, 5L)) == "NO");
    assert(candidate(tuple(1L, 2L), tuple(1L, 2L)) == "NO");
    assert(candidate(tuple(-2L, -2L), tuple(-3L, -2L)) == "NO");
}
void main(){}