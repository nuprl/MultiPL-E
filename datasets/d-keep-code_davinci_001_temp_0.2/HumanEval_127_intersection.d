import std.typecons;
import std.math;
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
const(char)[] intersection(Tuple!(long, long) interval1, Tuple!(long, long) interval2) 
{
    if(interval1.first > interval2.second || interval2.first > interval1.second)
        return "NO";
    else if(interval1.first == interval2.first && interval1.second == interval2.second)
        return "YES";
    else if(interval1.first == interval2.first || interval1.second == interval2.second)
        return "NO";
    else if(interval1.first < interval2.first && interval1.second > interval2.second)
        return "YES";
    else if(interval1.first > interval2.first && interval1.second < interval2.second)
        return "YES";
    else if(interval1.first < interval2.first && interval1.second < interval2.second)
        return "YES";
    else if(interval1.first > interval2.first && interval1.second > interval2.second)
        return "YES";
    else
        return "NO";
}

unittest
{
    alias candidate = intersection;

    assert(candidate(tuple(1, 2), tuple(2, 3)) == "NO");
    assert(candidate(tuple(-1, 1), tuple(0, 4)) == "NO");
    assert(candidate(tuple(-3, -1), tuple(-5, 5)) == "YES");
    assert(candidate(tuple(-2, 2), tuple(-4, 0)) == "YES");
    assert(candidate(tuple(-11, 2), tuple(-1, -1)) == "NO");
    assert(candidate(tuple(1, 2), tuple(3, 5)) == "NO");
    assert(candidate(tuple(1, 2), tuple(1, 2)) == "NO");
    assert(candidate(tuple(-2, -2), tuple(-3, -2)) == "NO");
}
void main(){}